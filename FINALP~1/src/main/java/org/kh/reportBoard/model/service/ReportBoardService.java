package org.kh.reportBoard.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.kh.member.model.vo.Member;
import org.kh.reportBoard.model.dao.ReportBoardDao;
import org.kh.reportBoard.model.vo.ReportBoard;
import org.kh.reportBoard.model.vo.ReportPageData;
import org.kh.reportBoard.model.vo.ReportSearch;
import org.kh.reportBoard.model.vo.ReviewReport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Service
public class ReportBoardService {
	@Autowired
	@Qualifier("reportBoardDao")
	ReportBoardDao reportBoardDao;

	// 신고 명단 테이블에 넣기
	public int insertReport(ReportBoard rb) {
		int result = reportBoardDao.insertReport(rb);
		return result;
	}

	// 리포트 게시판 페이징
	public ReportPageData reportBoard(int currentPage) {
		int numPerPage = 10;
		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;
		// 게시물 10개 조회
		ArrayList<ReportBoard> rlist = reportBoardDao.reportBoard(start, end);

		// 전체 게시물 수 조회
		int totalCount = reportBoardDao.totalBoardCount();
		// 전체 페이지 수 계산
		int totalPage = 0;
		if (totalCount % numPerPage == 0) {
			totalPage = totalCount / numPerPage;
		} else {
			totalPage = totalCount / numPerPage + 1;
		}
		// pageNavi제작
		int pageNaviSize = 5;

		// currentPage = 1~5 -> 1 2 3 4 5
		// currentPage = 6~10 -> 6 7 8 9 10
		int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
		int endNavi = startNavi + pageNaviSize - 1;

		// 만약 3페이지까지 있으면, 1 2 3 4 5 를 만들지 말고
		// 1 2 3 까지 만들고 끝내라 -> endNavi = totalPage
		if (endNavi > totalPage) {
			endNavi = totalPage;
		}

		StringBuilder sb = new StringBuilder();
		// 첫페이지가 1이 아니면 이전페이지로 갈 수 있게 만듦
		if (startNavi != 1) {
			sb.append("<a href='/reportBoard.do?currentPage=" + (startNavi - 1) + "'>[이전]</a>");
		}
		// 요청한 페이지는 클릭되지 않게 만들어 놓고,
		// 요청하지 않은 페이지는 클릭되게 만듦
		for (int i = startNavi; i <= endNavi; i++) {
			if (i != currentPage) {
				sb.append("<a href='/reportBoard.do?currentPage=" + i + "'>" + i + "</a>");
			} else {
				sb.append("<span>" + i + "</span>");
			}
		}
		if (endNavi != totalPage) {
			sb.append("<a href='/reportBoard.do?currentPage=" + (endNavi + 1) + "'>[다음]</a>");
		}

		ReportPageData pd = new ReportPageData(rlist, sb.toString());
		return pd;
	}

	// 검색페이징
	public ReportPageData reportSearch(int currentPage, ReportSearch search) {
		int numPerPage = 10;
		int start = (currentPage - 1) * numPerPage + 1;
		int end = currentPage * numPerPage;

		search.setStart(start);// 서치 안에 start를 담아준다
		search.setEnd(end);

		// 게시물 10개 조회
		ArrayList<ReportBoard> rlist = reportBoardDao.reportSearchList(search);

		// 전체 게시물 수 조회
		int totalCount = reportBoardDao.reportSearchCount(search);

		// 전체 페이지 수 계산
		int totalPage = 0;
		if (totalCount % numPerPage == 0) {
			totalPage = totalCount / numPerPage;
		} else {
			totalPage = totalCount / numPerPage + 1;
		}
		// pageNavi 제작
		int pageNaviSize = 5;

		// currentPage = 1~5 --> 1 2 3 4 5
		// currentPage = 6~10 --> 6 7 8 9 10
		int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
		int endNavi = startNavi + pageNaviSize - 1;
		if (endNavi > totalPage) {
			endNavi = totalPage;
		}

		StringBuilder sb = new StringBuilder();
		if (startNavi != 1) {
			sb.append("<a href='/reportSearch.do?currentPage=" + (startNavi - 1) + "&keyword=" + search.getKeyword()
					+ "&type=" + search.getType() + "'>[이전]</a>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i != currentPage) {
				sb.append("<a href='/reportSearch.do?currentPage=" + i + "&keyword=" + search.getKeyword() + "&type="
						+ search.getType() + "'>" + i + "</a>");
			} else {
				sb.append("<span>" + i + "</span>");
			}
		}
		if (endNavi != totalPage) {
			sb.append("<a href='/reportSearch.do?currentPage=" + (endNavi + 1) + "&keyword=" + search.getKeyword()
					+ "&type=" + search.getType() + "'>[다음]</a>");
		}

		ReportPageData rpd = new ReportPageData(rlist, sb.toString());

		return rpd;

	}

	public int insertReviewReport(ReviewReport r) {
		return reportBoardDao.insertReviewReport(r);
	}

	public ArrayList<ReviewReport> reviewReportBoard() {
		return (ArrayList<ReviewReport>)reportBoardDao.reviewReportBoard();
	}

}
