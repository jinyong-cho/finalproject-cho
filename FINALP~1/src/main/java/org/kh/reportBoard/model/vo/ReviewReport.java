package org.kh.reportBoard.model.vo;

import java.sql.Date;

public class ReviewReport {
	private String reportId;
	private String reviewWriterId;
	private int reviewNo;
	private Date regDate;
	private String reportComment;
	public ReviewReport(String reportId, String reviewWriterId, int reviewNo, Date regDate, String reportComment) {
		super();
		this.reportId = reportId;
		this.reviewWriterId = reviewWriterId;
		this.reviewNo = reviewNo;
		this.regDate = regDate;
		this.reportComment = reportComment;
	}
	public ReviewReport() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getReportId() {
		return reportId;
	}
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}
	public String getReviewWriterId() {
		return reviewWriterId;
	}
	public void setReviewWriterId(String reviewWriterId) {
		this.reviewWriterId = reviewWriterId;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getReportComment() {
		return reportComment;
	}
	public void setReportComment(String reportComment) {
		this.reportComment = reportComment;
	}
	
}
