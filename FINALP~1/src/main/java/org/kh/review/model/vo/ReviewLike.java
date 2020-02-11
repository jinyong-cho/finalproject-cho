package org.kh.review.model.vo;

public class ReviewLike {

	private int reviewNo;
	private String memberId;
	public ReviewLike() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewLike(int reviewNo, String memberId) {
		super();
		this.reviewNo = reviewNo;
		this.memberId = memberId;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
}
