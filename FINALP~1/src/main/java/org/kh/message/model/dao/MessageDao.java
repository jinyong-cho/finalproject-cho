package org.kh.message.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.message.model.vo.Messagepaging;
import org.kh.message.model.vo.ReciveMessage;
import org.kh.message.model.vo.SendMessage;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository
public class MessageDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;

	public int sendMessage(SendMessage sm) {
		return sqlSession.insert("message.sendMessage", sm);

	}

	public int reciveMessage(ReciveMessage rm) {
		return sqlSession.insert("message.reciveMessage", rm);
	}

	public ArrayList<ReciveMessage> reciveAll(Messagepaging mp) {
		List<ReciveMessage> list = sqlSession.selectList("message.reciveAll", mp);
		return (ArrayList<ReciveMessage>) list;
	}

	public int sendMessageRecive(ReciveMessage rm) {

		return sqlSession.insert("message.reciveMessageRecive", rm);
	}

	public ReciveMessage messageClick(int reciveNo) {
		ReciveMessage rm = null;
		List list = sqlSession.selectList("message.reciveClick", reciveNo);

		if (!list.isEmpty()) {
			rm = (ReciveMessage) list.get(0);
		}
		return rm;

	}

	public int deleteMessage(int reciveNo) {

		return sqlSession.delete("message.deleteMessage", reciveNo);
	}

	public ArrayList<SendMessage> sendAll(Messagepaging mp) {
		List<SendMessage> list = sqlSession.selectList("message.sendAll", mp);
		return (ArrayList<SendMessage>) list;
	}

	public int deleteMessage2(String content) {

		return sqlSession.delete("message.deleteMessage2", content);
	}

	public int sendMessageSend(SendMessage sm) {
		return sqlSession.insert("message.sendMessageSend", sm);

	}

	public int totalcount(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("message.totalcount", memberId);
	}

	public int totalcount2(String memberId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("message.totalcount2", memberId);
	}

}
