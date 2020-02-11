package org.kh.review.model.service;

import java.util.ArrayList;

import org.kh.review.model.dao.ReviewDao;
import org.kh.review.model.vo.Review;
import org.kh.review.model.vo.ReviewComment;
import org.kh.review.model.vo.ReviewLike;
import org.kh.review.model.vo.ReviewPageData;
import org.kh.review.model.vo.ReviewPhoto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("reviewService")
public class ReviewService {
	@Autowired
	@Qualifier("reviewDao")
	ReviewDao reviewDao;

	public ReviewPageData selectReviewList(int currentPage) {
		int numPerPage = 6;
		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;

		ArrayList<Review> list = (ArrayList<Review>) reviewDao.selectReviewList(start, end);

		int totalCount = reviewDao.totalReviewCount();
		int totalPage = 0;

		if (totalCount % numPerPage == 0) {
			totalPage = totalCount / numPerPage;
		} else {
			totalPage = totalCount / numPerPage + 1;
		}
		int pageNaviSize = 5;

		int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
		int endNavi = startNavi + pageNaviSize - 1;

		if (endNavi > totalPage) {
			endNavi = totalPage;
		}

		StringBuilder sb = new StringBuilder();
		if (startNavi != 1) {
			sb.append("<a href='/reviewList.do?currentPage=" + (startNavi - 1) + "'>[이전]</a>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i != currentPage) {
				sb.append("<a href='/reviewList.do?currentPage=" + i + "'>" + i + "</a>");
			} else {
				sb.append("<span>" + i + "</span>");
			}
		}
		if (endNavi != totalPage) {
			sb.append("<a href='reviewList.do?currentPage=" + (endNavi + 1) + "'>[다음]</a>");
		}
		ReviewPageData rpd = new ReviewPageData(list, sb.toString());

		return rpd;
	}

	public int writeReview(Review review) {
		int result = reviewDao.writeReview(review);
		return result;
	}

	public Review detailReview(int reviewNo) {
		Review review = reviewDao.detailReview(reviewNo);
		return review;
	}

	public Review maxCountNo() {
		return reviewDao.maxCountNo();
	}

	public int countView(Review view) {
		int result = reviewDao.countView(view);
		return result;
	}

	public Review warpReview(int countNo) {
		return reviewDao.warpReview(countNo);
	}

	public ReviewPageData selectReviewList(Review review, int currentPage) {
		int numPerPage = 6;
		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;

		review.setStart(start);
		review.setEnd(end);

		ArrayList<Review> list = (ArrayList<Review>) reviewDao.selectReviewList(review);
		int totalCount = reviewDao.searchTotalReview(review);
		int totalPage = 0;

		if (totalCount
				% numPerPage == 0) {
			totalPage = totalCount / numPerPage;
		} else {
			totalPage = totalCount / numPerPage+1;
		}
		System.out.println(totalPage);
		int pageNaviSize = 5;

		int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
		int endNavi = startNavi + pageNaviSize - 1;

		if (endNavi > totalPage) {
			endNavi = totalPage;
		}

		StringBuilder sb = new StringBuilder();

		if (startNavi != 1) {
			sb.append("<a href='/searchReview.do?currentPage=" + (startNavi - 1) + "&select=" + review.getSelect()
					+ "&search=" + review.getSearch() + "'>[이전]</a>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i != currentPage) {
				sb.append("<a href='/searchReview.do?currentPage=" + i + "&select=" + review.getSelect() + "&search="
						+ review.getSearch() + "'>" + i + "</a>");
			} else {
				sb.append("<span>" + i + "</span>");
			}
		}
		if (endNavi != totalPage) {
			sb.append("<a href='/searchReview.do?currentPage=" + (endNavi + 1) + "&select=" + review.getSelect()
					+ "&search=" + review.getSearch() + "'>[다음]</a>");
		}

		ReviewPageData rpd = new ReviewPageData(list, sb.toString());
		return rpd;
	}

	public int deleteReview(int reviewNo) {
		int result = reviewDao.deleteReview(reviewNo);
		return result;
	}

	public int updateReview(Review review) {
		int result = reviewDao.updateReview(review);
		return result;
	}

	public int insertComment(ReviewComment reviewComment) {
		int result = reviewDao.insertComment(reviewComment);
		return result;
	}

	public ArrayList<ReviewComment> commentView(int reviewNo) {
		ArrayList<ReviewComment> list = (ArrayList<ReviewComment>)reviewDao.commentView(reviewNo);
		return list;
	}

	public int deleteComment(int commentNo) {
		int result = reviewDao.deleteComment(commentNo);
		return result;
	}

	public ReviewLike selectOneLikes(ReviewLike like) {
		ReviewLike likeInfo = reviewDao.selectOneLikes(like);
		return likeInfo;
	}

	public int deleteLikeMemberInfo(ReviewLike like) {
		return reviewDao.deleteLikeMemberInfo(like);
	}

	public int deleteLikes(ReviewLike like) {
		return reviewDao.deleteLikes(like);
	}

	public int insertLikeMemberInfo(ReviewLike like) {
		return reviewDao.insertLikeMemberInfo(like);
	}

	public int updateLikes(ReviewLike like) {
		return reviewDao.updateLikes(like);
	}

	public Review selectReview(int reviewNo) {
		// TODO Auto-generated method stub
		return null;
	}

	public int selectReviewReviewNo(Review r) {
		return reviewDao.selectReviewReviewNo(r);
	}

	public int insertCommentPhoto(ReviewPhoto contentPhoto) {
		return reviewDao.insertCommentPhoto(contentPhoto);
	}

	public ArrayList<String> selectReviewNoPhotoSearch(int reviewNo) {
		return (ArrayList<String>)reviewDao.selectReviewPhotoSearch(reviewNo);
	}

	public void contentPhotoRemove(String photoOne) {
		reviewDao.contentPhotoRemove(photoOne);
	}

	public ArrayList<String> searchProfile(String memberId) {
		return (ArrayList<String>)reviewDao.searchProfile(memberId);
	}

	public ArrayList<String> searchContentList(String memberId) {
		return (ArrayList<String>)reviewDao.searchContentList(memberId);
	}

}
