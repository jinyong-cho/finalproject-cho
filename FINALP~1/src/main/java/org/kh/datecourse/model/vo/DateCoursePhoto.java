package org.kh.datecourse.model.vo;

public class DateCoursePhoto {
	private int dcNo;
	private String photoName;
	public DateCoursePhoto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DateCoursePhoto(int dcNo, String photoName) {
		super();
		this.dcNo = dcNo;
		this.photoName = photoName;
	}
	public int getDcNo() {
		return dcNo;
	}
	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
}
