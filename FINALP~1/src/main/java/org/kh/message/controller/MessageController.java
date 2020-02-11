package org.kh.message.controller;



import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;


import org.kh.member.model.vo.Member;

import org.kh.message.model.service.MessageService;
import org.kh.message.model.vo.Messagepaging;
import org.kh.message.model.vo.ReciveMessage;
import org.kh.message.model.vo.SendMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MessageController {
	
	@Autowired
	@Qualifier("messageService")
	MessageService messageService;
	
	@RequestMapping("/sendMessage.do")
	//index에서 쪽지보내기로 이동
	public String sendTo(HttpServletRequest request,Model model, String reciveId) {
		System.out.println(reciveId);
		if(reciveId !=null) {
			model.addAttribute("reciveId", reciveId);
		}
		return "message/sendmessage";
	}
	
	@RequestMapping("/send.do")
	//쪽지보내기버튼누르면
	public String sendMessage(HttpServletRequest request) {
		String sendId=request.getParameter("sendId");
		String reciveId=request.getParameter("reciveId");
		String content=request.getParameter("content");
		System.out.println(sendId);
		System.out.println(reciveId);
		System.out.println(content);
		
		SendMessage sm=new SendMessage();
		sm.setSendId(sendId);
		sm.setReciveId(reciveId);
		sm.setContent(content);
		
		ReciveMessage rm=new ReciveMessage();
		rm.setReciveId(reciveId);
		rm.setSendId(sendId);
		rm.setContent(content);
		
		int result=messageService.sendMessage(sm);
		int resultt=messageService.reciveMessage(rm);
		if(result>0 && resultt>0) {
			return "redirect:/sendMessagelist.do";
		}else {
			return "message/sendmessage";
		}
	}
		
	@RequestMapping("/reciveMessage.do")
	//index에서 받은쪽지함가기
	public String reciveTo(HttpServletRequest request,Model model) {
		Member login=(Member)request.getSession().getAttribute("member");
		String memberId=login.getMemberId();
		System.out.println(login);
		
		int currentPage=0;
		if(request.getParameter("currentPage")==null) {
			currentPage=1;
		}else {
			currentPage=Integer.parseInt(request.getParameter("currentPage"));
		}
		//현재페이지 
		
		int start=(currentPage-1)*10+1;
		//게시물 1번
		
		int end=start+9;
		
		//게시물 10번까지 
		
		int totalcount=0;
		
		int total=messageService.totalcount(memberId);
		//총 게시물수 
		
		int totalpage=0;
		
		if(total%10==0) {
			totalpage=total/10;
		}else {
			totalpage=total/10+1;
		}
		//총게시물이 10개가넘어가면 페이지를 1개더만들어준다.
		//아래 페이지 총수 13페이지가끝이면 13
		int startpage=(currentPage-1)/5+1;
		
		//시작페이지  ex) 1 2 3 4 5  1이 스타트 5가 엔드
		
		int endpage=0;
		
		if(totalpage-currentPage<5) {
			endpage=totalpage;
		}else {
			endpage=startpage+4;
		}
		StringBuilder builer=new StringBuilder();
		for(int i=startpage; i<=endpage; i++) {
			builer.append("<a href='/reciveMessage.do?currentPage="+i+"'>"+i+"</a>");
			//<a href='/boardList?currentPage=i'>i</a>
		}
		// 아래 페이지를 눌르면 url창에 현재페이지가 몇번인지 알려줌
		String page=builer.toString();
		
		request.setAttribute("page", page);
		
		
		Messagepaging mp=new Messagepaging();
		mp.setStart(start);
		mp.setEnd(end);
		mp.setMemberId(memberId);
		
		
		ArrayList<ReciveMessage> rm=messageService.reciveAll(mp);
		System.out.println(rm);
		if(rm != null) {
			model.addAttribute("rm",rm);
			model.addAttribute("page",page);
		
			return "message/recivemessage";
		}else {
			return "redirect:/login.do";
		}
}
		
		@RequestMapping("/sendrecive.do")
		//답장하기 후 쪽지전송
		public String sendRecive(HttpServletRequest request) {
			
			String sendId=request.getParameter("sendId");
			String reciveId=request.getParameter("reciveIdd");
			String content=request.getParameter("content");
			System.out.println(sendId);
			System.out.println(reciveId);
			System.out.println(content);
			
			
			SendMessage sm=new SendMessage();
			sm.setSendId(sendId);
			sm.setReciveId(reciveId);
			sm.setContent(content);
			
			ReciveMessage rm=new ReciveMessage();
			rm.setReciveId(reciveId);
			rm.setSendId(sendId);
			rm.setContent(content);
			
			
			
			int resultt=messageService.sendMessageSend(sm);   //요기
			int result=messageService.sendMessageRecive(rm);
			
			
			if(result>0  && resultt>0) {
				return "redirect:/";
			}else {
				return "message/sendmessage";
			}
		}
		
		@RequestMapping("/MessageClick.do")
		//내용클릭시 이동
		public String MessageClick(Model model,int reciveNo) {
			 
			ReciveMessage rm= messageService.messageClick(reciveNo);
	
			if(rm!=null) {
				model.addAttribute("rm",rm);
				
				return "message/recivemessagelist";
			}else {
				return "redirect:/login.do";
			}
			
		}
		
		@RequestMapping("/deleteMessage.do")
		public String deleteMessage(Model model,int reciveNo,HttpServletRequest request) {
			
			Member login=(Member)request.getSession().getAttribute("member");
			
			int result=messageService.deleteMessage(reciveNo);
			
			if(result>0&&login!=null) {
				return "redirect:/";
				/*return "message/recivemessage";*/
			}else {
				return "redirect:/";
			}
		}
		
		@RequestMapping("/sendMessagelist.do")
		public String sendMessageList(HttpServletRequest request,Model model) {
				Member login=(Member)request.getSession().getAttribute("member");
				
				String memberId=login.getMemberId();
				
				
				
				System.out.println(login);
			
				int currentPage=0;
				if(request.getParameter("currentPage")==null) {
					currentPage=1;
				}else {
					currentPage=Integer.parseInt(request.getParameter("currentPage"));
				}
				//현재페이지 
				
				int start=(currentPage-1)*10+1;
				//게시물 1번
				
				int end=start+9;
				
				//게시물 10번까지 
				
				int totalcount=0;
				
				int total=messageService.totalcount2(memberId);
				//총 게시물수 
				
				int totalpage=0;
				
				if(total%10==0) {
					totalpage=total/10;
				}else {
					totalpage=total/10+1;
				}
				//총게시물이 10개가넘어가면 페이지를 1개더만들어준다.
				//아래 페이지 총수 13페이지가끝이면 13
				int startpage=(currentPage-1)/5+1;
				
				//시작페이지  ex) 1 2 3 4 5  1이 스타트 5가 엔드
				
				int endpage=0;
				
				if(totalpage-currentPage<5) {
					endpage=totalpage;
				}else {
					endpage=startpage+4;
				}
				StringBuilder builer=new StringBuilder();
				for(int i=startpage; i<=endpage; i++) {
					builer.append("<a href='/sendMessagelist.do?currentPage="+i+"'>"+i+"</a>");
					//<a href='/boardList?currentPage=i'>i</a>
				}
				// 아래 페이지를 눌르면 url창에 현재페이지가 몇번인지 알려줌
				String page=builer.toString();
				
				request.setAttribute("page", page);
				
				
				Messagepaging mp=new Messagepaging();
				mp.setMemberId(memberId);
				mp.setEnd(end);
				mp.setStart(start);
				
				
			ArrayList<SendMessage> rm=messageService.sendAll(mp);
			
			if(rm != null) {
				model.addAttribute("rm",rm);
				model.addAttribute("page",page);
				return "message/sendmessagelist";
			}else {
				return "redirect:/login.do";
			}
		}
		
		@RequestMapping("/deleteMessage2.do")
		public String deleteMessage2(Model model,String content,HttpServletRequest request) {
			
			Member login=(Member)request.getSession().getAttribute("member");
			
			int result=messageService.deleteMessage2(content);
			
			if(result>0) {
				return "redirect:/";
				/*return "message/sendmessagelist";*/
			}else {
				return "redirect:/";
			}
		}
		
	
	
	
		
		
	


	


	
	
}
