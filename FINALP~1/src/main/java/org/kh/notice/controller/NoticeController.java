package org.kh.notice.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kh.notice.model.service.NoticeService;
import org.kh.notice.model.vo.Notice;
import org.kh.notice.model.vo.NoticePageData;
import org.kh.notice.model.vo.NoticePhoto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@Controller
public class NoticeController {
   @Autowired
   @Qualifier("noticeService")
   NoticeService noticeService;

   public NoticeController() {
      super();
      System.out.println("test");
   }

   @RequestMapping("/noticeList.do")
   public String selectNoticeList(int currentPage, Model model) {
      NoticePageData npd = noticeService.selectNoticeList(currentPage);
      if (!npd.getList().isEmpty()) {
         model.addAttribute("list", npd.getList());
         model.addAttribute("pageNavi", npd.getPageNavi());
         return "notice/noticeList";
      }
      return "notice/noticeList";
   }

   @RequestMapping("/writeFrm.do")
   public String writeFrmNotice() {
      return "notice/writeNotice";
   }

   @RequestMapping("/writeNotice.do")
   public String writeNotice(HttpServletRequest request, Model model) {
      Notice n = new Notice();
      String root = request.getSession().getServletContext().getRealPath("/resources/");
      System.out.println(root);
      String saveDirectory = root + "upload/file"; // 경로 기억
      System.out.println(saveDirectory);
      int maxSize = 1024 * 1024 * 10;

      File directory = new File(saveDirectory);
      if (!directory.exists()) {
         directory.mkdirs();
         // 위의 경로에 폴더(savedirectory)가 존재하냐, 없으면 만들어라
      }
      int result = 0;
      try {
         MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
               new DefaultFileRenamePolicy());

         n.setWriterId(mRequest.getParameter("writerId"));
         n.setNoticeTitle(mRequest.getParameter("noticeTitle"));
         n.setNoticeContent(mRequest.getParameter("content").replaceAll("<img src=\"/resources/upload/testPhoto", "<img src=\"/resources/upload/photo"));
         n.setNoticeOriFileName(mRequest.getOriginalFileName("fileUpload"));
         n.setNoticeReFileName(mRequest.getFilesystemName("fileUpload"));
         
         result = noticeService.writeNotice(n);
         int result2 = 0;
         
         Pattern pattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
         Matcher matcher = pattern.matcher(mRequest.getParameter("content"));

         ArrayList<String> imgList = new ArrayList<String>();
         while (matcher.find()) {
            String imgOne1 = matcher.group();
            String[] imgOne2 = imgOne1.substring(0, imgOne1.length() - 1).split("/");
            imgList.add(imgOne2[imgOne2.length - 1]);
         }
         
         String saveDirectory2 = root + "upload/testPhoto";
         System.out.println("saveDirectory => " + saveDirectory2);
         File directory2 = new File(saveDirectory2);
         
         File path = new File(saveDirectory2);
         File[] fileList = path.listFiles();
         
         if (fileList.length > 0) {
            for (int i = 0; i < fileList.length; i++) {
               /* System.out.println(fileList[i].getName()) ; */
               for (String img : imgList) {
                  if (fileList[i].getName().equals(img)) {
                     // 콘텐츠의 사진값을 넣기위한 객체
                     NoticePhoto contentPhoto = new NoticePhoto();
                     
                     String old_name = saveDirectory2 + "/" + fileList[i].getName();
                     String new_name = root + "upload/photo/" + fileList[i].getName();

                     FileInputStream fin = new FileInputStream(old_name);
                     BufferedInputStream bfin = new BufferedInputStream(fin);

                     FileOutputStream fout = new FileOutputStream(new_name);
                     BufferedOutputStream bfout = new BufferedOutputStream(fout);

                     // DB에 저장될 값 저장
                     contentPhoto.setNoticeNo(noticeService.selectNoticeNoticeNo(n));
                     contentPhoto.setPhotoName(new_name);
                     result2 = noticeService.insertCommentPhoto(contentPhoto);
                     while (true) {
                        int data = bfin.read(); // 한바이트씩 읽음
                        if (data == -1) {
                           break;
                        }

                        bfout.write(data);
                     }
                     if (result2 <= 0) {
                        System.out.println("컨텐츠사진업로드실패");
                     }
                     fout.close();
                     fin.close();
                  }
                  
               }
               File deFile = new File(saveDirectory2 + "/" + fileList[i].getName());
               deFile.delete();
               
               if(!directory2.exists()){
                     directory2.mkdirs(); //디렉토리가 존재하지 않는다면 생성
                 }
            }
         }
         
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }

