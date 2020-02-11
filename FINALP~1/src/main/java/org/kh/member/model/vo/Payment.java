package org.kh.member.model.vo;

import java.sql.Date;

public class Payment {
	private String memberId;
	private int price;
	private Date regDate;
	private int totalCount;
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Payment(String memberId, int price, Date regDate, int totalCount) {
		super();
		this.memberId = memberId;
		this.price = price;
		this.regDate = regDate;
		this.totalCount = totalCount;
	}
	
}
