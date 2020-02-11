package org.kh.review.controller;

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

import org.kh.notice.model.vo.NoticePhoto;
import org.kh.review.model.service.ReviewService;
import org.kh.review.model.vo.Review;
import org.kh.review.model.vo.ReviewComment;
import org.kh.review.model.vo.ReviewLike;
import org.kh.review.model.vo.ReviewPageData;
import org.kh.review.model.vo.ReviewPhoto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.sf.json.JSONObject;

@Controller
public class ReviewController {
	@Autowired
	@Qualifier("reviewService")
	ReviewService reviewService;

	@RequestMapping("/reviewList.do")
	public String selectReviewList(int currentPage, Model model) {
		ReviewPageData rpd = reviewService.selectReviewList(currentPage);
		if (!rpd.getList().isEmpty()) {
			model.addAttribute("list", rpd.getList());
			model.addAttribute("pageNavi", rpd.getPageNavi());
			return "review/reviewList";
		}
		return "review/reviewList";
	}

	@RequestMapping("/writeReviewFrm.do")
	public String writeFrmReview() {
		return "review/writeReview";
	}

	@RequestMapping("/writeReview.do")
	public String writeReview(HttpServletRequest request, Model model) {
		Review r = new Review();
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		String saveDirectory = root + "upload/photo";
		int maxSize = 1024 * 1024 * 10;

		File directory = new File(saveDirectory);
		if (!directory.exists()) {
			directory.mkdirs();
		}
		int result = 0;
		try {
			MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			r.setWriterId(mRequest.getParameter("writerId"));
			r.setReviewTitle(mRequest.getParameter("reviewTitle"));
			r.setReviewContent(mRequest.getParameter("reviewContent")
					.replaceAll("<img src=\"/resources/upload/testPhoto", "<img src=\"/resources/upload/photo"));
			r.setReviewOriFileName(mRequest.getOriginalFileName("fileUpload"));
			r.setReviewReFileName(mRequest.getFilesystemName("fileUpload"));

			result = reviewService.writeReview(r);
			int result2 = 0;
			Pattern pattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
			Matcher matcher = pattern.matcher(mRequest.getParameter("reviewContent"));

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
							ReviewPhoto contentPhoto = new ReviewPhoto();

							String old_name = saveDirectory2 + "/" + fileList[i].getName();
							String new_name = root + "upload/photo/" + fileList[i].getName();

							FileInputStream fin = new FileInputStream(old_name);
							BufferedInputStream bfin = new BufferedInputStream(fin);

							FileOutputStream fout = new FileOutputStream(new_name);
							BufferedOutputStream bfout = new BufferedOutputStream(fout);

							// DB에 저장될 값 저장
							contentPhoto.setReviewNo(reviewService.selectReviewReviewNo(r));
							contentPhoto.setPhotoName(new_name);
							result2 = reviewService.insertCommentPhoto(contentPhoto);
							while (true) {
								int data = bfin.read(); // 한바이트씩 읽음
								System.out.println("data : "+data);
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
			model.addAttribute("msg", "글작성에 성공하였습니다.");
		} else {
			model.addAttribute("msg", "글작성에 실패하였습니다.");
		}
		model.addAttribute("loc", "/reviewList.do?currentPage=1");
		return "common/msg";
	}

	@RequestMapping("/detailReview.do")
	public String selectOneReview(int reviewNo, Model model) {
		Review r = reviewService.detailReview(reviewNo);

		int countNo = r.getCountNo();
		int neCountNo = countNo + 1;
		int preCountNo = countNo - 1;
		Review ne = reviewService.warpReview(neCountNo);
		Review pre = reviewService.warpReview(preCountNo);
		ArrayList<ReviewComment> list = reviewService.commentView(reviewNo);
		Review view = new Review();
		int maxCountNo = reviewService.maxCountNo().getCountNo();
		if (r != null) {
			int reviewViews = r.getReviewViews() + 1;
			view.setReviewNo(reviewNo);
			view.setReviewViews(reviewViews);

			reviewService.countView(view);
			r.setReviewViews(reviewViews);
			model.addAttribute("review", r);
			model.addAttribute("max", maxCountNo);
			model.addAttribute("neReview", ne);
			model.addAttribute("preReview", pre);
			model.addAttribute("comment", list);
		}
		return "review/detailReview";
	}

	@RequestMapping("/updateDetailReview.do")
	public String selectOneReviewUpdateFrm(int reviewNo, Model model) {
		Review r = reviewService.detailReview(reviewNo);

		int countNo = r.getCountNo();
		int neCountNo = countNo + 1;
		int preCountNo = countNo - 1;
		Review ne = reviewService.warpReview(neCountNo);
		Review pre = reviewService.warpReview(preCountNo);
		ArrayList<ReviewComment> list = reviewService.commentView(reviewNo);
		Review view = new Review();
		int maxCountNo = reviewService.maxCountNo().getCountNo();
		if (r != null) {
			int reviewViews = r.getReviewViews() + 1;
			view.setReviewNo(reviewNo);
			view.setReviewViews(reviewViews);

			reviewService.countView(view);
			r.setReviewViews(reviewViews);
			model.addAttribute("review", r);
			model.addAttribute("max", maxCountNo);
			model.addAttribute("neReview", ne);
			model.addAttribute("preReview", pre);
			model.addAttribute("comment", list);
		}
		return "review/updateReview";
	}

	@RequestMapping("/nextReview.do")
	public String nextNotice(int countNo1, int countNo2, Model model) {
		System.out.println(countNo1);
		System.out.println(countNo2);
		int maxCountNo = reviewService.maxCountNo().getCountNo();
		int countNo = countNo1 + countNo2;

		int neCountNo = countNo + 1;
		int preCountNo = countNo - 1;
		Review r = reviewService.warpReview(countNo); // 현재글
		Review ne = reviewService.warpReview(neCountNo); // 다음글
		Review pre = reviewService.warpReview(preCountNo); // 이전글
		ArrayList<ReviewComment> list = reviewService.commentView(r.getReviewNo());

		System.out.println(countNo);
		Review view = new Review();

		if (r != null) {
			// 성공시

			int reviewViews = r.getReviewViews() + 1;
			view.setReviewNo(r.getReviewNo());
			view.setReviewViews(reviewViews);

			reviewService.countView(view);
			r.setReviewViews(reviewViews);

			model.addAttribute("review", r);
			model.addAttribute("max", maxCountNo);
			model.addAttribute("neReview", ne);
			model.addAttribute("preReview", pre);
			model.addAttribute("comment", list);
		}
		return "review/detailReview";

	}

	@RequestMapping("/preReview.do")
	public String preNotice(int countNo1, int countNo2, Model model) {

		int countNo = countNo1 - countNo2;

		Review view = new Review();
		int maxCountNo = reviewService.maxCountNo().getCountNo();

		int neCountNo = countNo + 1;
		int preCountNo = countNo - 1;
		Review r = reviewService.warpReview(countNo); // 현재글
		Review ne = reviewService.warpReview(neCountNo); // 다음글
		Review pre = reviewService.warpReview(preCountNo); // 이전글

		ArrayList<ReviewComment> list = reviewService.commentView(r.getReviewNo());

		if (r != null) { // 성공시

			int reviewViews = r.getReviewViews() + 1;
			view.setReviewNo(r.getReviewNo());
			view.setReviewViews(reviewViews);

			reviewService.countView(view);
			r.setReviewViews(reviewViews);

			model.addAttribute("review", r);
			model.addAttribute("max", maxCountNo);
			model.addAttribute("neReview", ne);
			model.addAttribute("preReview", pre);
			model.addAttribute("comment", list);
		}
		return "review/detailReview";

	}

	@RequestMapping("/searchReview.do")
	public String searchReview(Model model, HttpServletRequest request) {
		String search = request.getParameter("search");
		String select = request.getParameter("select");
		Review review = new Review();

		review.setSearch(search);
		review.setSelect(select);

		int currentPage = Integer.parseInt(request.getParameter("currentPage"));
		review.setSearch(review.getSearch());
		ReviewPageData rpd = reviewService.selectReviewList(review, currentPage);

		if (!rpd.getList().isEmpty()) {
			model.addAttribute("list", rpd.getList());
			model.addAttribute("pageNavi", rpd.getPageNavi());
			System.out.println("성공");
			return "review/reviewList";
		} else {
			System.out.println("실패");
			return "review/reviewList";
		}
	}

	@RequestMapping("/deleteReview.do")
	public String deleteReview(int reviewNo, Model model) {
		reviewService.deleteReview(reviewNo);
		return "redirect:/";
	}

	@RequestMapping("/updateReview.do")
	public String updateReview(HttpServletRequest request, Review review, Model model) {
		Review r = new Review();
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		String saveDirectory = root + "upload/photo";
		int maxSize = 1024 * 1024 * 10;

		File directory = new File(saveDirectory);
		if (!directory.exists()) {
			directory.mkdirs();
			// 위의 경로에 폴더가 존재하늬없으면만들어릐
		}

		int result = 0;

		try {
			MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			r.setReviewNo(Integer.parseInt(mRequest.getParameter("reviewNo")));
			r.setWriterId(mRequest.getParameter("writerId"));
			r.setReviewTitle(mRequest.getParameter("reviewTitle"));
			r.setReviewContent(mRequest.getParameter("reviewContent")
					.replaceAll("<img src=\"/resources/upload/testPhoto", "<img src=\"/resources/upload/photo"));
			r.setReviewOriFileName(mRequest.getOriginalFileName("fileUpload"));
			r.setReviewReFileName(mRequest.getFilesystemName("fileUpload"));

			String oldReFile = mRequest.getParameter("oldReFile");
			String oldOriFile = mRequest.getParameter("oldOriFile");

			String status = mRequest.getParameter("status");
			String oldFilePath = saveDirectory + "/" + oldReFile;
			File upFile = mRequest.getFile("fileUpload");
			if (upFile != null && upFile.length() > 0) {
				if (oldOriFile != null && oldReFile != null) {
					File deFile = new File(oldFilePath);
					deFile.delete();
					if (!directory.exists()) {
						directory.mkdirs();
					}
				}
			} else {
				/* upFile이 없는 경우 */
				/* fileUpload가 oldReFile로 갱신되어야됨 */
				/* 그냥 파일만 삭제하고 수정 할때.. 기존파일이삭제되었는지? */
				if (status.equals("delete")) {
					File deFile = new File(oldFilePath);
					deFile.delete();
				} else {
					r.setReviewOriFileName(mRequest.getParameter("oldOriFile"));
					r.setReviewReFileName(mRequest.getParameter("oldReFile"));
				}
			}

			result = reviewService.updateReview(r);
			int result2 = 0;
			Pattern pattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
			Matcher matcher = pattern.matcher(mRequest.getParameter("reviewContent"));

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
							ReviewPhoto contentPhoto = new ReviewPhoto();

							String old_name = saveDirectory2 + "/" + fileList[i].getName();
							String new_name = root + "upload/photo/" + fileList[i].getName();

							FileInputStream fin = new FileInputStream(old_name);
							BufferedInputStream bfin = new BufferedInputStream(fin);

							FileOutputStream fout = new FileOutputStream(new_name);
							BufferedOutputStream bfout = new BufferedOutputStream(fout);

							// DB에 저장될 값 저장
							contentPhoto.setReviewNo(reviewService.selectReviewReviewNo(r));
							contentPhoto.setPhotoName(new_name);
							result2 = reviewService.insertCommentPhoto(contentPhoto);
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
			ArrayList<String> photoList = reviewService.selectReviewNoPhotoSearch(r.getReviewNo());
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
					reviewService.contentPhotoRemove(photoOne);
					deFile.delete();

					if (!directory.exists()) {
						directory.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
					} else {
						System.out.println("실패ㅠㅠ 넌언제까지 이거에 매달릴거니");
					}
				}
			}
		} catch (IOException e) {

			e.printStackTrace();
		}
		if (result > 0) {
			System.out.println("성공");
			return "redirect:/reviewList.do?currentPage=1";
		} else {
			System.out.println("실패");
			return "redirect:/reviewList.do?currentPage=1";
		}
	}

	@RequestMapping("/insertComment.do")
	public String insertComment(ReviewComment reviewComment) {
		int result = reviewService.insertComment(reviewComment);
		return "redirect:/detailReview.do?reviewNo=" + reviewComment.getReviewNo();
	}

	@RequestMapping("/deleteComment.do")
	public String deleteComment(int commentNo, int reviewNo, Model model) {
		int result = reviewService.deleteComment(commentNo);

		if (result > 0) {
			model.addAttribute("msg", "삭제가 완료되었습니다.");
		} else {
			model.addAttribute("msg", "삭제가 실패하였습니다.");
		}
		model.addAttribute("loc", "/detailReview.do?reviewNo=" + reviewNo);
		return "common/msg";
	}

	@ResponseBody // jsp안받는거
	@RequestMapping("/reviewUpdateLike.do")
	public String updateLike(HttpServletRequest request, HttpServletResponse response) {
		String memberId = request.getParameter("memberId");
		int reviewNo = Integer.parseInt(request.getParameter("reviewNo"));

		ReviewLike like = new ReviewLike();
		like.setMemberId(memberId);
		like.setReviewNo(reviewNo);

		ReviewLike likeInfo = reviewService.selectOneLikes(like);
		JSONObject obj = new JSONObject();

		if (likeInfo != null) {
			// 만약 likeInfo가 비어있지 않으면 좋아요를 없앤다!!!빠샹빠샹!
			reviewService.deleteLikeMemberInfo(like); // review_Like테이블에 회원정보 삭제
			reviewService.deleteLikes(like); // review테이블에 좋아요-1
			obj.put("result", "0");
		} else {
			reviewService.insertLikeMemberInfo(like); // review_Like테이블에 회원정보 추가
			reviewService.updateLikes(like); // review테이블에 좋아요 +1
			obj.put("result", "1");
		}

		Review review = reviewService.detailReview(reviewNo); // review테이블에 좋아요 조회
		obj.put("likeValue", review.getReviewLikes());
		return new Gson().toJson(obj);
	}

}
