package org.kh.reportBoard.model.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.kh.member.model.vo.Member;
import org.kh.reportBoard.model.vo.ReportBoard;
import org.kh.reportBoard.model.vo.ReportPageData;
import org.kh.reportBoard.model.vo.ReportSearch;
import org.kh.reportBoard.model.vo.ReviewReport;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
@Repository
public class ReportBoardDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;
	public int insertReport(ReportBoard rb) {
	return sqlSession.insert("ReportBoard.insertReport",rb);
	}
	public ArrayList<ReportBoard> reportBoard(int start, int end) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		
		List reportBoard = sqlSession.selectList("ReportBoard.reportBoard",map);
		return (ArrayList<ReportBoard>) reportBoard;
	}
	public int totalBoardCount() {
		
		return sqlSession.selectOne("ReportBoard.totalBoardCount");
	}
	public ArrayList<ReportBoard> reportSearchList(ReportSearch search) {
		List list = sqlSession.selectList("ReportBoard.reportSearch",search);
		return (ArrayList<ReportBoard>)list;
	}
	public int reportSearchCount(ReportSearch search) {
	
		return sqlSession.selectOne("ReportBoard.reportSearchCount",search);
	}
	public int insertReviewReport(ReviewReport r) {
		return sqlSession.insert("ReportBoard.insertReviewReport", r);
	}
	public List<ReviewReport> reviewReportBoard() {
		return sqlSession.selectList("ReportBoard.reviewReportBoard");
	}



}




