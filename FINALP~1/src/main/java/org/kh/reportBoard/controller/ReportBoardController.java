package org.kh.reportBoard.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.javassist.compiler.ast.NewExpr;
import org.kh.member.model.vo.Member;
import org.kh.reportBoard.model.service.ReportBoardService;
import org.kh.reportBoard.model.vo.ReportBoard;
import org.kh.reportBoard.model.vo.ReportPageData;
import org.kh.reportBoard.model.vo.ReportSearch;
import org.kh.reportBoard.model.vo.ReviewReport;
import org.kh.review.model.vo.ReviewComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ReportBoardController {
	@Autowired
	@Qualifier("reportBoardService")
	ReportBoardService reportBoardService;
	//신고 폼에서 제출을 누를시 신고테이블로 데이터가 넘어감
	@RequestMapping("/insertReport.do")
	public String insertReport(HttpServletRequest request, HttpSession session, int commentNo, String reportedId, String reportedComment,
			String reportContent, String reportId, int reportCount,Model model) {
		ReportBoard rb = new ReportBoard();
		rb.setReportId(reportId);// 신고한 아이디
		System.out.println(reportId);
		rb.setReportedId(reportedId);// 신고받은 아이디
		System.out.println(reportedId);
		rb.setCommentNo(commentNo);// 댓글 번호
		System.out.println(commentNo);
		rb.setReportedComment(reportedComment);// 댓글 내용
		System.out.println(reportedComment);
		rb.setReportContent(reportContent);// 신고사유
		System.out.println(reportContent);
		rb.setReportCount(reportCount);// 신고 횟수 기본 1;
		System.out.println(reportCount);
		String referer = request.getHeader("Referer");
		System.out.println(referer);
		int result = reportBoardService.insertReport(rb);
		if (result > 0) {
			model.addAttribute("msg","신고 성공");
			model.addAttribute("loc",referer);
		}else {
			model.addAttribute("msg","신고 실패");
			model.addAttribute("loc",referer);
		}
		return "common/msg";
	}
	
	@RequestMapping("/insertReviewReport.do")
	public String insertReport(HttpServletRequest request, HttpSession session, String reviewWriterId, String reportContent, int reviewNo, Model model) {
		Member m = (Member)session.getAttribute("member");
		ReviewReport r = new ReviewReport();
		r.setReportId(m.getMemberId());
		r.setReviewWriterId(reviewWriterId);
		r.setReviewNo(reviewNo);
		r.setReportComment(reportContent);
		
		int result=reportBoardService.insertReviewReport(r);
		String referer = request.getHeader("Referer");
		System.out.println(referer);
		
		if (result > 0) {
			model.addAttribute("msg","신고 성공");
			model.addAttribute("loc",referer);
		}else {
			model.addAttribute("msg","신고 실패");
			model.addAttribute("loc",referer);
		}
		return "common/msg";
	}
	
	

	//신고게시판 
	@RequestMapping("/reportBoard.do")
	public String reportBoard(int currentPage, Model model) {
		ReportPageData rpd = reportBoardService.reportBoard(currentPage);
		if (!rpd.getReportBoard().isEmpty()) {// 객체 리포트 보드를 가져옴
			model.addAttribute("reportBoard", rpd.getReportBoard());
			model.addAttribute("pageNavi", rpd.getPageNavi());
			model.addAttribute("currentPage", currentPage);
		}
		return "report/reportBoard";
	}
	
	@RequestMapping("/reviewReportBoard.do")
	public String reviewReportBoard(Model model) {
		ArrayList<ReviewReport> rList = reportBoardService.reviewReportBoard();
		if(!rList.isEmpty()) {
			model.addAttribute("rList", rList);
		}
		return "report/reviewReportBoard";
	}
	
	
	//신고 게시판 검색
	@RequestMapping("/reportSearch.do")
	public String reportSearch(ReportSearch search, int currentPage, Model model) {
		ReportPageData rpd = reportBoardService.reportSearch(currentPage, search);
		if (!rpd.getReportBoard().isEmpty()) {
			model.addAttribute("pageNavi", rpd.getPageNavi());
			model.addAttribute("reportBoard", rpd.getReportBoard());
			model.addAttribute("keyword", search.getKeyword());
			model.addAttribute("currentPage", currentPage);
			return "report/reportBoard";

		}
		return "report/reportBoard";

	}
	
	//신고 버튼을 누를시 신고 폼으로 가는 컨트롤러
	@RequestMapping("/reportMember.do")
	public String reportMember(Model model, HttpSession session, int commentNo, String commentContent,
			String writerId,int reviewNo) {
		// httprequest는 이전 jsp에서 사용하는 값을 가져올 때 사용한다, session은 로그인 상태 유지
		model.addAttribute("commentNo", commentNo);
		model.addAttribute("commentContent", commentContent);
		model.addAttribute("writerId", writerId);
		model.addAttribute("reviewNo", reviewNo);
		// 해당하는 댓글
		return "report/reportFrm";
		// 신고자 정보가 가야하고, 신고받는 댓글의 정보는 필요없겠지 일단은
	}
	

	
}