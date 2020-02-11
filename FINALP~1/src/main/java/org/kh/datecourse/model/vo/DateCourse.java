package org.kh.datecourse.model.vo;

import java.sql.Date;

public class DateCourse {

	private int dcNo; //게시물번호
	private String dcTitle; //제목
	private String writerId; //작성자
	private String dcContent; //내용
	private String dcArea; //지역
	private String dcCash; //금액
	private int dcViews; //조회수
	private String dcPlace; //장소이름
	private String dcOriPhotoName; //커버사진오리지널네임
	private String dcRePhotoName; //커버사진리네임
	private int dcLikes; //좋아요
	private Date dcRegDate; //작성날짜
	private String dcType; //유형 
	private String selectType; // 검색할 타입
	private String searchValue; // 검색할 내용 값
	private int start;
	private int end;
	
	public int getDcNo() {
		return dcNo;
	}
	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
	}
	public String getDcTitle() {
		return dcTitle;
	}
	public void setDcTitle(String dcTitle) {
		this.dcTitle = dcTitle;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getDcContent() {
		return dcContent;
	}
	public void setDcContent(String dcContent) {
		this.dcContent = dcContent;
	}
	public String getDcArea() {
		return dcArea;
	}
	public void setDcArea(String dcArea) {
		this.dcArea = dcArea;
	}
	public String getDcCash() {
		return dcCash;
	}
	public void setDcCash(String dcCash) {
		this.dcCash = dcCash;
	}
	public int getDcViews() {
		return dcViews;
	}
	public void setDcViews(int dcViews) {
		this.dcViews = dcViews;
	}
	public String getDcPlace() {
		return dcPlace;
	}
	public void setDcPlace(String dcPlace) {
		this.dcPlace = dcPlace;
	}
	public String getDcOriPhotoName() {
		return dcOriPhotoName;
	}
	public void setDcOriPhotoName(String dcOriPhotoName) {
		this.dcOriPhotoName = dcOriPhotoName;
	}
	public String getDcRePhotoName() {
		return dcRePhotoName;
	}
	public void setDcRePhotoName(String dcRePhotoName) {
		this.dcRePhotoName = dcRePhotoName;
	}
	public int getDcLikes() {
		return dcLikes;
	}
	public void setDcLikes(int dcLikes) {
		this.dcLikes = dcLikes;
	}
	public Date getDcRegDate() {
		return dcRegDate;
	}
	public void setDcRegDate(Date dcRegDate) {
		this.dcRegDate = dcRegDate;
	}
	public String getDcType() {
		return dcType;
	}
	public void setDcType(String dcType) {
		this.dcType = dcType;
	}
	public String getSelectType() {
		return selectType;
	}
	public void setSelectType(String selectType) {
		this.selectType = selectType;
	}
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
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
	public DateCourse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public DateCourse(int dcNo, String dcTitle, String writerId, String dcContent, String dcArea, String dcCash,
			int dcViews, String dcPlace, String dcOriPhotoName, String dcRePhotoName, int dcLikes, Date dcRegDate,
			String dcType, String selectType, String searchValue, int start, int end) {
		super();
		this.dcNo = dcNo;
		this.dcTitle = dcTitle;
		this.writerId = writerId;
		this.dcContent = dcContent;
		this.dcArea = dcArea;
		this.dcCash = dcCash;
		this.dcViews = dcViews;
		this.dcPlace = dcPlace;
		this.dcOriPhotoName = dcOriPhotoName;
		this.dcRePhotoName = dcRePhotoName;
		this.dcLikes = dcLikes;
		this.dcRegDate = dcRegDate;
		this.dcType = dcType;
		this.selectType = selectType;
		this.searchValue = searchValue;
		this.start = start;
		this.end = end;
	}
	
		
}
