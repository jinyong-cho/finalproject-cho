package org.kh.reportBoard.model.vo;

import java.util.ArrayList;

public class ReportPageData {
	private ArrayList<ReportBoard> reportBoard;
	private String pageNavi;
	
	
	
	public ArrayList<ReportBoard> getReportBoard() {
		return reportBoard;
	}
	public void setReportBoard(ArrayList<ReportBoard> reportBoard) {
		this.reportBoard = reportBoard;
	}
	public String getPageNavi() {
		return pageNavi;
	}
	public void setPageNavi(String pageNavi) {
		this.pageNavi = pageNavi;
	}
	public ReportPageData(ArrayList<ReportBoard> reportBoard, String pageNavi) {
		super();
		this.reportBoard = reportBoard;
		this.pageNavi = pageNavi;
	}
	public ReportPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
}
