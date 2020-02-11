package org.kh.message.model.service;



import java.util.ArrayList;

import org.kh.message.model.dao.MessageDao;
import org.kh.message.model.vo.Messagepaging;
import org.kh.message.model.vo.ReciveMessage;
import org.kh.message.model.vo.SendMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


@Service
public class MessageService {
	
	@Autowired
	@Qualifier("messageDao")
	MessageDao messageDao;

	public int sendMessage(SendMessage sm){
		int result=messageDao.sendMessage(sm);
		
		return result;
		
	}

	public int reciveMessage(ReciveMessage rm) {
		int resultt=messageDao.reciveMessage(rm);
		return resultt;
	}

	public  ArrayList<ReciveMessage> reciveAll(Messagepaging mp) {
		ArrayList<ReciveMessage> rm=messageDao.reciveAll(mp);
		return rm;
	}

	public int sendMessageRecive(ReciveMessage rm) {
		int result=messageDao.sendMessageRecive(rm);
		return result;
	}

	public ReciveMessage messageClick(int reciveNo) {
		return messageDao.messageClick(reciveNo);
	}

	public int deleteMessage(int reciveNo) {
		return messageDao.deleteMessage(reciveNo);
	}

	public ArrayList<SendMessage> sendAll(Messagepaging mp) {
		ArrayList<SendMessage>rm=messageDao.sendAll(mp);
		return rm;
	}

	public int deleteMessage2(String content) {
		return messageDao.deleteMessage2(content);
	}

	public int sendMessageSend(SendMessage sm) {
		int result=messageDao.sendMessageSend(sm);
		return result;
	}

	public int totalcount(String memberId) {
		return messageDao.totalcount(memberId);
	}
	
	public int totalcount2(String memberId) {
		return messageDao.totalcount2(memberId);
	}





	

	


	
}
