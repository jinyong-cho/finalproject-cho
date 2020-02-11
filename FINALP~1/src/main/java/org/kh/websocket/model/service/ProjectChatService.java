package org.kh.websocket.model.service;

import java.util.List;

import org.kh.websocket.model.vo.ChatDto;
import org.kh.websocket.model.vo.ChatMemberDto;

public interface ProjectChatService {

	
	public ChatDto checkRoom(String name)throws Exception;
	
	public void createChatRoom(ChatDto dto)throws Exception;
	
	public List<ChatDto> getRoomList()throws Exception;
	
	public void addRoomMember(ChatMemberDto mem)throws Exception;
	
	public ChatMemberDto getRoomMember(ChatMemberDto mem)throws Exception;
	
	public List<ChatMemberDto>sameRoomList(ChatMemberDto mem)throws Exception;
	
	public void updateRoomMember(ChatMemberDto mem)throws Exception;
	
	public void deleteRoomMember(ChatMemberDto mem)throws Exception;
	
	public void updateChatCountInc(ChatDto dto)throws Exception;
	
	public void updateChatCountDec(ChatDto dto)throws Exception;
	
	public void deleteChat()throws Exception;
	
	public List<ChatDto> searchRoomList(String name)throws Exception;
}
