package org.kh.member.model.vo;

public class Member {
	private	String memberId;
	private String memberPw;
	private String memberName;
	private String memberNickName;
	private String memberAddr;
	private String memberAddr2;
	private String memberAddr3;
	private String memberAddr4;
	private String memberEmail;
	private String memberBirth;
	private String memberGender;
	private String memberType;
	private String memberPhone;
	private String memberOriPhotoName;
	private String memberRePhotoName;
	private int memberNo;
	
	public Member(String memberId, String memberPw, String memberName, String memberNickName, String memberAddr,
			String memberAddr2, String memberAddr3, String memberAddr4, String memberEmail, String memberBirth,
			String memberGender, String memberType, String memberPhone, String memberOriPhotoName,
			String memberRePhotoName, int memberNo) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberNickName = memberNickName;
		this.memberAddr = memberAddr;
		this.memberAddr2 = memberAddr2;
		this.memberAddr3 = memberAddr3;
		this.memberAddr4 = memberAddr4;
		this.memberEmail = memberEmail;
		this.memberBirth = memberBirth;
		this.memberGender = memberGender;
		this.memberType = memberType;
		this.memberPhone = memberPhone;
		this.memberOriPhotoName = memberOriPhotoName;
		this.memberRePhotoName = memberRePhotoName;
		this.memberNo = memberNo;
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberNickName() {
		return memberNickName;
	}
	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}
	public String getMemberAddr() {
		return memberAddr;
	}
	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}
	public String getMemberAddr2() {
		return memberAddr2;
	}
	public void setMemberAddr2(String memberAddr2) {
		this.memberAddr2 = memberAddr2;
	}
	public String getMemberAddr3() {
		return memberAddr3;
	}
	public void setMemberAddr3(String memberAddr3) {
		this.memberAddr3 = memberAddr3;
	}
	public String getMemberAddr4() {
		return memberAddr4;
	}
	public void setMemberAddr4(String memberAddr4) {
		this.memberAddr4 = memberAddr4;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberType() {
		return memberType;
	}
	public void setMemberType(String memberType) {
		this.memberType = memberType;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberOriPhotoName() {
		return memberOriPhotoName;
	}
	public void setMemberOriPhotoName(String memberOriPhotoName) {
		this.memberOriPhotoName = memberOriPhotoName;
	}
	public String getMemberRePhotoName() {
		return memberRePhotoName;
	}
	public void setMemberRePhotoName(String memberRePhotoName) {
		this.memberRePhotoName = memberRePhotoName;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
	
	
}
