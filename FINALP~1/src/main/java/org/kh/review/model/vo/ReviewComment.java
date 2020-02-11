package org.kh.review.model.vo;

import java.sql.Date;

public class ReviewComment {

	private int commentNo;
	private int reviewNo;
	private String writerId;
	private String commentContent;
	private Date commentRegDate;
	public ReviewComment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewComment(int commentNo, int reviewNo, String writerId, String commentContent, Date commentRegDate) {
		super();
		this.commentNo = commentNo;
		this.reviewNo = reviewNo;
		this.writerId = writerId;
		this.commentContent = commentContent;
		this.commentRegDate = commentRegDate;
	}
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentRegDate() {
		return commentRegDate;
	}
	public void setCommentRegDate(Date commentRegDate) {
		this.commentRegDate = commentRegDate;
	}
	
	
}
