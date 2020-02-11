package org.kh.message.model.vo;


import java.util.logging.LogManager;

import org.apache.ibatis.session.SqlSession;

import org.kh.message.model.dao.MessageDao;
import org.kh.websocket.model.vo.WebSocket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
@Repository
public class MessageWebsocket extends TextWebSocketHandler {
	
	 @Autowired
		SqlSession sqlsession;
	 
	 

	
		private static final Logger logger = LoggerFactory.getLogger(WebSocket.class);
		
		
		//웹 소켓 연결이 종료되고 나서 서버단에서 실행해야할 일들을 정의해주는 메소드
		  @Override
			public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
				
			}
		  //연결이 성사돠고나서 해야할 일들
		  @Override
			public void afterConnectionEstablished(WebSocketSession session) throws Exception {
				
			}
		 // 연결이 성사 되고 나서 해야할 일들.
		  @Override
			protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
			
		  }
		
		  
}
		//현재 수신자에게 몇개의 메세지가 와있는지 디비에서 검색함.

		//  웹소켓 서버단으로 메세지가 도착했을때 해주어야할 일들을 정의하는 메소드 입니다
		/*  @Override
			protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
				ReciveMessage msg = sqlsession.getMapper(ReciveMessage.class);
				this.logger.info(message.getPayload());
				session.sendMessage(new TextMessage(msg.count_receive_note(message.getPayload()))); 
					//현재 수신자에게 몇개의 메세지가 와있는지 디비에서 검색함.
*/



