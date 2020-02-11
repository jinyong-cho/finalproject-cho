package org.kh.member.model.vo;

import java.util.ArrayList;

public class MemberPageData {
	private ArrayList<Member> AllMember;
	private String PageNavi;
	
	public ArrayList<Member> getAllMember() {
		return AllMember;
	}
	public void setAllMember(ArrayList<Member> allMember) {
		AllMember = allMember;
	}
	public String getPageNavi() {
		return PageNavi;
	}
	public void setPageNavi(String pageNavi) {
		PageNavi = pageNavi;
	}
	public MemberPageData(ArrayList<Member> allMember, String pageNavi) {
		super();
		AllMember = allMember;
		PageNavi = pageNavi;
	}
	public MemberPageData() {
		super();
		// TODO Auto-generated constructor stub
	}
}
