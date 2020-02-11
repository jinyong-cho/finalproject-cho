package org.kh.member.model.vo;

public class Manager {
	private String managerId;
	private String managementMemberId;
	private int totalCount;
	private int count;
	public Manager(String managerId, String managementMemberId, int totalCount, int count) {
		super();
		this.managerId = managerId;
		this.managementMemberId = managementMemberId;
		this.totalCount = totalCount;
		this.count = count;
	}
	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getManagerId() {
		return managerId;
	}
	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}
	public String getManagementMemberId() {
		return managementMemberId;
	}
	public void setManagementMemberId(String managementMemberId) {
		this.managementMemberId = managementMemberId;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
