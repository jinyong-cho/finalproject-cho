package org.kh.datecourse.model.vo;

public class Like {

	private String memberId;
	private int dcNo;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getDcNo() {
		return dcNo;
	}
	public void setDcNo(int dcNo) {
		this.dcNo = dcNo;
	}
	public Like(String memberId, int dcNo) {
		super();
		this.memberId = memberId;
		this.dcNo = dcNo;
	}
	public Like() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
