package org.kh.member.controller;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.security.*;
import java.io.*;
import java.net.*;

import org.kh.member.model.service.MemberService;
import org.kh.member.model.vo.Idealtype;
import org.kh.member.model.vo.Manager;
import org.kh.member.model.vo.Member;
import org.kh.member.model.vo.MemberPageData;
import org.kh.member.model.vo.MySelfTest;
import org.kh.member.model.vo.Mystyle;
import org.kh.member.model.vo.Payment;
import org.kh.member.model.vo.SMTPAuthenticator;
import org.kh.review.model.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.google.gson.Gson;

import net.sf.json.JSONObject;

@Controller
public class MemberController {

	@Autowired
	@Qualifier("memberService")
	MemberService memberService;

	@Autowired
	@Qualifier("reviewService")
	ReviewService reviewService;
	
	@RequestMapping("/index.do")
	public String index() {
		return "redirect:/";
	}
	
	@RequestMapping("/terms.do")
	public String terms() {
		return "member/terms";
	}

	@RequestMapping("/loginFrm.do")
	public String loginFrm() {
		return "member/login";
	}

	@RequestMapping("/login.do")
	public String loginMember(HttpServletRequest request, Model model) {
		Member m = new Member();
		m.setMemberId(request.getParameter("loginMemberId"));
		m.setMemberPw(request.getParameter("loginMemberPw"));
		Member member = memberService.selectOneMember(m);
		HttpSession session = request.getSession();
		session.setAttribute("member", member);

		String referer = request.getHeader("Referer");
		System.out.println(referer);
		/* return "redirect:" + referer; */
		if (member != null) {
			model.addAttribute("msg", "로그인에 성공하셨습니다.");
		} else {
			model.addAttribute("msg", "아이디와 비밀번호를 확인해주세요.");
		}
		model.addAttribute("loc", referer);
		return "common/msg";
	}

	@RequestMapping("/enrollFrm.do")
	public String enrollFrm() {
		return "member/enrollFrm";
	}

	@RequestMapping("/enroll.do")
	public String enrollMember(HttpServletRequest request, Model model) {
		Member m = new Member();
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		System.out.println(root);
		String saveDirectory = root + "upload/photo";
		System.out.println(saveDirectory);
		int maxSize = 1024 * 1024 * 10;

		File directory = new File(saveDirectory);
		if (!directory.exists()) {
			directory.mkdirs();
		}

		try {
			MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
					new DefaultFileRenamePolicy());
			m.setMemberId(mRequest.getParameter("memberId"));
			m.setMemberPw(mRequest.getParameter("memberPw"));
			m.setMemberName(mRequest.getParameter("memberName"));
			m.setMemberNickName(mRequest.getParameter("memberNickName"));
			m.setMemberAddr(mRequest.getParameter("memberAddr"));
			m.setMemberAddr2(mRequest.getParameter("memberAddr2"));
			m.setMemberAddr3(mRequest.getParameter("memberAddr3"));
			m.setMemberAddr4(mRequest.getParameter("memberAddr4"));
			m.setMemberEmail(mRequest.getParameter("memberEmail"));
			m.setMemberBirth(mRequest.getParameter("memberBirth"));
			m.setMemberGender(mRequest.getParameter("memberGender"));
			m.setMemberType(mRequest.getParameter("memberType"));
			m.setMemberPhone(mRequest.getParameter("memberPhone"));
			m.setMemberOriPhotoName(mRequest.getOriginalFileName("up_file")); // 파일 오리지널네임
			m.setMemberRePhotoName(mRequest.getFilesystemName("up_file")); // 파일 리네임

		} catch (IOException e) {
			e.printStackTrace();
		}

		int result = memberService.insertMember(m);

