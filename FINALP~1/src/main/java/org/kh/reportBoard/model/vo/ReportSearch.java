package org.kh.reportBoard.model.vo;

public class ReportSearch {
	private int start;
	private int end;
	private String type;
	private String keyword;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public ReportSearch(int start, int end, String type, String keyword) {
		super();
		this.start = start;
		this.end = end;
		this.type = type;
		this.keyword = keyword;
	}
	public ReportSearch() {
		super();
		// TODO Auto-generated constructor stub
	}
}
