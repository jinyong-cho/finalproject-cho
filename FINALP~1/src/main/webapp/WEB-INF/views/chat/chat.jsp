<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html">
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="icon" type="image/png" href="http://example.com/myicon.png"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

    <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   
   <!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> -->
   
<style type="text/css">
 .modal-backdrop {
    z-index: -1;
    }
</style>
</head>
<body>

 <div class="container">
   <!-- 세팅 부분 init -->
   <div style="margin:10% auto; width:850px; border: 2px solid gray; ">
   
   <input type="hidden" id="userId" value="${member.memberId}">
   <!-- 유저아이디  -->
   
   <input type="hidden" id="room" value="${room}">
   <!-- 현재 유저가 접속한 방이름 -->


   <!-- 방 이름 / 방 만들기 / 방 나가기  -->
   <table
      style="width: 850px; margin: auto; background-color: rgba(0, 196, 255, 0.04);">
      <tr>
         <td align="center" style="width: 500px;">
            <!-- 방이름 출력 -->
            <div style="font-size: 35px;">
               <c:if test="${room =='all'}">
                  <b> 전체 채팅방 </b>
               </c:if>
               <c:if test="${room !='all'}">
                  <b> ${room} </b>
               </c:if>
            </div>
         </td>

         <td align="center" style="width: 300px">
            <!-- 방만들기 / 방나가기 버튼 --> 
            <input type="button" class="btn" value="방 만들기" id="createRoom"> &nbsp;&nbsp; 
             <input type="button" class="btn" value="전체 채팅방으로 이동" id="backBtn" >
         </td>
      </tr>
   </table>
   
   <!-- 채팅방 구현하기위한 테이블 -->
   <table align="center" style="height: 600px; width: 850px; margin: 0 auto; padding: 0;">
   
      <!-- 왼쪽 채팅창 출력 -->
      <col width="200px">
      
      <!-- 귓속말 영역 -->
      <col width="400px">
      
      <!-- 메세지 입력 영역 -->
      
      <!-- 오른쪽 리스트 출력영역 -->
      <col width="300px">
      
      <!-- 보내기 영역 -->
      <tr height="600px;">
      
      
      
         <!-- 채팅내용 출력 -->
      <td style="width: 800px;" colspan="2">
         <div style="width: 100%; padding:13px; height: 550px; overflow-y: scroll; overflow-x: inherit;" id="output"></div>
      </td>
      
      <!-- 채팅방 목록 -->
      <td style="width: 300px">
      
         <!-- 채팅방 -->
         <form action="MoveChatRoom.do" method="post" id="moveChatForm">
            <input type="hidden" name="roomName" value="">
               <div style="width: 245px; height: 100px; overflow-y: scroll; overflow-x: inherit;" id="room">
               
                  <!-- 전체 채팅방 -->
                  <div id="getRoomList">
                     <div class="item">
                        <div class="content">
                           <div style="text-align: center;">전체 채팅방</div>
                        </div>
                     </div>
                  </div>
               </div>
            </form> 
            
            <div class="input-group mb-3" style="width: 250px;">
            <input type="text" style="width: 170px; margin:0; height: 32px" class="form-control" placeholder="방 제목을 검색하세요." id="searchRoomText">
             <div class="input-group-append" style="display: inline-block; margin: 0;">
             <button type="button"  class="btn" style="width: 60px; height: 32px; background-color: lightgray" id="searchRoomBtn">검색</button>
             </div>
             </div>
             <!-- 방만들기 form이용 -->

            <form action="createChatRoom.do" method="post" id="createForm">
            
               <!-- hidden 정보  -->
               <input type="hidden" id="chkRoomName" value="">
               
               <!-- 방 제목 중복 확인 여부 -->
               <!-- 방 만들기 버튼 클릭 시, 보여짐 -->
               <div style="width: 300px; height: 500px; display: none;" id="showCreateRoom">

                  <!-- 방만들기 테이블 -->
                  <table style="width: 100%; height: 100%">
                     <col width="80px">
                     
                     <!-- 방제목 -->
                     <tr style="width: 100px;">
                        <th style="text-align: center;">방제목</th>
                           <td>
                              <input type="text" class="form-control" name="name" placeholder="제목" size="8" style="width: 120px;">
                           </td>
                     </tr>


                     <!-- 비밀번호 -->
                     <tr>
                        <th style="text-align: center;">비밀번호</th>
                           <td>
                              <input type="text" name="pwd" class="form-control" placeholder="비밀번호" size="8" style="width: 120px;"
                              title="작성하지않을시 공개방으로 생성됩니다">
                           </td>
                     </tr>

                     <!-- 참여 인원 -->
                     <tr>
                        <th style="text-align: center;">참여인원</th>
                        <td>
                           <a href="#none"><button type="button" onclick="count_back()" class="btn" style="background-color: rgba(0,0,0,0); color:gray;" title="-1">-1</button></a>
                               <input type="text" name="totalcount" value="4" size="2" readonly="readonly" id="count" style="width: 20px; text-align: center; border: none;">
                            <a href="#none"><button type="button" onclick="count_next()" class="btn" style="background-color: rgba(0,0,0,0); color:gray;" title="+1">+1</button></a>
                         </td>
                     </tr>
                     
                     
                     <!-- 내용 입력 -->
                     <tr>
                        <th style="text-align: center;">내용</th>
                        <td>
                           <input type="text" class="form-control" name="content" placeholder="내용" style="width: 120px;">
                        </td>
                     </tr>
                     
                     <!-- 버튼 처리 -->
                     <tr>
                        <td colspan="2" style="text-align: center;">
                           <input type="button" class="btn" id="submitBtn"value="방만들기"> 
                           <input type="button" class="btn" style="margin-right: 60px;" id="backBtn" value="돌아가기" >
                        </td>
                     </tr>
                  </table>
               </div>
            </form>
            
            
             <!-- 채팅 참여자 출력 -->
            <div style="width: 245px; height: 400px; overflow-y: scroll;" id="listPeople"></div>
         </td>
      </tr>
      
      
      
      
      <!-- 입력 창 -->
      <tr height="50px;" style="margin-left:3%;">
         <!-- 귓속말할 대상의 아이디 입력 -->
         <td>
         <input type="text" id="wisper" value="" class="form-control" style="width: 100%; height: 100%; font-weight: bold;" 
         name="who" placeholder="귓속말/ID클릭">
         </td>

         <!-- 보낼 메세지 입력 -->
         <td>
         <input type="text" id="textID" size="50" value="" style="width: 100%; height: 100%; font-weight: bold;"
            name="chatInput" placeholder="내용 입력 (매너채팅 부탁드립니다.)">
         </td>


         <!-- 보내기 버튼 -->
         <td>
         <input type="button" value="보내기" class="btn" id="buttonMessage"style="width: 248px;  height: 100%">
         </td>
         
      </tr>
      
   </table>
   </div>
