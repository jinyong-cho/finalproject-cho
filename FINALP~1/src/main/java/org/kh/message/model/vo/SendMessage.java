package org.kh.message.model.vo;

public class SendMessage {
private int sendNo;
private String sendId;
private String reciveId;
private String content;
public SendMessage() {
	super();
	// TODO Auto-generated constructor stub
}
public SendMessage(int sendNo, String sendId, String reciveId, String content) {
	super();
	this.sendNo = sendNo;
	this.sendId = sendId;
	this.reciveId = reciveId;
	this.content = content;
}
public int getSendNo() {
	return sendNo;
}
public void setSendNo(int sendNo) {
	this.sendNo = sendNo;
}
public String getSendId() {
	return sendId;
}
public void setSendId(String sendId) {
	this.sendId = sendId;
}
public String getReciveId() {
	return reciveId;
}
public void setReciveId(String reciveId) {
	this.reciveId = reciveId;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}

}
