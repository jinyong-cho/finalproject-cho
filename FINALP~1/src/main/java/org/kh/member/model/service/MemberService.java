package org.kh.member.model.service;

import java.util.ArrayList;

import org.kh.member.model.dao.MemberDao;
import org.kh.member.model.vo.Idealtype;
import org.kh.member.model.vo.Manager;
import org.kh.member.model.vo.Member;
import org.kh.member.model.vo.MemberPageData;
import org.kh.member.model.vo.MySelfTest;
import org.kh.member.model.vo.Mystyle;
import org.kh.member.model.vo.Payment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	@Qualifier("memberDao")
	MemberDao memberDao;

	public Member selectOneMember(Member m) {
		return memberDao.selectOneMember(m);
	}

	public int insertMember(Member m) {
		return memberDao.insertMember(m);
	}

	public int updatePwMember(Member m) {
		return memberDao.updatePwMember(m);
	}

	//

	public Mystyle addMystyle(String memberId) {
		return memberDao.selectMyStyle(memberId);
	}

	public int selfTest(MySelfTest t) {
		int result = memberDao.addSelfStyle(t);
		return result;
	}

	public int insertIdeal(Idealtype i) {
		int result = memberDao.insertIdeal(i);
		return result;
	}

	public int updateIdeal(Idealtype i) {
		int result = memberDao.updateIdeal(i);
		return result;
	}

	public Idealtype addIdealStyle(String memberId) {
		return memberDao.selectIdealTyep(memberId);
	}

	public Idealtype myidealrow(String memberId) {
		return memberDao.myidealrow(memberId);
	}

	public ArrayList<Mystyle> mystyleall() {

		return memberDao.mystyleall();
	}

	public ArrayList<Member> selectMemberInfo(ArrayList<Mystyle> fianlyideal) {
		ArrayList<Member> list = new ArrayList<Member>();
		for (int i = 0; i < fianlyideal.size(); i++) {
			Member m = memberDao.selectMemberInfo(fianlyideal.get(i));
			list.add(m);
		}
		return list;
	}

	public int insertMystyle(Mystyle mse) {
		int result = memberDao.insertMystyle(mse);
		return result;
	}

	public int updateMyStyle(Mystyle mse) {
		int result = memberDao.updateMyStyle(mse);
		return result;
	}

	public int updateMember(Member m) {
		return memberDao.updateMember(m);
	}

	public Mystyle searchMystyle(String memberId) {
		return memberDao.searchMember(memberId);
	}

	public Idealtype searchIdealStyle(String memberId) {
		return memberDao.selectIdealTyep(memberId);
	}

	public int selectManagerCount() {
		return memberDao.selectManagerCount();
	}

	public int insertPayment(Payment p) {
		return memberDao.insertPayment(p);
	}

	public Member selectOneManager(int nextInt) {
		return memberDao.selectOneManager(nextInt);
	}

	public void insertManagementMember(Manager managementMember) {
		memberDao.insertManagementMember(managementMember);
	}

	public Manager selectManagementMember(String memberId) {
		return memberDao.selectManagementMember(memberId);
	}

	public void updateManagementMember(Payment p) {
		memberDao.updateManagementMember(p);
	}

	public ArrayList<Payment> selectPaymentList(Member m) {
		return (ArrayList<Payment>)memberDao.selectPaymentList(m);
	}

	public String selectOneManagerId(Member m) {
		return memberDao.selectOneManagerId(m);
	}
	
	public MemberPageData manageAllMember(int currentPage) {
		int recordCountPerPage = 10;
		int start = (currentPage - 1) * recordCountPerPage + 1;
		int end = currentPage * recordCountPerPage;

		ArrayList<Member> mlist = memberDao.manageAllMember(start, end);
		int totalCount = memberDao.totalCount();

		int totalPage = 0;
		if (totalCount % recordCountPerPage == 0) {
			totalPage = totalCount / recordCountPerPage;
		} else {
			totalPage = totalCount / recordCountPerPage + 1;
		}
		int pageNaviSize = 5;

		int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
		int endNavi = startNavi + pageNaviSize - 1;
		if (endNavi > totalPage) {
			endNavi = totalPage;
		}
		StringBuilder sb = new StringBuilder();

		if (startNavi != 1) {
			sb.append("<a href='/manageAllMember.do?currentPage=" + (startNavi - 1) + "'>[prev]</a>");
		}
		for (int i = startNavi; i <= endNavi; i++) {
			if (i != currentPage) {
				sb.append("<a href='/manageAllMember.do?currentPage=" + i + "'>" + i + "</a>");
			} else {
				sb.append("<span>" + i + "</span>");//a태그를 사용하면 현재 페이지도 눌러짐
			}
		}
		if (endNavi != totalPage) {
			sb.append("<a href='/manageAllMember.do?currentPage=" + (endNavi + 1) + "'>[next]</a>");
		}
		MemberPageData mpd = new MemberPageData(mlist, sb.toString());
		return mpd;
	}

	public int modifyManager(Member m) {
		int result = memberDao.modifyManager(m);
		return result;
	}

	public int deleteMember(String memberId) {
		return memberDao.deleteMember(memberId);
	}
	
}
