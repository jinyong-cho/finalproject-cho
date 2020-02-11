package org.kh.notice.model.vo;

public class NoticePhoto {
	
	private int noticeNo;
	private String photoName;
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public NoticePhoto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticePhoto(int noticeNo, String photoName) {
		super();
		this.noticeNo = noticeNo;
		this.photoName = photoName;
	}
}