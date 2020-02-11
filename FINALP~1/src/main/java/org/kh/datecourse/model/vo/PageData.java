package org.kh.datecourse.model.vo;

import java.util.ArrayList;

public class PageData {

	private ArrayList<DateCourse> dateCourse;
	private String dateCourseNavi;
	
	
	public ArrayList<DateCourse> getDateCourse() {
		return dateCourse;
	}
	public void setDateCourse(ArrayList<DateCourse> dateCourse) {
		this.dateCourse = dateCourse;
	}
	public String getDateCourseNavi() {
		return dateCourseNavi;
	}
	public void setDateCourseNavi(String dateCourseNavi) {
		this.dateCourseNavi = dateCourseNavi;
	}
	
	public PageData(ArrayList<DateCourse> dateCourse, String dateCourseNavi) {
		super();
		this.dateCourse = dateCourse;
		this.dateCourseNavi = dateCourseNavi;
	}
	public PageData() {
		super();
	}
	
	
	
}
