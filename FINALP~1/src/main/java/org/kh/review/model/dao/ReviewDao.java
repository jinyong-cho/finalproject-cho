package org.kh.review.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.review.model.vo.Review;
import org.kh.review.model.vo.ReviewComment;
import org.kh.review.model.vo.ReviewLike;
import org.kh.review.model.vo.ReviewPhoto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDao {
	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;

	public int totalReviewCount() {
		return sqlSession.selectOne("review.totalReview");
	}

	public List<Review> selectReviewList(int start, int end) {
		Review r = new Review();
		r.setStart(start);
		r.setEnd(end);
		return sqlSession.selectList("review.selectReviewList",r);
	}

	public int writeReview(Review review) {
		return sqlSession.insert("review.writeReview",review);
	}

	public Review detailReview(int reviewNo) {
		return sqlSession.selectOne("review.detailReview",reviewNo);
	}

	public Review maxCountNo() {
		return sqlSession.selectOne("review.maxCountNo"); 
	}

	public int countView(Review view) {
		return sqlSession.update("review.countView",view);
	}

	public Review warpReview(int countNo) {
		return sqlSession.selectOne("review.warpReview",countNo);
	}

	public List<Review> selectReviewList(Review review) {
		return sqlSession.selectList("review.selectReviewList",review);
	}

	public int searchTotalReview(Review review) {
		return sqlSession.selectOne("review.searchTotalReview",review);
	}

	public int deleteReview(int reviewNo) {
		return sqlSession.delete("review.deleteReview",reviewNo);
	}

	public int updateReview(Review review) {
		return sqlSession.update("review.updateReview",review);
	}

	public int insertComment(ReviewComment reviewComment) {
		return sqlSession.insert("review.insertComment",reviewComment);
	}

	public List<ReviewComment> commentView(int reviewNo) {
		return sqlSession.selectList("review.commentView",reviewNo);
	}

	public int deleteComment(int commentNo) {
		return sqlSession.delete("review.deleteComment",commentNo);
	}

	public ReviewLike selectOneLikes(ReviewLike like) {
		return sqlSession.selectOne("review.selectOneLikes",like);
	}

	public int deleteLikeMemberInfo(ReviewLike like) {
		return sqlSession.delete("review.deleteLikeMemberInfo",like);
	}

	public int deleteLikes(ReviewLike like) {
		return sqlSession.update("review.deleteLikes",like);
	}

	public int insertLikeMemberInfo(ReviewLike like) {
		return sqlSession.insert("review.insertLikeMemberInfo",like);
	}

	public int updateLikes(ReviewLike like) {
		return sqlSession.update("review.updateLikes",like);
	}

	public int selectReviewReviewNo(Review r) {
		return sqlSession.selectOne("review.selectReviewReviewNo", r);
	}

	public int insertCommentPhoto(ReviewPhoto contentPhoto) {
		return sqlSession.insert("review.insertCommentPhoto", contentPhoto);
	}

	public List<String> selectReviewPhotoSearch(int reviewNo) {
		return sqlSession.selectList("review.selectReviewNoPhotoSearch", reviewNo);
	}

	public void contentPhotoRemove(String photoOne) {
		sqlSession.delete("review.contentPhotoRemove", photoOne);
	}

	public List<String> searchProfile(String memberId) {
		return sqlSession.selectList("review.searchProfile", memberId);
	}

	public List<String> searchContentList(String memberId) {
		return sqlSession.selectList("review.searchContentList",memberId);
	}
}
