package org.kh.review.model.vo;

import java.sql.Date;

public class Review {
	private int countNo;
	private int reviewNo;
	private String reviewTitle;
	private String writerId;
	private String reviewContent;
	private int reviewViews;
	private int reviewLikes;
	private String reviewOriFileName;
	private String reviewReFileName;
	private Date reviewRegDate;
	private int start;
	private int end;
	private String search;
	private String select;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Review(int countNo, int reviewNo, String reviewTitle, String writerId, String reviewContent, int reviewViews,
			int reviewLikes, String reviewOriFileName, String reviewReFileName, Date reviewRegDate, int start, int end,
			String search, String select) {
		super();
		this.countNo = countNo;
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.writerId = writerId;
		this.reviewContent = reviewContent;
		this.reviewViews = reviewViews;
		this.reviewLikes = reviewLikes;
		this.reviewOriFileName = reviewOriFileName;
		this.reviewReFileName = reviewReFileName;
		this.reviewRegDate = reviewRegDate;
		this.start = start;
		this.end = end;
		this.search = search;
		this.select = select;
	}
	public int getCountNo() {
		return countNo;
	}
	public void setCountNo(int countNo) {
		this.countNo = countNo;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public int getReviewViews() {
		return reviewViews;
	}
	public void setReviewViews(int reviewViews) {
		this.reviewViews = reviewViews;
	}
	public int getReviewLikes() {
		return reviewLikes;
	}
	public void setReviewLikes(int reviewLikes) {
		this.reviewLikes = reviewLikes;
	}
	public String getReviewOriFileName() {
		return reviewOriFileName;
	}
	public void setReviewOriFileName(String reviewOriFileName) {
		this.reviewOriFileName = reviewOriFileName;
	}
	public String getReviewReFileName() {
		return reviewReFileName;
	}
	public void setReviewReFileName(String reviewReFileName) {
		this.reviewReFileName = reviewReFileName;
	}
	public Date getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(Date reviewRegDate) {
		this.reviewRegDate = reviewRegDate;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public String getSelect() {
		return select;
	}
	public void setSelect(String select) {
		this.select = select;
	}
	
	
	
	
}
