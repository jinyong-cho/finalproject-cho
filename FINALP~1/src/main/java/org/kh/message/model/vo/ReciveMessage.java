package org.kh.message.model.vo;

public class ReciveMessage {

	private int reciveNo;
	private String reciveId;
	private String sendId;
	private String content;
	public ReciveMessage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReciveMessage(int reciveNo, String reciveId, String sendId, String content) {
		super();
		this.reciveNo = reciveNo;
		this.reciveId = reciveId;
		this.sendId = sendId;
		this.content = content;
	}
	public int getReciveNo() {
		return reciveNo;
	}
	public void setReciveNo(int reciveNo) {
		this.reciveNo = reciveNo;
	}
	public String getReciveId() {
		return reciveId;
	}
	public void setReciveId(String reciveId) {
		this.reciveId = reciveId;
	}
	public String getSendId() {
		return sendId;
	}
	public void setSendId(String sendId) {
		this.sendId = sendId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
