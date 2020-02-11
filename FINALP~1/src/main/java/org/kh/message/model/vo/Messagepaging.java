package org.kh.message.model.vo;

public class Messagepaging {
private int start;
private int end;
private String memberId;
public Messagepaging() {
	super();
	// TODO Auto-generated constructor stub
}
public Messagepaging(int start, int end, String memberId) {
	super();
	this.start = start;
	this.end = end;
	this.memberId = memberId;
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
public String getMemberId() {
	return memberId;
}
public void setMemberId(String memberId) {
	this.memberId = memberId;
}



}
