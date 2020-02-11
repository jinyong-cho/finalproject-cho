package org.kh.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.kh.member.model.vo.Idealtype;
import org.kh.member.model.vo.Manager;
import org.kh.member.model.vo.Member;
import org.kh.member.model.vo.MySelfTest;
import org.kh.member.model.vo.Mystyle;
import org.kh.member.model.vo.Payment;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member m) {
		Member member = null;
		member = sqlSession.selectOne("member.selectOneMember", m);
		return member;
	}

	public int insertMember(Member m) {
		return sqlSession.insert("member.insertMember", m);
	}

	public int updatePwMember(Member m) {
		return sqlSession.update("member.updatePwMember", m);
	}

	//

	public Mystyle selectMyStyle(String memberId) {
		return sqlSession.selectOne("myStyle.selectMyStyle", memberId);
	}

	public int addSelfStyle(MySelfTest t) {
		return sqlSession.insert("mySelfTest.insertMySelfTest", t);
	}

	public int insertIdeal(Idealtype i) {

		return sqlSession.insert("idealStyle.insertIdeal", i);
	}

	public int updateIdeal(Idealtype i) {

		return sqlSession.update("idealStyle.updateIdeal", i);
	}

	public Idealtype selectIdealTyep(String memberId) {
		return sqlSession.selectOne("idealStyle.selectOneIdeal", memberId);
	}

	public Idealtype myidealrow(String memberId) {
		Idealtype dto = new Idealtype();
		dto.setMemberId(memberId);
		return sqlSession.selectOne("idealStyle.myidealrow", dto);

	}

	public ArrayList<Mystyle> mystyleall() {
		List<Mystyle> list = sqlSession.selectList("myStyle.mystyleall");
		return (ArrayList<Mystyle>) list;
	}

	public Member selectMemberInfo(Mystyle mystyle) {
		Member m = sqlSession.selectOne("myStyle.selectMemberInfo", mystyle);
		return m;
	}

	public int insertMystyle(Mystyle mse) {
		return sqlSession.insert("myStyle.insertMyStyle", mse);

	}

	public int updateMyStyle(Mystyle mse) {

		return sqlSession.update("myStyle.updateMyStyle", mse);
	}

	public int updateMember(Member m) {
		return sqlSession.update("member.updateMember", m);
	}

	public Mystyle searchMember(String memberId) {
		return sqlSession.selectOne("myStyle.selectMyStyle", memberId);
	}

	public int selectManagerCount() {
		return sqlSession.selectOne("member.selectManagerCount");
	}

	public int insertPayment(Payment p) {
		return sqlSession.insert("member.insertPayment", p);
	}

	public Member selectOneManager(int nextInt) {
		return sqlSession.selectOne("member.selectOneManager", nextInt);
	}

	public void insertManagementMember(Manager managementMember) {
		sqlSession.insert("member.insertManagementMember", managementMember);
	}

	public Manager selectManagementMember(String memberId) {
		return sqlSession.selectOne("member.selectManagementMember", memberId);
	}

	public void updateManagementMember(Payment p) {
		sqlSession.update("member.updateManagementMember", p);
	}

	public List<Payment> selectPaymentList(Member m) {
		return sqlSession.selectList("member.selectPaymentList", m);
	}

	public String selectOneManagerId(Member m) {
		return sqlSession.selectOne("member.selectOneManagerId", m);
	}

	// 전체 정보
	public ArrayList<Member> manageAllMember(int start, int end) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", start);
		map.put("end", end);
		List allMember = sqlSession.selectList("member.manageAllMember", map);
		return (ArrayList<Member>) allMember;
	}

	public int totalCount() {
		return sqlSession.selectOne("member.totalCount");
	}

	public int modifyManager(Member m) {

		return sqlSession.update("member.modifyManager", m);
	}

	public int deleteMember(String memberId) {
		return sqlSession.delete("member.deleteMember", memberId);
	}
}
