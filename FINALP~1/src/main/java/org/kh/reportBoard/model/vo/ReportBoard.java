package org.kh.reportBoard.model.vo;

import java.sql.Date;

public class ReportBoard {
	private String reportId;//신고한 사람
	private String reportedId;//신고된 사람
	private String reportedComment;//신고된 댓글
	private String reportContent;//신고 내용
	private int reportCount;//신고받은 숫자
	private int commentNo;
	private Date regDate;//신고 날짜
	public ReportBoard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReportBoard(String reportId, String reportedId, String reportedComment, String reportContent,
			int reportCount, int commentNo, Date regDate) {
		super();
		this.reportId = reportId;
		this.reportedId = reportedId;
		this.reportedComment = reportedComment;
		this.reportContent = reportContent;
		this.reportCount = reportCount;
		this.commentNo = commentNo;
		this.regDate = regDate;
	}
	public String getReportId() {
		return reportId;
	}
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}
	public String getReportedId() {
		return reportedId;
	}
	public void setReportedId(String reportedId) {
		this.reportedId = reportedId;
	}
	public String getReportedComment() {
		return reportedComment;
	}
	public void setReportedComment(String reportedComment) {
		this.reportedComment = reportedComment;
	}
	public String getReportContent() {
		return reportContent;
	}
	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}
	public int getReportCount() {
		return reportCount;
	}
	public void setReportCount(int reportCount) {
		this.reportCount = reportCount;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	
	
}