		if (result > 0) {
			model.addAttribute("msg", "회원가입에 성공하셨습니다.");
			model.addAttribute("loc", "/index.do");
			return "common/msg";
		} else {
			// 데이터베이스에 넣는걸 실패하면 업로드된 이미지를 삭제
			System.out.println(saveDirectory + "/" + m.getMemberRePhotoName());
			File deFile = new File(saveDirectory + "/" + m.getMemberRePhotoName());
			deFile.delete();
			if (!directory.exists()) {
				directory.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
			}
			return "member/error";
		}
	}

	@RequestMapping("/memberUpdate.do")
	public String memberUpdate(HttpServletRequest request) {
		Member m = new Member();
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		System.out.println(root);
		String saveDirectory = root + "upload/photo";
		System.out.println(saveDirectory);
		int maxSize = 1024 * 1024 * 10;

		File directory = new File(saveDirectory);
		if (!directory.exists()) {
			directory.mkdirs();
		}

		try {
			MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			String oldProfileOriginalFilename = mRequest.getParameter("oldOriFilename");
			String oldProfileRenameFilename = mRequest.getParameter("oldReFilename");
			String newProfileOriginalFilename = mRequest.getOriginalFileName("up_file");
			String newProfileRenameFilename = mRequest.getFilesystemName("up_file");
			String oldMemberPw = mRequest.getParameter("oldMemberPw");
			String newMemberPw = mRequest.getParameter("newMemberPw");
			File upFile = mRequest.getFile("up_file");
			String oldProfilePath = saveDirectory + "/" + oldProfileRenameFilename;
			if (upFile != null && upFile.length() > 0) {
				// 프로필 사진이 변경됬다면!
				if (oldProfileOriginalFilename != null && oldProfileRenameFilename != null) { // 기존에 프로필사진이 존재했어?
					File defile = new File(oldProfilePath);
					defile.delete();
					if (!directory.exists()) {
						directory.mkdirs();
					}
				}
			} else { // 생략 프로필 사진을 변경하지않았다면..
				// 기존에 프로필 사진이 존재했고 변경하지않았다면
				newProfileOriginalFilename = oldProfileOriginalFilename;
				newProfileRenameFilename = oldProfileRenameFilename;
			}
			
			// 비밀번호가 변경되었다면?
			if (newMemberPw != null && newMemberPw.length() > 0) {

			} else {
				System.out.println("oldMemberPw : " + oldMemberPw);
				System.out.println("newMemberPw : " + newMemberPw);
				newMemberPw = oldMemberPw;
			}
			m.setMemberId(mRequest.getParameter("memberId"));
			m.setMemberPw(newMemberPw);
			m.setMemberName(mRequest.getParameter("memberName"));
			m.setMemberNickName(mRequest.getParameter("memberNickName"));
			m.setMemberOriPhotoName(newProfileOriginalFilename);
			m.setMemberRePhotoName(newProfileRenameFilename);
			m.setMemberAddr(mRequest.getParameter("memberAddr"));
			m.setMemberAddr2(mRequest.getParameter("memberAddr2"));
			m.setMemberAddr3(mRequest.getParameter("memberAddr3"));
			m.setMemberAddr4(mRequest.getParameter("memberAddr4"));
			m.setMemberGender(mRequest.getParameter("memberGender"));
			m.setMemberBirth(mRequest.getParameter("memberBirth"));
			m.setMemberEmail(mRequest.getParameter("memberEmail"));
			m.setMemberPhone(mRequest.getParameter("memberPhone"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int result = memberService.updateMember(m);
		if (result > 0) {
			HttpSession session = request.getSession();
			session.setAttribute("member", m);
			return "member/myPageMain";
		}
		return "member/error";
	}

	@RequestMapping("/deleteMember.do")
	public String deleteMember(HttpSession session, HttpServletRequest request, Model model, String deleteMemberId) {
		Member m = (Member)session.getAttribute("member");
		String memberId = m.getMemberId();
		if(deleteMemberId != null) {
			memberId = deleteMemberId;
		}
		
		String root = request.getSession().getServletContext().getRealPath("/resources/");
		String saveDirectory = root + "upload/photo";
		File directory = new File(saveDirectory);
		
		// 회원 탈퇴시 데배는 알아서 cascade로 연계삭제됨 하지만 업로드된 사진들은 upload폴더에 남아있음 그걸 지워주는 과정을 아래 작성할거임
		String profile = m.getMemberRePhotoName();
		ArrayList<String> reviewCoverList = reviewService.searchProfile(memberId);
		ArrayList<String> reviewContentList = reviewService.searchContentList(memberId);
		
		if(profile != null) {
			File deFile = new File(saveDirectory + "/" + profile);
			deFile.delete();
		}
		
		if(!reviewCoverList.isEmpty()) {
			for(String reviewCover : reviewCoverList) {
				File deFile = new File(saveDirectory + "/" + reviewCover);
				deFile.delete();
				if(!directory.exists()) {
					directory.mkdirs();
				}
			}
		}
		
		if(!reviewContentList.isEmpty()) {
			for(String reviewContent : reviewContentList) {
				Pattern reviewPattern = Pattern.compile("(?i)src[a-zA-Z0-9_.\\-%&=?!:;@\"'/]*");
				Matcher reviewMatcher = reviewPattern.matcher(reviewContent);
			
				while (reviewMatcher.find()) {
					String imgOnePath = reviewMatcher.group(); // 경로명을 따온거
					System.out.println("경로명 : " + imgOnePath);
					String[] imgOne = imgOnePath.substring(0, imgOnePath.length() - 1).split("/"); // 경로명에서 파일명만 때내려고 사용
					System.out.println("파일명 : " + imgOne[imgOne.length - 1]);
					File deFile = new File(saveDirectory + "/" + imgOne[imgOne.length - 1]);
					deFile.delete();
					if (!directory.exists()) {
						directory.mkdirs(); // 디렉토리가 존재하지 않는다면 생성
					}
				}
			}
		}
		
		int result = memberService.deleteMember(memberId);
		if(result>0) {
			if(deleteMemberId != null) {
				model.addAttribute("msg", "회원삭제에 성공하셨습니다.");
			} else {
				model.addAttribute("msg", "회원탈퇴에 성공하셨습니다.");
			}
		} else {
			if(deleteMemberId != null) {
				model.addAttribute("msg", "회원삭제에 실패하셨습니다.");
			} else {
				model.addAttribute("msg", "회원탈퇴에 실패하셨습니다.");
			}
		}
		model.addAttribute("loc", "/index.do");
		return "common/msg";
	}
	
	@RequestMapping("/logout.do")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@ResponseBody // 이건 .jsp 이런거 안붙는 순수 데이터를 리턴해주는 메소드야 라고 선언해주는거
	@RequestMapping("/idCheck.do")
	public String idCheck(HttpServletRequest request) {
		String memberId = request.getParameter("memberId");
		Member m = new Member();
		m.setMemberId(memberId);
		System.out.println(memberId);
		Member member = memberService.selectOneMember(m);

		JSONObject obj = new JSONObject();
		if (member != null) {
			System.out.println("1");
			obj.put("result", "1");
		} else {
			obj.put("result", "0");
		}
		return new Gson().toJson(obj);
	}

	@ResponseBody
	@RequestMapping("/nickNameCheck.do")
	public String nickCheck(HttpServletRequest request) {
		String memberNickName = request.getParameter("memberNickName");
		Member m = new Member();
		m.setMemberNickName(memberNickName);
		Member member = memberService.selectOneMember(m);
		JSONObject obj = new JSONObject();
		if (member != null) {
			System.out.println("1");
			obj.put("result", "1");
		} else {
			obj.put("result", "0");
		}
		return new Gson().toJson(obj);
	}

	@ResponseBody
	@RequestMapping("/emailCheck.do")
	public String emailCheck(HttpServletRequest request) {
		String memberEmail = request.getParameter("memberEmail");
		Member m = new Member();
		m.setMemberEmail(memberEmail);
		Member member = memberService.selectOneMember(m);
		JSONObject obj = new JSONObject();
		if (member != null) {
			System.out.println("1");
			obj.put("result", "1");
		} else {
			obj.put("result", "0");
		}
		return new Gson().toJson(obj);
	}

	@ResponseBody
	@RequestMapping("/phoneCheck.do")
	public String phoneCheck(HttpServletRequest request) {
		String memberPhone = request.getParameter("memberPhone");
		Member m = new Member();
		m.setMemberPhone(memberPhone);
		Member member = memberService.selectOneMember(m);
		JSONObject obj = new JSONObject();
		if (member != null) {
			System.out.println("1");
			obj.put("result", "1");
		} else {
			obj.put("result", "0");
		}
		return new Gson().toJson(obj);
	}

	@ResponseBody // 이건 .jsp 이런거 안붙는 순수 데이터를 리턴해주는 메소드야 라고 선언해주는거
	@RequestMapping("/sendMail.do")
	public void sendMail(HttpServletRequest request, HttpServletResponse response) {
		// 이메일 인증할거얌
		String email = request.getParameter("email");
		System.out.println(email);

		// 여기까지는 성공을하는디
		Random r = new Random();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < 6; i++) {
			sb.append(r.nextInt(10));
		}
		System.out.println(sb.toString());

		try {
			String mail_to = "회원님 안녕하세요 ㅎㅎ" + "<" + email + ">"; // 받을사람 메일
			String mail_from = "케미스트리<admin@83rpm.com>"; // 보내는사람 메일 설정하는거

			// 인코딩 문제 발생시 이곳에서 해결하시오~
			mail_from = new String(mail_from.getBytes("UTF-8"), "8859_1");
			mail_to = new String(mail_to.getBytes("UTF-8"), "8859_1");

			System.out.println(mail_to);
			Properties props = new Properties(); // 정보를 담기 위한 객체

			// SMTP 서버 정보 설정
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", 465);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
			// 메일 보낼때 통신 설정
			Authenticator auth = new SMTPAuthenticator(); // 메일을보내려면 로그인은해야지.. 라는 느낌

			// 세션 생성
			Session sess = Session.getDefaultInstance(props, auth); // props: 통신설정한값 auth:메일 인증정보(로그인할때 아이디패스워드) 두개가
																	// 필요함.
			MimeMessage msg = new MimeMessage(sess);

			response.setContentType("text/html; charset=utf-8");
			msg.setFrom(new InternetAddress(mail_from));// 발신자
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email)); // 수신자
			msg.setSubject("연애인人비밀번호 설정 메일 입니다.", "UTF-8"); // 제목
			msg.setContent("<h1>안녕하세요.연애인입니다.</h2> <h3>인증번호는[" + sb.toString() + "]</h3>",
					"text/html; charset=UTF-8"); // 보낼메일 셋팅
			Transport.send(msg);// 실제로 보내는 것
			response.getWriter().print(sb.toString());
		} catch (Exception e) {
			System.out.println("test : " + e.getMessage());
			try {
				response.getWriter().print("3");
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}

	@RequestMapping("/calljson.do")
	public String dkdk3() {
		return "member/calljson";
	}

	public static String nullcheck(String str, String Defaultvalue) throws Exception {
		String ReturnDefault = "";
		if (str == null) {
			ReturnDefault = Defaultvalue;
		} else if (str == "") {
			ReturnDefault = Defaultvalue;
		} else {
			ReturnDefault = str;
		}
		return ReturnDefault;
	}

	public static String base64Encode(String str) throws java.io.IOException {
		sun.misc.BASE64Encoder encoder = new sun.misc.BASE64Encoder();
		byte[] strByte = str.getBytes();
		String result = encoder.encode(strByte);
		return result;
	}

	public static String base64Decode(String str) throws java.io.IOException {
		sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();
		byte[] strByte = decoder.decodeBuffer(str);
		String result = new String(strByte);
		return result;
	}

	@ResponseBody
	@RequestMapping("/sendSMS.do")
	public void snedSMS(HttpServletRequest request, HttpServletResponse response) {
		String charsetType = "UTF-8"; // EUC-KR 또는 UTF-8

		Random r = new Random();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < 6; i++) {
			sb.append(r.nextInt(10));
		}
		System.out.println(sb.toString());

		try {
			request.setCharacterEncoding(charsetType);
		} catch (UnsupportedEncodingException e4) {
			// TODO Auto-generated catch block
			e4.printStackTrace();
		}
		response.setCharacterEncoding(charsetType);
		response.setContentType("text/html; charset=utf-8");
		try {
			String action = nullcheck(request.getParameter("action"), "");
			if (action.equals("go")) {

				// base64 url값넘어갈떄 인코딩하는방법
				String sms_url = "";
				sms_url = "http://sslsms.cafe24.com/sms_sender.php"; // SMS 전송요청 URL
				String user_id = base64Encode("kimby1219"); // SMS아이디
				String secure = base64Encode("21cadd0a880f6264281d97c2584ef3e2");// 인증키
				String msg = base64Encode(nullcheck(request.getParameter("msg"), ""));
				msg = base64Encode("인증번호는 [" + sb.toString() + "] 입니다.");

				String rphone = base64Encode(nullcheck(request.getParameter("rphone"), ""));
				String sphone1 = base64Encode(nullcheck(request.getParameter("sphone1"), "010"));
				String sphone2 = base64Encode(nullcheck(request.getParameter("sphone2"), "5388"));
				String sphone3 = base64Encode(nullcheck(request.getParameter("sphone3"), "8918"));
				String rdate = base64Encode(nullcheck(request.getParameter("rdate"), ""));
				String rtime = base64Encode(nullcheck(request.getParameter("rtime"), ""));
				String mode = base64Encode("1");
				String subject = "";
				if (nullcheck(request.getParameter("smsType"), "").equals("L")) {
					subject = base64Encode(nullcheck(request.getParameter("subject"), ""));
				}
				String testflag = base64Encode(nullcheck(request.getParameter("testflag"), ""));
				String destination = base64Encode(nullcheck(request.getParameter("destination"), ""));
				String repeatFlag = base64Encode(nullcheck(request.getParameter("repeatFlag"), ""));
				String repeatNum = base64Encode(nullcheck(request.getParameter("repeatNum"), ""));
				String repeatTime = base64Encode(nullcheck(request.getParameter("repeatTime"), ""));
				String returnurl = nullcheck(request.getParameter("returnurl"), "");
				String nointeractive = nullcheck(request.getParameter("nointeractive"), "");
				String smsType = base64Encode(nullcheck(request.getParameter("smsType"), ""));

				String[] host_info = sms_url.split("/");
				String host = host_info[2];
				String path = "/" + host_info[3];
				int port = 80;

				// 데이터 맵핑 변수 정의
				String arrKey[] = new String[] { "user_id", "secure", "msg", "rphone", "sphone1", "sphone2", "sphone3",
						"rdate", "rtime", "mode", "testflag", "destination", "repeatFlag", "repeatNum", "repeatTime",
						"smsType", "subject" };
				String valKey[] = new String[arrKey.length];
				valKey[0] = user_id;
				valKey[1] = secure;
				valKey[2] = msg;
				valKey[3] = rphone;
				valKey[4] = sphone1;
				valKey[5] = sphone2;
				valKey[6] = sphone3;
				valKey[7] = rdate;
				valKey[8] = rtime;
				valKey[9] = mode;
				valKey[10] = testflag;
				valKey[11] = destination;
				valKey[12] = repeatFlag;
				valKey[13] = repeatNum;
				valKey[14] = repeatTime;
				valKey[15] = smsType;
				valKey[16] = subject;

				String boundary = "";
				Random rnd = new Random();
				String rndKey = Integer.toString(rnd.nextInt(32000));
				try {
					MessageDigest md = MessageDigest.getInstance("MD5");
					byte[] bytData = rndKey.getBytes();
					md.update(bytData);
					byte[] digest = md.digest();
					for (int i = 0; i < digest.length; i++) {
						boundary = boundary + Integer.toHexString(digest[i] & 0xFF);
					}
					boundary = "---------------------" + boundary.substring(0, 11);

					// 본문 생성
					String data = "";
					String index = "";
					String value = "";
					for (int i = 0; i < arrKey.length; i++) {
						index = arrKey[i];
						value = valKey[i];
						data += "--" + boundary + "\r\n";
						data += "Content-Disposition: form-data; name=\"" + index + "\"\r\n";
						data += "\r\n" + value + "\r\n";
						data += "--" + boundary + "\r\n";
					}

					// out.println(data);

					try {
						InetAddress addr = InetAddress.getByName(host);
						Socket socket = new Socket(host, port);

						// 헤더 전송
						BufferedWriter wr = new BufferedWriter(
								new OutputStreamWriter(socket.getOutputStream(), charsetType));
						wr.write("POST " + path + " HTTP/1.0\r\n");
						wr.write("Content-Length: " + data.length() + "\r\n");
						wr.write("Content-type: multipart/form-data, boundary=" + boundary + "\r\n");
						wr.write("\r\n");

						// 데이터 전송
						wr.write(data);
						wr.flush();

						// 결과값 얻기
						BufferedReader rd = new BufferedReader(
								new InputStreamReader(socket.getInputStream(), charsetType));
						String line;
						String alert = "";
						ArrayList tmpArr = new ArrayList();
						while ((line = rd.readLine()) != null) {
							tmpArr.add(line);
						}
						wr.close();
						rd.close();

						String tmpMsg = (String) tmpArr.get(tmpArr.size() - 1);
						String[] rMsg = tmpMsg.split(",");
						String Result = rMsg[0]; // 발송결과
						String Count = ""; // 잔여건수
						if (rMsg.length > 1) {
							Count = rMsg[1];
						}

						// 발송결과 알림
						if (Result.equals("success")) {
							alert = "성공적으로 발송하였습니다.";
						} else if (Result.equals("reserved")) {
							alert = "성공적으로 예약되었습니다";
						} else if (Result.equals("3205")) {
							alert = "잘못된 번호형식입니다.";
						} else {
							alert = "[Error]" + Result;
						}

						PrintWriter out;

						try {
							out = response.getWriter();
							/* out.println(nointeractive); */
							out.println("{\"phoneNumber\":\"" + sb.toString() + "\",");

							if (nointeractive.equals("1") && !(Result.equals("Test Success!"))
									&& !(Result.equals("success")) && !(Result.equals("reserved"))) {
								out.println("\"alert\": \"" + alert + "\"}");
								System.out.println("어케된거야");
							} else if (!(nointeractive.equals("1"))) {
								out.println("\"alert\": \"" + alert + "\"}");
								System.out.println("어케된거야2");
							}
							/* out.println("<script>location.href='" + returnurl + "';</script>"); */
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					} catch (UnknownHostException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				} catch (NoSuchAlgorithmException e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
			}
		} catch (Exception e3) {
			// TODO Auto-generated catch block
			e3.printStackTrace();
		}
	}

	@RequestMapping("/idSearchFrm.do")
	public String idSearchFrm() {
		return "member/idSearch";
	}

	@RequestMapping("/pwSearch.do")
	public String pwSearchFrm() {
		return "member/pwSearch";
	}

	@RequestMapping("/idSearch.do")
	public String idSearch(Member m, Model model) {
		Member member = memberService.selectOneMember(m);
		if (member != null) {
			model.addAttribute("member", member);
			return "member/idSearchList";
		}
		model.addAttribute("member", member);
		return "member/idSearchList";
	}

	@RequestMapping("/pwSearchMethod.do")
	public String pwSearchMethod(Member m, Model model) {
		Member member = memberService.selectOneMember(m);
		if (member != null) {
			model.addAttribute("member", member);
			return "member/pwSearchFrm";
		}
		model.addAttribute("member", member);
		return "member/pwSearchFrm";
	}

	@RequestMapping("/pwModifyFrm.do")
	public String pwModifyFrm(Member m, Model model) {
		System.out.println("이름 : " + m.getMemberName());
		System.out.println("이메일 : " + m.getMemberEmail());
		Member member = memberService.selectOneMember(m);
		model.addAttribute("member", member);
		return "member/pwModify";
	}

	@ResponseBody
	@RequestMapping(value = "/VerifyRecaptcha.do", method = RequestMethod.POST)
	public int VerifyRecaptcha(HttpServletRequest request) {
		org.kh.member.model.vo.VerifyRecaptcha.setSecretKey("6LeEOssUAAAAAInGwr8t749w-ix7MA-9ffEi_p1g");
		String gRecaptchaResponse = request.getParameter("recaptcha");
		System.out.println(gRecaptchaResponse);

		// 0 = 성공, 1 = 실패, -1 = 오류
		try {
			if (org.kh.member.model.vo.VerifyRecaptcha.verify(gRecaptchaResponse))
				return 0;
			else
				return 1;
		} catch (IOException e) {
			e.printStackTrace();
			return -1;
		}
	}

	@RequestMapping("/pwModify.do")
	public String pwModify(Member m) {
		int result = memberService.updatePwMember(m);
		if (result > 0) {
			System.out.println("비밀번호변경 성공!");
			return "redirect:/";
		} else {
			System.out.println("비밀번호변경 실패!");
			return "redirect:/";
		}
	}

	@RequestMapping("/myStyleAddFrm.do")
	public String addMyStyle(HttpSession session, Mystyle ms, Model model) {
		Member member = (Member) session.getAttribute("member");
		model.addAttribute("m", member);
		Mystyle mse = memberService.addMystyle(member.getMemberId());
		if (mse != null) {
			model.addAttribute("ms", mse);
			System.out.println(mse.getBloodType());
			return "member/myStyleUpdate";
		} else {
			return "member/myStyleAdd";
		}
	}

	@ResponseBody
	@RequestMapping("/existenceMyStyle.do")
	public void existenceMyStyle(HttpSession session, HttpServletResponse response) {
		Member member = (Member) session.getAttribute("member");
		Mystyle mse = memberService.searchMystyle(member.getMemberId());
		try {
			if (mse != null) {
				response.getWriter().print("1");
				System.out.println("1");
			} else {
				response.getWriter().print("0");
				System.out.println("0");
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping("/idealStyleAddFrm.do")
	public String addYouStyle(HttpSession session, Idealtype i, Model model) {
		Member member = (Member) session.getAttribute("member");
		model.addAttribute("m", member);
		Idealtype ideal = memberService.addIdealStyle(member.getMemberId());

		if (ideal != null) {
			model.addAttribute("i", ideal);
			return "member/idealStyleUpdate";
		} else {
			return "member/idealStyleAdd";
		}
	}
	
	@ResponseBody
	@RequestMapping("/existenceIdealStyle.do")
	public void existenceIdealStyle(HttpSession session, HttpServletResponse response) {
		Member member = (Member) session.getAttribute("member");
		if(member != null) {
			Idealtype mse = memberService.searchIdealStyle(member.getMemberId());
			try {
				if (mse != null) {
					response.getWriter().print("1");
				} else {
					response.getWriter().print("0");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@RequestMapping("/mySelfTest.do")
	public String myStyleTest() {
		return "member/mySelfTest";
	}

	@RequestMapping("/myTestInfo.do")
	public String myTestInfo(HttpSession session, MySelfTest mst, Model model) {
		int result = memberService.selfTest(mst);
		Member member = (Member) session.getAttribute("member");
		model.addAttribute("m", member);
		return "redirect:/";
	}

	@RequestMapping("/insertIdeal.do")
	public String insertIdeal(HttpSession session, Model model, Idealtype i) {
		int result = memberService.insertIdeal(i);
		if(result >0) {
			model.addAttribute("msg", "내가원하는 너의 스타일 입력에 성공하셨습니다." );
		} else {
			model.addAttribute("msg", "내가원하는 너의 스타일 입력에 실패하셨습니다. 다시 해주세요.");
		}
		model.addAttribute("loc", "/myPageMain.do");
		
		return "common/msg";
	}

	@RequestMapping("/updateIdeal.do")
	public String updateIdeal(HttpSession session, Model model, Idealtype i) {
		int result = memberService.updateIdeal(i);
		if(result >0) {
			model.addAttribute("msg", "내가원하는 너의 스타일 수정에 성공하셨습니다." );
		} else {
			model.addAttribute("msg", "내가원하는 너의 스타일 수정에 실패하셨습니다. 다시 해주세요.");
		}
		model.addAttribute("loc", "/myPageMain.do");
		return "common/msg";
	}

	@RequestMapping("/insertMyStyle.do") // 1
	public String insertMyStyle(HttpSession session, Model model, Mystyle mse) {
		int result = memberService.insertMystyle(mse);
		if(result >0) {
			model.addAttribute("msg", "나는 이런 사람입니다 입력에 성공하셨습니다." );
		} else {
			model.addAttribute("msg", "나는 이런 사람입니다 입력에 실패하셨습니다. 다시 해주세요.");
		}
		model.addAttribute("loc", "/myPageMain.do");
		
		return "common/msg";
	}

	@RequestMapping("/myStyleAdd.do") // 2
	public String updateMyStyle(HttpSession session, Model model, Mystyle mse) {
		int result = memberService.updateMyStyle(mse);
		if(result >0) {
			model.addAttribute("msg", "나는 이런사람 입니다 수정에 성공하셨습니다." );
		} else {
			model.addAttribute("msg", "나는 이런사람 입니다 수정에 실패하셨습니다. 다시 해주세요.");
		}
		model.addAttribute("loc", "/myPageMain.do");
		return "common/msg";
	}

	@RequestMapping("/matching.do")
	public String matching(HttpSession session, Model model) {
		Member member = (Member) session.getAttribute("member");

		String memberId = member.getMemberId();
		// 내자신의 이상형타입 가져오기
		// Idealtype 객체로 내 세션 의아이디껏만 가져오는거지 1개의 컬럼
		Idealtype myideal = memberService.myidealrow(memberId);

		// 자기자신타입 전체목록 가져오기
		ArrayList<Mystyle> list = memberService.mystyleall();

		// 내이상형타입과 상대방의 자기자신타입이 70프로이상이면 result에 저장
		// 70프로이상 선별된사람들을 저장하는 vo 로만들어
		ArrayList<Mystyle> fianlyideal = new ArrayList<Mystyle>();
		int count = 0;
		if (!list.isEmpty()) {
			for (Mystyle p : list) {

				count = 0;

				if (member.getMemberId().equals(p.getMemberId())) {
					continue;
				}
				if (member.getMemberGender().equals(p.getMemberGender())) {
					continue;
				}
				if (myideal.getAssociation().equals(p.getAssociation())) {
					count++;
				}
				if (myideal.getBloodType().equals(p.getBloodType())) {
					count++;
				}
				if (myideal.getDrinkCount().equals(p.getDrinkCount())) {
					count++;
				}
				if (myideal.getSmoking().equals(p.getSmoking())) {
					count++;
				}
				if (myideal.getHeight().equals(p.getHeight())) {
					count++;
				}
				if (myideal.getForm().equals(p.getForm())) {
					count++;
				}
				if (myideal.getStyle01().equals(p.getStyle01())) {
					count++;
				}
				if (myideal.getStyle02().equals(p.getStyle02())) {
					count++;
				}
				if (myideal.getYn01().equals(p.getYn01())) {
					count++;
				}
				if (myideal.getYn02().equals(p.getYn02())) {
					count++;
				}
				if (myideal.getYn03().equals(p.getYn03())) {
					count++;
				}
				if (myideal.getYn04().equals(p.getYn04())) {
					count++;
				}
				if (myideal.getYn05().equals(p.getYn05())) {
					count++;
				}
				if (myideal.getYn06().equals(p.getYn06())) {
					count++;
				}
				if (myideal.getYn07().equals(p.getYn07())) {
					count++;
				}
				if (myideal.getYn08().equals(p.getYn08())) {
					count++;
				}
				if (myideal.getYn09().equals(p.getYn09())) {
					count++;
				}
				if (myideal.getYn10().equals(p.getYn10())) {
					count++;
				}
				if (myideal.getYn11().equals(p.getYn11())) {
					count++;
				}
				if (myideal.getYn12().equals(p.getYn12())) {
					count++;
				}
				if (count >= 12) {
					fianlyideal.add(p);
				}
			}
		} else {
			System.out.println("실패");
		}
		// 70프로이상인 유저정보 insertIdealtypematching로 검색해서 결과물 받아오기
		ArrayList<Member> memberList = memberService.selectMemberInfo(fianlyideal);
		if (!fianlyideal.isEmpty()) {
			System.out.println("값이있나아아");
			model.addAttribute("list", fianlyideal);
			model.addAttribute("memberList", memberList);
			return "member/completematching";
		} else {
			System.out.println("값이없나아아~");
			return "member/completematching";
		}
	}

	@RequestMapping("/myPageMain.do")
	public String myPageMain() {
		return "member/myPageMain";
	}

	@RequestMapping("/memberUpdateFrm.do")
	public String memberUpdateFrm() {
		return "member/memberUpdate";
	}
	
	@RequestMapping("/managerConsultingFrm.do")
	public String managerConsultingFrm() {
		return "member/managerConsulting";
	}
	
	@RequestMapping("/managerMatching.do")
	public String managerMatching(HttpSession session, int price, Model model) {
		Member member = (Member)session.getAttribute("member");
		Payment p = new Payment();
		p.setMemberId(member.getMemberId());
		p.setPrice(price);
		p.setTotalCount(price/200);
		int result = memberService.insertPayment(p);
		if(result>0) {
			int managerCount = memberService.selectManagerCount();
			System.out.println("managerCount : " + managerCount);
			Random r = new Random();
			
			int rni = r.nextInt(managerCount+1);
			while(rni == 0) {
				rni = r.nextInt(managerCount+1);
				if(rni == 1) {
					break;
				}
				
			}
			
			
			System.out.println("rni : " + rni);
			Member manager = memberService.selectOneManager(rni);
			System.out.println(manager.getMemberId());
			Manager managementMember = new Manager();
			managementMember.setManagerId(manager.getMemberId());
			managementMember.setManagementMemberId(member.getMemberId());
			managementMember.setTotalCount(p.getTotalCount());
			memberService.insertManagementMember(managementMember);
			model.addAttribute("manager", manager);
			System.out.println("뀨잉");
			return "member/successMatching";
		} else {
			model.addAttribute("manager", null);
			System.out.println("뀨루잉?");
			return "member/successMatching";
		}
	}
	
	@RequestMapping("/managerUpdateMatching.do")
	public String managerUpdateMatching(HttpSession session, int price, Model model) {
		Member member = (Member)session.getAttribute("member");
		Member m = new Member();
		m.setMemberId(member.getMemberId());
		Payment p = new Payment();
		p.setMemberId(member.getMemberId());
		p.setPrice(price);
		p.setTotalCount(price/200);
		String managerId = memberService.selectOneManagerId(m);
		m.setMemberId(managerId);
		Member manager = memberService.selectOneMember(m);
		int result = memberService.insertPayment(p);
		if(result>0) {
			memberService.updateManagementMember(p);
			model.addAttribute("manager", manager);
			System.out.println("뀨잉");
			return "member/successMatching";
		} else {
			model.addAttribute("manager", null);
			System.out.println("뀨루잉?");
			return "member/successMaching";
		}
	}
	
	@ResponseBody
	@RequestMapping("/countSearch.do")
	public void countSearch(HttpSession session, HttpServletResponse response) {
		Member m = (Member)session.getAttribute("member");
		Manager managementMember = memberService.selectManagementMember(m.getMemberId());
		if(managementMember!=null) {
			try {
				response.getWriter().print(1);
				System.out.println("1");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				response.getWriter().print(0);
				System.out.println("0");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping("/paymentHistory.do")
	public String paymentHistory(HttpSession session, HttpServletResponse response, Model model) {
		Member m = (Member)session.getAttribute("member");
		ArrayList<Payment> list = memberService.selectPaymentList(m);
		model.addAttribute("list", list);
		
		return "member/paymentHistory";
	}

	//관리자 전체회원 정보
		@RequestMapping("/manageAllMember.do")
		public String manageAllMember(int currentPage, Model model) {
			MemberPageData mpd = memberService.manageAllMember(currentPage);//여기에 리스트로 Member의 정보 전체가 담겨있음
			if(!mpd.getAllMember().isEmpty()) {
				model.addAttribute("manageAllMember",mpd.getAllMember());
				model.addAttribute("pageNavi",mpd.getPageNavi());
				model.addAttribute("currentPage",currentPage);
				return "member/manageAllMember";
			}
			return "redirect:/";
		}
		
		//매니저 등급관리
		@ResponseBody
		@RequestMapping("/modifyManager.do")
		public int modifyManager(HttpSession session,String memberId, String memberType) {//ajax에서 데이터를 넘겨오는지 확인
			System.out.println(memberId);
			System.out.println(memberType);
			Member m = new Member();//
			m.setMemberId(memberId);
			m.setMemberType(memberType);
			int result = memberService.modifyManager(m);
			return result;
		}
}
