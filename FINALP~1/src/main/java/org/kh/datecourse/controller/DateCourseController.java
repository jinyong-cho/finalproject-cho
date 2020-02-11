package org.kh.datecourse.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kh.datecourse.model.service.DateCourseService;
import org.kh.datecourse.model.vo.CheckSearchInfo;
import org.kh.datecourse.model.vo.DateCourse;
import org.kh.datecourse.model.vo.DateCoursePhoto;
import org.kh.datecourse.model.vo.Like;
import org.kh.datecourse.model.vo.PageData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Qualifier;

@Controller
public class DateCourseController {
	@Autowired
	@Qualifier("datecourseService")
	DateCourseService dateCourseService;

	@RequestMapping("/dateCourse.do")
	public String dateCourse() {
		return "datecourse/dateCourse";
	}
	// 데이트코스 등록
	@RequestMapping("/dateCourseInsert.do")
	public String dateCourseInsertFrm() {
		return "datecourse/dateCourseInsertFrm";
	}

	// 데이트코스 등록
	@RequestMapping("/insertDateCourse.do")
	public String insertDateCourse(HttpServletRequest request, Model model) {
		DateCourse dCourse = new DateCourse();
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		System.out.println(root);
		String saveDirectory = root + "upload/photo"; // 파일이 저장될 경로
		System.out.println(saveDirectory);
		int maxSize = 1024 * 1024 * 10; // cos에서 파일 최대크기
		int result = 0;
		int result2 = 0;
		File directory = new File(saveDirectory);
		if (!directory.exists()) {
			directory.mkdir();
		}
		try {
			MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			// 이부분에서 파일이 내가 설정한 경로로 들어감
			dCourse.setDcTitle(mRequest.getParameter("dcTitle"));
			dCourse.setWriterId(mRequest.getParameter("writerId"));
			dCourse.setDcContent(mRequest.getParameter("dcContent").replaceAll("<img src=\"/resources/upload/testPhoto",
					"<img src=\"/resources/upload/photo"));
			dCourse.setDcArea(mRequest.getParameter("dcArea"));
			dCourse.setDcCash(mRequest.getParameter("dcCash"));
			dCourse.setDcPlace(mRequest.getParameter("dcPlace"));
			dCourse.setDcType(mRequest.getParameter("dcType"));
			dCourse.setDcOriPhotoName(mRequest.getOriginalFileName("up_File")); // 파일이름 저장
			dCourse.setDcRePhotoName(mRequest.getFilesystemName("up_File")); // 바뀐 파일 이름 저장

			result = dateCourseService.insertDateCourse(dCourse);

			Pattern pattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
			Matcher matcher = pattern.matcher(mRequest.getParameter("dcContent"));

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

			if (fileList.length > 0) {
				for (int i = 0; i < fileList.length; i++) {
					/* System.out.println(fileList[i].getName()) ; */
					for (String img : imgList) {
						if (fileList[i].getName().equals(img)) {
							// 콘텐츠의 사진값을 넣기위한 객체
							DateCoursePhoto contentPhoto = new DateCoursePhoto();

							String old_name = saveDirectory2 + "/" + fileList[i].getName();
							String new_name = root + "upload/photo/" + fileList[i].getName();

							FileInputStream fin = new FileInputStream(old_name);
							BufferedInputStream bfin = new BufferedInputStream(fin);

							FileOutputStream fout = new FileOutputStream(new_name);
							BufferedOutputStream bfout = new BufferedOutputStream(fout);

							// DB에 저장될 값 저장
							contentPhoto.setDcNo(dateCourseService.selectDateCourseDcNo(dCourse));
							contentPhoto.setPhotoName(new_name);
							result2 = dateCourseService.insertCommentPhoto(contentPhoto);
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

					if (!directory2.exists()) {
						directory2.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
					}
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

		if (result > 0) {
			System.out.println("등록완료");
			model.addAttribute("msg", "등록완료");
		} else {
			System.out.println("등록실패");
		}
		model.addAttribute("loc", "/dateCourseList.do?currentPage=1");
		return "common/msg";
	}

	// 전체조회
	@RequestMapping("/dateCourseList.do")
	public String selectAllListCourse(int currentPage, Model model) {

		PageData pd = dateCourseService.selectAllListCourse(currentPage);
		if (!pd.getDateCourse().isEmpty()) {
			model.addAttribute("pd", pd);
		}
		return "datecourse/dateCourseList";

	}

	// 상세글보기
	@RequestMapping("/dateCourseContent.do")
	public String selectDateCourseContent(int dcNo, Model model) {

		DateCourse dateCourse = dateCourseService.selectDateCourseContent(dcNo);

		if (dateCourse != null) {
			model.addAttribute("dc", dateCourse);
		} else {
			System.out.println("실패");
		}
		return "datecourse/dateCourseContent";
	}

	// 글수정
	@RequestMapping("/updateDcContent.do")
	public String updateDateCourseContent(HttpServletRequest request, Model model) {

		DateCourse dCourse = new DateCourse();
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		String saveDirectory = root + "upload/photo"; // 파일이 저장될 경로
		int maxSize = 1024 * 1024 * 10; // cos에서 파일 최대크기
		File directory = new File(saveDirectory);
		int result = 0;
		int result2 = 0;

		if (!directory.exists()) {
			directory.mkdir();
		}

		try {
			MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			dCourse.setWriterId(mRequest.getParameter("writerId"));
			dCourse.setDcTitle(mRequest.getParameter("dcTitle"));
			dCourse.setDcCash(mRequest.getParameter("dcCash"));
			dCourse.setDcType(mRequest.getParameter("dcType"));
			dCourse.setDcPlace(mRequest.getParameter("dcPlace"));
			dCourse.setDcArea(mRequest.getParameter("dcArea"));
			dCourse.setDcContent(mRequest.getParameter("dcContent").replaceAll("<img src=\"/resources/upload/testPhoto",
					"<img src=\"/resources/upload/photo"));
			dCourse.setDcOriPhotoName(mRequest.getOriginalFileName("up_file")); // 새거
			dCourse.setDcRePhotoName(mRequest.getFilesystemName("up_file"));
			dCourse.setDcNo(Integer.parseInt(mRequest.getParameter("dcNo")));
			String dcOldPhotoReName = mRequest.getParameter("dcOldPhotoReName"); // 옛날꺼
			String dcOldPhotoOriName = mRequest.getParameter("dcOldPhotoOriName");
			String status = mRequest.getParameter("status");

			System.out.println(dCourse.getWriterId());
			System.out.println(dCourse.getDcTitle());
			System.out.println(dCourse.getDcNo());
			System.out.println(dCourse.getDcContent());
			
			File upFile = new File(saveDirectory);
			upFile = mRequest.getFile("up_file");

			if (upFile != null && upFile.length() > 0) {
				if (dcOldPhotoOriName != null && dcOldPhotoReName != null) { // 첨부파일이 있니?!?!
					File deFile = new File(saveDirectory + "/" + dcOldPhotoReName);
					deFile.delete();
					if (!directory.exists()) {
						directory.mkdir();
					}
				}
			} else { // 첨부파일이 없음 요걸 실행행
				// 2. 원래 글에 첨부파일이 있었눈데 , 원래있던 첨부파일을 삭제한 경우 ! 이경우 !
				if (status.equals("delete")) {
					File deFile = new File(saveDirectory + "/" + dcOldPhotoReName);
					deFile.delete();
					if (!directory.exists()) {
						directory.mkdir();
					}
				} else {
					// 1. 원래 글에 첨부파일이 있었어, 근데 이번에 첨부한 파일이 없었어 그럼 옛날꺼 고대로 써!
					dCourse.setDcOriPhotoName(dcOldPhotoOriName);
					dCourse.setDcRePhotoName(dcOldPhotoReName);
				}
			}

			result = dateCourseService.updateDateCourseContent(dCourse);

			Pattern pattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
			Matcher matcher = pattern.matcher(mRequest.getParameter("dcContent"));

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

			if (fileList.length > 0) {
				for (int i = 0; i < fileList.length; i++) {
					/* System.out.println(fileList[i].getName()) ; */
					for (String img : imgList) {
						if (fileList[i].getName().equals(img)) {
							// 콘텐츠의 사진값을 넣기위한 객체
							DateCoursePhoto contentPhoto = new DateCoursePhoto();

							String old_name = saveDirectory2 + "/" + fileList[i].getName();
							String new_name = root + "upload/photo/" + fileList[i].getName();

							FileInputStream fin = new FileInputStream(old_name);
							BufferedInputStream bfin = new BufferedInputStream(fin);

							FileOutputStream fout = new FileOutputStream(new_name);
							BufferedOutputStream bfout = new BufferedOutputStream(fout);

							// DB에 저장될 값 저장
							contentPhoto.setDcNo(dateCourseService.selectDateCourseDcNo(dCourse));
							contentPhoto.setPhotoName(new_name);
							result2 = dateCourseService.insertCommentPhoto(contentPhoto);
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

					if (!directory2.exists()) {
						directory2.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
					}
				}
			}

			// 이 아래부터 변경할떄 중요한거인듯
			// ====================== 비교해서 삭제하는 곳 =======================
			// 1. 해당하는 NoticeNo의 사진들을 불러와
			ArrayList<String> photoList = dateCourseService.selectDateCourseNoPhotoSearch(dCourse.getDcNo());
			System.out.println("photoList : " + photoList);
			/*
			 * .substring(0, imgOne1.length() - 1).split("/");
			 * System.out.println(imgOne2[imgOne2.length - 1]);
			 */

			// 2. 해당 사진들과 컨텐츠의 사진들을 비교
			for (String photoOne : photoList) { // 해당 self_No에 속하는 사진리스트

				String[] photoTwo = photoOne.substring(0, photoOne.length()).split("/");
				// 포토리스트에 img가 있니 없지?
				// imgList에는 게시글에 실제로 들어있는 이미지들이 들어있음
				System.out.println("photoTwo:" + photoTwo[photoTwo.length - 1]);
				System.out.println("imgList:" + imgList);
				if (!imgList.contains(photoTwo[photoTwo.length - 1])) { // 리스트와 리스트를 비교할때 사용 값이 있니 없니 따지는 문
					System.out.println(photoTwo[photoTwo.length - 1]);
					System.out.println(imgList);
					// 3. imgList안에 photoOne이 없으면 데이터베이스에서 제거하여라
					System.out.println("성공 데베가서 확인해");
					File deFile = new File(photoOne);
					System.out.println("photoOne : " + photoOne);
					dateCourseService.contentPhotoRemove(photoOne);
					deFile.delete();

					if (!directory.exists()) {
						directory.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
					}

					else {
						System.out.println("실패ㅠㅠ 넌언제까지 이거에 매달릴거니");
					}
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

		if (result > 0) {
			model.addAttribute("msg", "정보변경성공");
			model.addAttribute("loc", "/dateCourseContent.do?dcNo="+dCourse.getDcNo());
		} else {
			model.addAttribute("msg", "정보변경실패");
			model.addAttribute("loc", "/dateCourseContent.do?dcNo="+dCourse.getDcNo());
		}
		return "common/msg";
	}

	// 글삭제
	@RequestMapping("/delectDateCourseContent.do")
	public String delectDateCourseContent(HttpServletRequest request, HttpServletResponse response, int dcNo,
			Model model) {

		String root = request.getSession().getServletContext().getRealPath("/resources/");
		String saveDirectory = root + "upload/photo";
		String fileName = request.getParameter("dcOldPhotoReName");

		String filePath = saveDirectory + "/" + fileName;
		System.out.println(filePath);

		File file = new File(filePath);
		System.out.println(file);

		int result = dateCourseService.deleteDateCourseContent(dcNo);
		dateCourseService.removePicture(dcNo);
		if (result > 0) {
			file.delete();
			File directory = new File(saveDirectory);
			if (!directory.exists()) {
				directory.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
			}
			model.addAttribute("msg", "삭제하였습니다.");
			model.addAttribute("loc", "/dateCourseList.do?currentPage=1");
		} else {
			System.out.println("파일삭제실패");
			model.addAttribute("loc", "/dateCourseList.do?currentPage=1");
		}
		return "common/msg";

	}

	// 글검색
	@RequestMapping("/searchDateCourseList.do")
	public String searchDateCourseTitle(CheckSearchInfo checkSearchInfo, Model model, int currentPage) {

		/*
		 * String selectType = request.getParameter("selectType"); String searchValue =
		 * request.getParameter("searchValue"); int currentPage =
		 * Integer.parseInt(request.getParameter("currentPage"));
		 */

		PageData pd = dateCourseService.searchDateCourse(checkSearchInfo, currentPage);

		if (!pd.getDateCourse().isEmpty()) {
			model.addAttribute("info", checkSearchInfo);
			model.addAttribute("pd", pd);
			System.out.println("성공");
			return "datecourse/dateCourseList";

		} else {

			System.out.println("실패");
			return "datecourse/dateCourseList";

		}
	}

	@ResponseBody // 얘는 그 .jsp 안받는거
	@RequestMapping("/updateLike.do")
	public String updateLike(HttpServletRequest request, HttpServletResponse response) {

		String memberId = request.getParameter("memberId");
		int dcNo = Integer.parseInt(request.getParameter("dcNo"));

		Like like = new Like();
		like.setMemberId(memberId);
		like.setDcNo(dcNo);

		Like likeInfo = dateCourseService.selectOneLikes(like);

		JSONObject obj = new JSONObject();
		if (likeInfo != null) {
			// 만약 likeInfo가 비어있지 않으면 좋아요를 없앤다!!!!!빠샤
			dateCourseService.deleteLikeMemberInfo(like); // DCLIKE테이블에 회원정보 삭제
			dateCourseService.deleteLikes(like); // DC 테이블에 좋아요 -1
			System.out.println("0");
			obj.put("result", "0");
		} else {
			// 비어있으면 좋아횽 카운트 올려주고 회원정보 넣어쥰당 쿡쿡
			dateCourseService.insertLikeMemberInfo(like); // DCLIKE테이블에 회원정보 추가
			dateCourseService.updateLikes(like); // DC 테이블에 좋아요 +1
			System.out.println("1");
			obj.put("result", "1");
		}
		DateCourse dateCourse = dateCourseService.selectDateCourseContent(dcNo); // DC테이블에 좋아요 조회
		obj.put("likeValue", dateCourse.getDcLikes());
		return new Gson().toJson(obj);
	}

	@RequestMapping("/selectOnlyPlace.do") // 장소만추천->선택항목으로 넘어감
	public String selectOnlyPlace() {
		return "datecourse/choiceDc";
	}

	// 얘가 선택해서 보내는거
	@RequestMapping("/choiceSelect.do")
	public String selectType(CheckSearchInfo checkSearchInfo, Model model, int currentPage) {
		PageData pd = dateCourseService.selectType(checkSearchInfo, currentPage);

		model.addAttribute("pd", pd);
		model.addAttribute("info", checkSearchInfo);
		
		return "datecourse/dateCourseList";
	}
	
	@RequestMapping("/dateCourseUpdateFrm.do")
	public String dateCourseUpdateFrm(int dcNo, Model model) {
		DateCourse dateCourse = dateCourseService.selectDateCourseContent(dcNo);

		if (dateCourse != null) {
			model.addAttribute("dc", dateCourse);
		}
		
		return "datecourse/updateDateCourseContent";
	}

}