</div>
   
   <script type="text/javascript">


   
      var sock = null;
      var id = '${member.memberId}';
      
   
      $(document).ready(function() {
         
         
         
            $("#textID").focus(); // 처음 접속시, 메세지 입력창에 focus 시킴
            
            // 본인의 서버로 접속할경우, user01으로 들어가야만 채팅이 가능하다.
            if (id == 'admin') {
                ws = new WebSocket("ws:/192.168.10.21/echo.do");
               // ws = new WebSocket("ws://192.168.10.122/echo.do");
                  /* "ws://localhost/echo.do" */
                  console.log('관리자로그인');
               }// 그 외 회원은 user01을 제외한 다른 아이디로 접속 시, 채팅참여가 가능하다.
               else {
               ws = new WebSocket("ws://192.168.10.21/echo.do");
               console.log('일반사용자로그인');
                        
               }
         //서버로 메세지 보낼때
         //서버 시작할때 동작
         ws.onopen = function(event) {
         /*  console.log('서버가 연결되었습니다.'); o */
                        
         //처음 접속 시에만 채팅방에 추가함(현재 방정보도 같이 출력)      
         $("#output").append("<b>채팅방에 참여했습니다.</b> <br> 현재 접속하신 방이름 : "+ $("#room").val() + "<br>"+"방에 입장하시려면 방제목을 검색해주세요.<br><br>");
            console.log(event+'서버가 연결되었습니다. '); 

            
            
            //여기서부터 끊김
            
         //보내기 버튼 눌렀을때
         $("#buttonMessage").click(function() {
                                       
            var msg = $('input[name=chatInput]').val().trim("!%/"); //메시지

            var wisper = $("#wisper").val().trim("!%/"); //귓속말 대상자

            var room = $("#room").val().trim("!%/"); //방이름(전체단톡방이면 all)
            
            //전체에게 보낼때
               if (wisper == ""&& msg != "") {
                  console.log('전체에게 메세지전달');   
                  
                  //소켓으로 메세지 전달
                  ws.send(msg + "!%/"+ "" + "!%/"+ room);
                           
                  console.log(msg);
                  console.log(room);
                  
                  
         $("#output").append("<i class='user icon'></i>"+"<b style='color:blue'>[${member.memberId}]</b> : "
                        + msg+ "<br>");

         $("#output").scrollTop(99999999); //글 입력 시 무조건 하단으로 보냄
         $("#textID").val(""); //입력창 내용지우기
         $("#textID").focus(); //입력창 포커스 획득
                                          
                                          
         }//귓속말
            else if (wisper != ""&& msg != "") {
            //본인에게 보낼경우
               if ($("#userId").val() == wisper) {
                  alert("본인에게는 보낼 수 없습니다.");
                     $("#wisper").focus();
               }//본인이 아닐 경우에만 메세지 전달
               else {ws.send(msg + "!%/"+ wisper+ "!%/"+ room); //현재 메세지 + 귓속말대상 + 방정보   
                  console.log(msg);
                  console.log(wisper);
                  console.log(room);
         $("#output").append("<i class='user icon'></i>"+ "<b style='color:blue'>[${member.memberId}]</b> : "
                        + "[<b>"+ wisper+ "</b>]님에게귓속말 : "+ msg+ "<br>");
         $("#output").scrollTop(99999999);
         $("#textID").val("");
         $("#textID").focus();
                        }
                  }

            });
                        
         
         //엔터키 입력처리
         $("#textID").keypress(function(event) {
            if (event.which == "13") {
               event.preventDefault();

                  var msg = $('input[name=chatInput]').val().trim("!%/"); //메시지

                  var wisper = $("#wisper").val().trim("!%/"); //귓속말 대상자

                  var room = $("#room").val().trim("!%/"); //방이름(전체단톡방이면 all)

               //전체에게 보낼때
                  if (wisper == ""&& msg != "") {
                        //소켓으로 메세지 전달
                        ws.send(msg + "!%/"+ ""+ "!%/"+ room);
                     $("#output").append("<i class='user icon'></i>"+ "<b style='color:blue'>[${member.memberId}]</b> : "
                                    + msg+ "<br>");

                     $("#output").scrollTop(99999999); //글 입력 시 무조건 하단으로 보냄
                     $("#textID").val(""); //입력창 내용지우기
                     $("#textID").focus(); //입력창 포커스 획득
                        }//귓속말
                        else if (wisper != ""&& msg != "") {
                              //본인에게 보낼경우
                                 if ($("#userId").val() == wisper) {
                                       alert("본인에게는 보낼 수 없습니다.");
                                          $("#wisper").focus();
                                             }//본인이 아닐 경우에만 메세지 전달
                                             else {
                                                ws.send(msg + "!%/"+ wisper+ "!%/"+ room); //현재 메세지 + 귓속말대상 + 방정보   

                                                $("#output").append("<i class='user icon'></i>"+ "<b style='color:blue'>[${member.memberId}]</b> : "
                                                                  + "[<b style='color:green'>"+ wisper+ "</b>]님에게귓속말 : "
                                                                  + msg+ "<br>");
                                                $("#output").scrollTop(99999999);
                                                $("#textID").val("");
                                                $("#textID").focus();
                                             }
                                          }
                                       }
                                    });

         
                        //방 검색
                        $("#searchRoomBtn").click(function() {
                        
                              //검색어
                              var text = $("#searchRoomText").val().trim("!%/&");
                                 ws.send("!%/&" + text);
                                    console.log(text);

                              $("#searchRoomText").val("");
                           });
                     };
                     
                     
                     
                     
            //서버로 부터 받은 메세지 보내주기
            ws.onmessage = function(message) {

                  //메세지 
                  var jsonData =JSON.parse(message.data);

                  if (jsonData.message != null) {
                     $("#output").append(jsonData.message + "<br>");
                           $("#output").scrollTop(99999999);
                        }
                        console.log(message);

                        //접속자리스트
                     var jsonData2 =JSON.parse(message.data);
                        if (jsonData2.list != null) {
                           $("#listPeople").html(jsonData2.list);
                        }

                        //방 정보
                        var jsonData3 = JSON.parse(message.data);
                        if (jsonData3.room != null) {
                           /* alert(jsonData3.room); */
                           var roomSplit = jsonData3.room.split(',');

                           var str = "<div class='item'><div class='content'>"
                                 + "<b title='전체채팅방입니다' class= 'chatRoom' "
                                 + "onclick=\"moveRoom('all',0,10000,'null')\">"
                                 + "전체 채팅방</b> (총 "
                                 + roomSplit[0]
                                 + "명 참여)</div></div>";

                           for (i = 1; i < roomSplit.length; i++) {
                              var spl = roomSplit[i].split("/");

                              if (spl[0] == '방이 존재하지 않습니다.') {
                                 str += "<div class='item'><div class='content'><b title='방이존재하지않습니다'>"
                                       + spl[0]
                                       + "</b></div></div>";
                              } else {
                                 //방이름 : spl[0] , 남은인원수 : spl[1] , 전체인원수:spl[2], 방내용:spl[3]
                                 str += "<div class='item'><div class='content'><b title='"
                                       + spl[3]
                                       + "' class='chatRoom' "
                                       + "onclick=\"moveRoom('"
                                       + spl[0]
                                       + "','"
                                       + spl[1]
                                       + "','"
                                       + spl[2]
                                       + "','"
                                       + spl[4]
                                       + "')\"> "
                                       + spl[0]
                                       + "</b> ("
                                       + spl[1]
                                       + "/"
                                       + spl[2]
                                       + ")</div></div>";
                              }

                           }

                           $("#getRoomList").html(str);

                           /* moveRoom(room,remaincount,totalcount,pwd); */
                        }

                     };
               

                     //닫힐때
                      /* ws.onclose = function(event) {
                       console.log('연결이 닫혔습니다.');
                         ws.close();
                        alert(event+"onclose 발동"); 
            };  */
      });
   </script>
   
   
   
   
   
   <!-- 방이동 처리함수 -->
   <script type="text/javascript">
   
      function moveRoom(room, remaincount, totalcount, pwd) {

         var currentRoom = $("#room").val(); //현재자신이있는방
            if (room == currentRoom) {
               //들어가고자하는방 = 현재자신의방
               alert("현재 선택하신 방에 있습니다.");
         }//방 이동 처리
         else {
            if (remaincount < totalcount) {
               if (pwd != 'null') {
                  var chkPwd = prompt("비밀번호를 입력하세요.");
                  if (chkPwd == pwd) {
                     $("[name='roomName']").val(room);
                     $("#moveChatForm").attr("target", "_self").submit();
                  } else {
                     alert("비밀번호가 틀렸습니다.");
                  }
               } else {
                  //비밀번호가 없다면 바로 이동하도록한다.
                  $("[name='roomName']").val(room);
                  $("#moveChatForm").attr("target", "_self").submit();
               }

            } else {
               alert("인원 수가 가득찼습니다.");
            }

         }
      };
   
   
      //방만들기
      $("#createRoom").click(function() {
         $("#listPeople").slideToggle(300);
         $("#showCreateRoom").slideToggle(300);
      });

      //방나가기
      $("#backBtn").click(function() {
         location.href = "/chat.do";
      });
   


   /*  방제목 중복확인  */
      $("[name='name']").blur(function() {
         var name = $("[name='name']").val();
         if (name != "") {
            $.ajax({
               type : "post",
               url : "./checkRoom.do",
               async : true,
               data : "name=" + name,
               success : function(msg) {
                  if (msg == "1") {
                     $("#chkRoomName").val(name);
                  } else if (msg == "0") {
                     alert("이미 존재하는 방이름 입니다.");
                     $("[name='name']").val("");
                     $("[name='name']").focus();
                  }
               }
            });
         }
      });
   
   
   
   
   /*  인원수 증가, 감소 버튼 클릭시, 실행되는 스크립트  */
      function count_back() {
         var count = $("#count").val();
         count = (Number(count) - 1);
         if (count >= 2) {
            $("#count").val(count);
         }
      };
      function count_next() {
         var count = $("#count").val();
         count = (Number(count) + 1);
         if ($("#count").val() < 30) {
            $("#count").val(count);
         }
      };
   
   /*   버튼처리   */
      $("#submitBtn").click(function() {
         if ($("[name='name']").val().length < 1) {
            alert("방제목을 입력하세요");
            $("[name='name']").focus();
         } else if ($("[name='name']").val() == "all") {
            alert("해당 방제목은 사용할 수 없습니다.");
         } else if ($("#chkRoomName").val() == "") {
            alert("이미 방이 존재합니다.");
            $("[name='name']").focus();
         } else if ($("[name='content']").val().length < 1) {
            alert("방을 설명하기위한 내용을 입력하세요");
            $("[name='content']").focus();
         } else {
            //form처리
            $("#createForm").attr("target", "_self").submit();
         }
      });

      $("#backBtn").click(function() {
         $("form").each(function() {
            this.reset();
         });
         $("#listPeople").slideToggle(300);
         $("#showCreateRoom").slideToggle(300);
      });


   /*  접속자 명단에서 아이디 클릭 시 귓속말에 바로 세팅  */
      function insertWisper(memberId) {
         if ($("#userId").val() == memberId) {
            alert("본인에게는 귓속말을 할 수 없습니다.");
         } else {
            $("#wisper").val(memberId);
         }

      }
      $("#wisper").click(function() {
         $("#wisper").val("");
   });
   </script>


</body>
</html>