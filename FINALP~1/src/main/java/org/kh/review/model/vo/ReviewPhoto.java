package org.kh.review.model.vo;

public class ReviewPhoto {
	private int reviewNo;
	public ReviewPhoto(int reviewNo, String photoName) {
		super();
		this.reviewNo = reviewNo;
		this.photoName = photoName;
	}
	public ReviewPhoto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	private String photoName;
}
