package org.kh.datecourse.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.datecourse.model.vo.CheckSearchInfo;
import org.kh.datecourse.model.vo.DateCourse;
import org.kh.datecourse.model.vo.DateCoursePhoto;
import org.kh.datecourse.model.vo.Like;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("datecourseDao")
public class DateCourseDao {
	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;

	public int insertDateCourse(DateCourse dCourse) {
		System.out.println(dCourse.getDcContent());
		return sqlSession.insert("dcourse.insertDateCourse", dCourse);
		
	}

	public ArrayList<DateCourse> selectAllListCourse(CheckSearchInfo checkSearchInfo) {

		List<DateCourse> dList = sqlSession.selectList("dcourse.selectAllListCourse", checkSearchInfo);
		return (ArrayList<DateCourse>) dList;
	}

	public int totalDateCourseCount() {
		// 전체 게시물 갯수 가져오는 메소드
		return sqlSession.selectOne("dcourse.count");
	}

	public int searchTotalDateCourseCount(CheckSearchInfo checkSearchInfo) {
		// 전체 게시물 갯수 가져오는 메소드
		return sqlSession.selectOne("dcourse.count", checkSearchInfo);
	}

	/*
	 * public List<DateCourse> selectAllListCourse() {
	 * 
	 * return sqlSession.selectList("dcourse.selectAllListCourse"); }
	 */

	public DateCourse selectDateCourseContent(int dcNo) {
		return sqlSession.selectOne("dcourse.selectDateCourseContent", dcNo);
	}

	public int updateDateCourseContent(DateCourse dCourse) {
		return sqlSession.update("dcourse.updateDateCourseContent", dCourse);

	}

	public int deleteDateCourseContent(int dcNo) {
		return sqlSession.delete("dcourse.deleteDateCourseContent", dcNo);
	}

	public List<DateCourse> searchDateCourse(DateCourse dc) {
		return sqlSession.selectList("dcourse.searchDateCourse", dc);
	}

	public int updateDcViews(int dcNo) {
		return sqlSession.update("dcourse.updateDcViews", dcNo);
	}

	// 좋아용
	public Like selectOneLikes(Like like) {
		return sqlSession.selectOne("dcourse.selectOneLike", like);
	}

	public int insertLikeMemberInfo(Like like) {
		return sqlSession.insert("dcourse.insertLikeMemberInfo", like);

	}

	public int deleteLikeMemberInfo(Like like) {
		return sqlSession.delete("dcourse.deleteLikeMemberInfo", like);
	}

	public int updateLikes(Like like) {
		return sqlSession.update("dcourse.updateLikes", like);
	}

	public int deleteLikes(Like like) {
		return sqlSession.update("dcourse.deleteLikes", like);
	}

	public ArrayList<DateCourse> selectType(CheckSearchInfo checkSearchInfo) {
		List<DateCourse> dList = sqlSession.selectList("dcourse.selectType", checkSearchInfo);
		return (ArrayList<DateCourse>) dList;
	}

	public int DateCourseSearchCount(CheckSearchInfo checkSearchInfo) {
		return sqlSession.selectOne("dcourse.checkSearchInfoCount", checkSearchInfo);
	}

	public int removePicture(int dcNo) {
		return sqlSession.delete("dcourse.removePicture", dcNo);

	}

	public int selectDateCourseDcNo(DateCourse dCourse) {
		return sqlSession.selectOne("dcourse.selectDateCourseDcNo", dCourse);
	}

	public int insertCommentPhoto(DateCoursePhoto contentPhoto) {
		return sqlSession.insert("dcourse.insertCommentPhoto", contentPhoto);
	}

	public List<String> selectDateCourseNoPhotoSearch(int dcNo) {
		return sqlSession.selectList("dcourse.selectDateCourseNoPhotoSearch", dcNo);
	}

	public void contentPhotoRemove(String photoOne) {
		sqlSession.delete("notice.contentPhotoRemove", photoOne);
	}
}
