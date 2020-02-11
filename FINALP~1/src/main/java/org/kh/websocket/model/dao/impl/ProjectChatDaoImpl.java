package org.kh.websocket.model.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.kh.websocket.model.dao.ProjectChatDao;
import org.kh.websocket.model.vo.ChatDto;
import org.kh.websocket.model.vo.ChatMemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ProjectChatDaoImpl implements ProjectChatDao{
	
	@Autowired
	SqlSession sqlSession;
	

	
	@Override
	public ChatDto checkRoom(String name)throws Exception{
		return sqlSession.selectOne("ProjectChat.getRoom",name);
	}
	
	@Override
	public void createChatRoom(ChatDto dto)throws Exception{
		sqlSession.insert("ProjectChat.createChatRoom",dto);
	}
	
	@Override
	public List<ChatDto>getRoomList()throws Exception{
		return sqlSession.selectList("ProjectChat.getRoomList");
	}
	
	@Override
	public void addRoomMember(ChatMemberDto mem)throws Exception{
		sqlSession.insert("ProjectChat.addRoomMember",mem);
	}
	
	
	@Override
	public ChatMemberDto getRoomMember(ChatMemberDto mem)throws Exception{
		return sqlSession.selectOne("ProjectChat.getRoomMember",mem);
				
	}
	@Override
	public List<ChatMemberDto>sameRoomList(ChatMemberDto mem)throws Exception{
		return sqlSession.selectList("ProjectChat.sameRoomList",mem);
	}
	@Override
	public void updateRoomMember(ChatMemberDto mem)throws Exception{
		sqlSession.update("ProjectChat.updateRoomMember",mem);
	}
	
	@Override
	public void deleteRoomMember(ChatMemberDto mem)throws Exception{
		sqlSession.delete("ProjectChat.deleteRoomMember",mem);
	}
	@Override
	public void updateChatCountInc(ChatDto dto)throws Exception{
		sqlSession.update("ProjectChat.updateChatCountInc",dto);
	}
	@Override
	public void updateChatCountDec(ChatDto dto)throws Exception{
		sqlSession.update("ProjectChat.updateChatCountDec",dto);
	}
	@Override
	public void deleteChat()throws Exception{
		sqlSession.delete("ProjectChat.deleteChat");
	}
	@Override
	public List<ChatDto>searchRoomList(String name)throws Exception{
		return sqlSession.selectList("ProjectChat.searchRoomList",name);
	}
}
