package org.kh.notice.model.vo;

import java.sql.Date;

public class Notice {

	private int countNo;
	private int noticeNo;
	private String noticeTitle;
	private String writerId;
	private String noticeContent;
	private int noticeView;
	private String noticeOriFileName; //파일 본연의 이름
	private String noticeReFileName; //그 파일이 어느 저장 공간에 중복이 된다면 , 그걸 막기 위해 넘버링을 걸친파일 이름(실제 업로드파일)
	private Date noticeRegDate;
	private int start;
	private int end;
	private String search;
	private String select;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int countNo, int noticeNo, String noticeTitle, String writerId, String noticeContent, int noticeView,
			String noticeOriFileName, String noticeReFileName, Date noticeRegDate, int start, int end, String search,
			String select) {
		super();
		this.countNo = countNo;
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.writerId = writerId;
		this.noticeContent = noticeContent;
		this.noticeView = noticeView;
		this.noticeOriFileName = noticeOriFileName;
		this.noticeReFileName = noticeReFileName;
		this.noticeRegDate = noticeRegDate;
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
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public int getNoticeView() {
		return noticeView;
	}
	public void setNoticeView(int noticeView) {
		this.noticeView = noticeView;
	}
	public String getNoticeOriFileName() {
		return noticeOriFileName;
	}
	public void setNoticeOriFileName(String noticeOriFileName) {
		this.noticeOriFileName = noticeOriFileName;
	}
	public String getNoticeReFileName() {
		return noticeReFileName;
	}
	public void setNoticeReFileName(String noticeReFileName) {
		this.noticeReFileName = noticeReFileName;
	}
	public Date getNoticeRegDate() {
		return noticeRegDate;
	}
	public void setNoticeRegDate(Date noticeRegDate) {
		this.noticeRegDate = noticeRegDate;
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
