package org.kh.websocket.model.service.impl;

import java.util.List;

import org.kh.websocket.model.dao.ProjectChatDao;
import org.kh.websocket.model.service.ProjectChatService;
import org.kh.websocket.model.vo.ChatDto;
import org.kh.websocket.model.vo.ChatMemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectChatServiceImpl implements ProjectChatService {
	
	@Autowired
	ProjectChatDao projectChatDao;
	
	@Override
	public ChatDto checkRoom(String name)throws Exception{
		return projectChatDao.checkRoom(name);
	}
	
	@Override
	public void createChatRoom(ChatDto dto)throws Exception{
		projectChatDao.createChatRoom(dto);
	}
	
	@Override
	public List<ChatDto>getRoomList()throws Exception{
		return projectChatDao.getRoomList();
	}
	
	@Override
	public void addRoomMember(ChatMemberDto mem)throws Exception{
		projectChatDao.addRoomMember(mem);
	}
	
	@Override
	public ChatMemberDto getRoomMember(ChatMemberDto mem)throws Exception{
		return projectChatDao.getRoomMember(mem);
	}
	
	@Override
	public List<ChatMemberDto>sameRoomList(ChatMemberDto mem)throws Exception{
		return projectChatDao.sameRoomList(mem);
	}
	
	@Override
	public void updateRoomMember(ChatMemberDto mem)throws Exception{
		projectChatDao.updateRoomMember(mem);
	}
	
	@Override
	public void deleteRoomMember(ChatMemberDto mem)throws Exception{
		projectChatDao.deleteRoomMember(mem);
	}
	
	@Override
	public void updateChatCountInc(ChatDto dto)throws Exception{
		projectChatDao.updateChatCountInc(dto);
	}
	
	@Override
	public void updateChatCountDec(ChatDto dto)throws Exception{
		projectChatDao.updateChatCountDec(dto);
	}
	
	@Override
	public void deleteChat()throws Exception{
		projectChatDao.deleteChat();
	}
	
	@Override
	public List<ChatDto>searchRoomList(String name)throws Exception{
		return projectChatDao.searchRoomList(name);
	}
	

}