      if (result > 0) {
         model.addAttribute("msg", "글작성에 성공하였습니다.");
      } else {
         model.addAttribute("msg", "글작성에 실패하였습니다.");
      }
      model.addAttribute("loc", "/noticeList.do?currentPage=1");
      return "common/msg";
   }

   @RequestMapping("/detailNotice.do")
   public String selectOneNotice(int noticeNo, Model model) {
      Notice n = noticeService.detailNotice(noticeNo);

      int countNo = n.getCountNo();
      int neCountNo = countNo + 1;
      int preCountNo = countNo - 1;
      Notice ne = noticeService.warpNotice(neCountNo); // 다음글
      Notice pre = noticeService.warpNotice(preCountNo); // 이전글

      Notice view = new Notice();
      int maxCountNo = noticeService.maxCountNo().getCountNo();
      if (n != null) {
         // 성공시
         int noticeView = n.getNoticeView() + 1;
         view.setNoticeNo(noticeNo);
         view.setNoticeView(noticeView);

         noticeService.countView(view);
         n.setNoticeView(noticeView);
         model.addAttribute("notice", n);
         model.addAttribute("max", maxCountNo);
         model.addAttribute("neNotice", ne);
         model.addAttribute("preNotice", pre);

      }
      return "notice/detailNotice";

   }

   @RequestMapping("/nextNotice.do")
   public String nextNotice(int countNo1, int countNo2, Model model) {
      System.out.println(countNo1);
      System.out.println(countNo2);
      int maxCountNo = noticeService.maxCountNo().getCountNo();
      int countNo = countNo1 + countNo2;

      int neCountNo = countNo + 1;
      int preCountNo = countNo - 1;
      Notice n = noticeService.warpNotice(countNo); // 조회수
      Notice ne = noticeService.warpNotice(neCountNo); // 다음글
      Notice pre = noticeService.warpNotice(preCountNo); // 이전글

      System.out.println(countNo);
      Notice view = new Notice();

      if (n != null) {
         // 성공시

         int noticeView = n.getNoticeView() + 1;
         view.setNoticeNo(n.getNoticeNo());
         view.setNoticeView(noticeView);

         noticeService.countView(view);
         n.setNoticeView(noticeView);

         model.addAttribute("notice", n);
         model.addAttribute("max", maxCountNo);
         model.addAttribute("neNotice", ne);
         model.addAttribute("preNotice", pre);
      }
      return "notice/detailNotice";

   }

   @RequestMapping("/preNotice.do")
   public String preNotice(int countNo1, int countNo2, Model model) {

      int countNo = countNo1 - countNo2;

      Notice view = new Notice();
      int maxCountNo = noticeService.maxCountNo().getCountNo();

      int neCountNo = countNo + 1;
      int preCountNo = countNo - 1;
      Notice n = noticeService.warpNotice(countNo);
      Notice ne = noticeService.warpNotice(neCountNo); // 다음글
      Notice pre = noticeService.warpNotice(preCountNo); // 이전글

      if (n != null) { // 성공시

         int noticeView = n.getNoticeView() + 1;
         view.setNoticeNo(n.getNoticeNo());
         view.setNoticeView(noticeView);

         noticeService.countView(view);
         n.setNoticeView(noticeView);

         model.addAttribute("notice", n);
         model.addAttribute("max", maxCountNo);
         model.addAttribute("neNotice", ne);
         model.addAttribute("preNotice", pre);

      }
      return "notice/detailNotice";

   }

   @RequestMapping("/updateNotice.do")
   public String updateNotice(HttpServletRequest request, Notice notice, Model model) {
      Notice n = new Notice();
      String root = request.getSession().getServletContext().getRealPath("/resources/");
      System.out.println(root);
      String saveDirectory = root + "upload/file"; // 경로 기억
      System.out.println(saveDirectory);
      int maxSize = 1024 * 1024 * 10;
      int result = 0;
      int result2 = 0;

      File directory = new File(saveDirectory);
      if (!directory.exists()) {
         directory.mkdirs();
         // 위의 경로에 폴더(savedirectory)가 존재하냐, 없으면 만들어라
      }

      try {
         MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
               new DefaultFileRenamePolicy());
         n.setNoticeNo(Integer.parseInt(mRequest.getParameter("noticeNo")));
         n.setWriterId(mRequest.getParameter("writerId"));
         n.setNoticeTitle(mRequest.getParameter("noticeTitle"));
         n.setNoticeContent(mRequest.getParameter("content").replaceAll("<img src=\"/resources/upload/testPhoto", "<img src=\"/resources/upload/photo"));
         n.setNoticeOriFileName(mRequest.getOriginalFileName("fileUpload"));
         n.setNoticeReFileName(mRequest.getFilesystemName("fileUpload"));
         
         
         String oldReFile = mRequest.getParameter("oldReFile");
         String oldOriFile = mRequest.getParameter("oldOriFile");

         String status = mRequest.getParameter("status");
         System.out.println(status);
         String oldFilePath = saveDirectory + "/" + oldReFile;
         File upFile = mRequest.getFile("fileUpload");
         
         if (upFile != null && upFile.length() > 0) { /* 업파일이 널이 아니고 업파일길이가 0보다 클떄-> 업로드파일이 있느닞 없는지 묻음 */
            if (oldOriFile != null && oldReFile != null) {
               File deFile = new File(oldFilePath);
               deFile.delete();
               if (!directory
                     .exists()) { /* 파일이 폴더에 하나 남았을때 삭제하면 디렉토리 폴더 같이 날라가는 경우를 막기 위해 새로 생성해주는 조건문 -> 기존파일이 있니? */
                  directory.mkdirs();
               }
            }
         } else {
            /* upFile이 없는 경우 */
            // 갱신
            // fileUpload가 oldReFile로 갱신 되어야됨!
            // 그냥 파일만 삭제하고 수정 할 때
            // 기존에 파일이 삭제됬어?
            if (status.equals("delete")) {
               File deFile = new File(oldFilePath);
               deFile.delete();
            } else {
               n.setNoticeOriFileName(mRequest.getParameter("oldOriFile"));
               n.setNoticeReFileName(mRequest.getParameter("oldReFile"));
            }
         }
         
         result=noticeService.updateNotice(n); // 찾았다
         
         Pattern pattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
         Matcher matcher = pattern.matcher(mRequest.getParameter("content"));

         ArrayList<String> imgList = new ArrayList<String>();
         while (matcher.find()) {
            String imgOne1 = matcher.group();
            String[] imgOne2 = imgOne1.substring(0, imgOne1.length() - 1).split("/");
            imgList.add(imgOne2[imgOne2.length - 1]);
         }
         
         String saveDirectory2 = root + "upload/testPhoto";
         File directory2 = new File(saveDirectory2);
         
         File path = new File(saveDirectory2);
         File[] fileList = path.listFiles();
         
         // imgList는 내 게시글의 내용부분에 들어있는 사진들이 나올거고
         // fileList는 테스트photo안의 사진들이 나올거
         if (fileList.length > 0) {
            for (int i = 0; i < fileList.length; i++) {
               /* System.out.println(fileList[i].getName()) ; */
               for (String img : imgList) {
                  if (fileList[i].getName().equals(img)) {
                     // 콘텐츠의 사진값을 넣기위한 객체
                     NoticePhoto contentPhoto = new NoticePhoto();
                     
                     String old_name = saveDirectory2 + "/" + fileList[i].getName();
                     String new_name = root + "upload/photo/" + fileList[i].getName();

                     FileInputStream fin = new FileInputStream(old_name);
                     BufferedInputStream bfin = new BufferedInputStream(fin);

                     FileOutputStream fout = new FileOutputStream(new_name);
                     BufferedOutputStream bfout = new BufferedOutputStream(fout);

                     // DB에 저장될 값 저장                     
                     contentPhoto.setNoticeNo(noticeService.selectNoticeNoticeNo(n));
                     contentPhoto.setPhotoName(new_name);
                     result2 = noticeService.insertCommentPhoto(contentPhoto);
                     while (true) {
                        int data = bfin.read(); // 한바이트씩 읽음
                        if (data == -1) {
                           break;
                        }

                        bfout.write(data);
                     }
                     if (result2 <= 0) {
                        System.out.println("컨텐츠사진업로드실패");
                     }
                     fout.close();
                     fin.close();
                  }
               }
               File deFile = new File(saveDirectory2 + "/" + fileList[i].getName());
               deFile.delete();
               
               if(!directory2.exists()){
                     directory2.mkdirs(); //디렉토리가 존재하지 않는다면 생성
                 }
            }
         }
         
         // 이 아래부터 변경할떄 중요한거인듯
         //====================== 비교해서 삭제하는 곳 =======================
         // 1. 해당하는 NoticeNo의 사진들을 불러와
         ArrayList<String> photoList = noticeService.selectNoticeNoPhotoSearch(n.getNoticeNo());
         System.out.println("photoList : " +photoList);
         /*.substring(0, imgOne1.length() - 1).split("/");
         System.out.println(imgOne2[imgOne2.length - 1]);*/

         // 2. 해당 사진들과 컨텐츠의 사진들을 비교
         for(String photoOne : photoList) { // 해당 self_No에 속하는 사진리스트
            
            String[] photoTwo = photoOne.substring(0, photoOne.length()).split("/");
            // 포토리스트에 img가 있니 없지? 
            // imgList에는 게시글에 실제로 들어있는 이미지들이 들어있음
            System.out.println("photoTwo:"+ photoTwo[photoTwo.length-1]);
            System.out.println("imgList:"+imgList);
            if(!imgList.contains(photoTwo[photoTwo.length-1])) { // 리스트와 리스트를 비교할때 사용 값이 있니 없니 따지는 문
               System.out.println(photoTwo[photoTwo.length-1]);
               System.out.println(imgList);
               // 3. imgList안에 photoOne이 없으면 데이터베이스에서 제거하여라
               System.out.println("성공 데베가서 확인해");
               File deFile = new File(photoOne);
               System.out.println("photoOne : " + photoOne);
               noticeService.contentPhotoRemove(photoOne);
               deFile.delete();
                  
               if(!directory.exists()){
                  directory.mkdirs(); //디렉토리가 존재하지 않는다면 생성
                }
                  
               else {
                  System.out.println("실패ㅠㅠ 넌언제까지 이거에 매달릴거니");
               }
            }
         }
         
         
      } catch (IOException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
      
      
      if(result>0) {
         System.out.println("성공");
         return "redirect:/detailNotice.do?noticeNo="+n.getNoticeNo();
      } else {
         System.out.println("실패");
         return "redirect:/";
      }
   }

   @RequestMapping("/deleteNotice.do")
   public String deleteNotice(HttpServletRequest request, int noticeNo, Model model, String noticeReFileName) {
      String path = request.getSession().getServletContext().getRealPath("/resources/"); // full경로
      String saveDirectory = path + "upload/file";
      String saveDirectory2 = path + "upload/photo";
      
      ArrayList<String> removeValueList = noticeService.selectNoticeNoPhotoSearch(noticeNo);
      int result = noticeService.deleteNotice(noticeNo);
      
      if(result>0) {
         if(!removeValueList.isEmpty()) {
            for(String removeValue : removeValueList) {
               System.out.println("성공?");
               System.out.println(removeValue);
               File file2 = new File(removeValue);
               file2.delete();
               File directory = new File(saveDirectory2);
               if(!directory.exists()){
                     directory.mkdirs(); //디렉토리가 존재하지 않는다면 생성
                 }
            }
         }
         
         File deFile = new File(saveDirectory+"/"+noticeReFileName);
         System.out.println(saveDirectory+"/"+noticeReFileName);
         deFile.delete();
         File directory = new File(saveDirectory);
         if(!directory.exists()) {
            directory.mkdirs();
         }
      }
      model.addAttribute("msg", "게시물을 삭제하였습니다!");
      model.addAttribute("loc","/noticeList.do?currentPage=1");
	return "common/msg";
   }

   @RequestMapping("/searchNotice.do")
   public String searchNotice(Model model, HttpServletRequest request) {
      String search = request.getParameter("search");
      String select = request.getParameter("select");
      Notice notice = new Notice();
      notice.setSearch(search);
      notice.setSelect(select);
      System.out.println(search);
      System.out.println(select);

      int currentPage = Integer.parseInt(request.getParameter("currentPage"));
      notice.setSearch(notice.getSearch());
      NoticePageData npd = noticeService.selectNoticeList(notice, currentPage);

      if (!npd.getList().isEmpty()) {
         model.addAttribute("list", npd.getList());
         model.addAttribute("pageNavi", npd.getPageNavi());
         System.out.println("성공");
         return "notice/noticeList";
      } else {
         System.out.println("실패");
         return "notice/noticeList";
      }
   }

   @RequestMapping("/downloadFrm.do")
   public String downloadFrm() {
      return "notice/download";

   }

   @RequestMapping("/download.do")
   public void fileDownload(HttpServletResponse response, HttpServletRequest request, @RequestParam Map<String, String> paramMap) {

      String path = request.getSession().getServletContext().getRealPath("/resources/"); // full경로
      String downloadDirectory = path + "upload/file";
      String fileName = request.getParameter("noticeReFileName");
      String filePath = downloadDirectory + "/" + fileName;
      File file = new File(filePath);

      FileInputStream fileInputStream = null;
      ServletOutputStream servletOutputStream = null;

      try {
         String downName = null;
         String browser = request.getHeader("User-Agent");
         // 파일 인코딩
         if (browser.contains("MSIE") || browser.contains("Trident") || browser.contains("Chrome")) {// 브라우저 확인 파일명
                                                                              // encode

            downName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");

         } else {

            downName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");

         }

         response.setHeader("Content-Disposition", "attachment;filename=\"" + downName + "\"");
         response.setContentType("application/octer-stream");
         response.setHeader("Content-Transfer-Encoding", "binary;");

         fileInputStream = new FileInputStream(file);
         servletOutputStream = response.getOutputStream();

         byte b[] = new byte[1024];
         int data = 0;

         while ((data = (fileInputStream.read(b, 0, b.length))) != -1) {

            servletOutputStream.write(b, 0, data);

         }

         servletOutputStream.flush();// 출력

      } catch (Exception e) {
         e.printStackTrace();
      } finally {
         if (servletOutputStream != null) {
            try {
               servletOutputStream.close();
            } catch (IOException e) {
               e.printStackTrace();
            }
         }
         if (fileInputStream != null) {
            try {
               fileInputStream.close();
            } catch (IOException e) {
               e.printStackTrace();
            }
         }
      }
   }
   /*
    * @ResponseBody //ajax쓸때 이거 써줘야됨
    * 
    * @RequestMapping("/relatedSearch.do") public void
    * relatedSearch(HttpServletRequest request) { String searchValue =
    * request.getParameter("related");
    * 
    * noticeService.relatedSearch
    * 
    * }
    */
   
   
   @RequestMapping("test.do")
    public String test() {
      return "notice/test";
   }
   
   @RequestMapping("/updatePageNotice.do")
   public String updateNotice(int noticeNo,Model model) {
      Notice notice = noticeService.updatePageNotice(noticeNo);
      if(notice!=null) {
         model.addAttribute("notice",notice);
      }
      return "notice/updateNotice";
   }
}