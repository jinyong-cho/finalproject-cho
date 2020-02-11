<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="ko"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<meta charset="utf-8">
<title>NOTICE</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">
 <style type="text/css">
 #pwRegCheckMsg,
 #pwRegCheckMsg2{
 margin-left: 12%;
 color:red;}
 </style>       

</head>
 <body data-spy="scroll" data-target=".navbar-collapse">
 <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div>


        <div class="culmn">


            <nav class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">
               
          

                <div class="container">    
                  
            <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
            </div>
            </nav>


            <!--Home Sections-->

            <section id="hello" class="blog-banner bg-mega" style = "background-image : url('/resources/assets/images/background/3-1.png');" >
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="about_text">
                                <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">연애가 쉬워지는 곳,<br> 연애인</h1>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


            <!--Blog Features Section-->
            
          
            <section id="feature" class="feature p-top-50">
                <div class="container">
		<c:choose>
			<c:when test="${empty requestScope.member }">
			<div style="width:500px;margin: auto; font-size: 30px; ">
		해당 정보를 가진 회원정보가 존재하지 않습니다.<br>
		<div style="margin: auto; width:200px; ">
		<a href="/pwSearch.do"><button type="button" class="btn" style="width: 100%;color:gray">돌아가기</button></a>
		</div>
		</div>
		</c:when>
		<c:otherwise>
			<div style=" width: 400px; height: 330px; margin: 5% auto; background-color: rgba(0, 137, 255, 0.04);">
			<form action="/pwModify.do" method="post" id="pwModifyFrm" style="height: 500px;">
				<input type="hidden" name="memberId" value="${requestScope.member.memberId }">
				<div style="text-align: center; height:50px; font-size: 24px; margin-top:5%; height: 60px; vertical-align: bottom;">연애인 아이디 :  ${requestScope.member.memberId }</div>
				<input type="password" name="memberPw" class="form-control" onkeyup="fn_pwRegCheck()" style="width: 300px; height:40px; margin: auto;" placeholder="새로운 비밀번호 입력"> 
				<div id="pwRegCheckMsg" style="height: 20px;"></div>
				<input type="password" name="memberRePw" class="form-control" onkeyup="fn_pwReCheck()" style="width: 300px;height:40px; margin: auto;" placeholder="새 비밀번호 확인">
				<div id="pwRegCheckMsg2" style="height: 20px;"></div>
				<div style="width: 300px; margin:3% auto;">
				<div class="g-recaptcha" data-sitekey="6LeEOssUAAAAAHkyDBzO_fN_Z61ZiVD7QtvNGcXh"></div>
				</div>
				<div style="width: 300px;margin: auto;">
					<input type="button" id="test_btn" class="btn" style="width: 100%; height:40px;" value="확인">
				</div>
			</form>
			</div>
		</c:otherwise>
	</c:choose>
	
 
    <script>
 // 비밀번호 정규표현식
	var pwReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; // 최소 특수문자, 문자, 숫자 하나에 8글자
	var pwFlag = 0;
	var pwReFlag = 0;
	
	function fn_pwRegCheck() {
		if(!pwReg.test($("input[name=memberPw]").val())) {
			$("#pwRegCheckMsg").html("최소 8자리에 숫자, 문자, 특수문자 각각 1개 이상 포함");
			pwFlag = 0;
		} else {
			$("#pwRegCheckMsg").html("사용가능한 비밀번호입니다.");
			pwFlag = 1;
		}
	}
	
	function fn_pwReCheck() {
		if($("[name=memberPw]").val() == $("[name=memberRePw]").val()) {
			if(pwReg.test($("input[name=memberPw]").val())) {
				$("#pwRegCheckMsg2").html("");
				pwReFlag = 1;
			} 
		} else {
			$("#pwRegCheckMsg2").html("비밀번호 값이 다릅니다.");
			pwReFlag = 0;
		}
	}
            
	$("#test_btn").click(function() {
		if($("[name=memberPw]").val().trim()=="" && $("[name=memberPw]").val().trim().length==0) {
			alert("새 비밀번호를 입력해주세요.");
			$("[name=memberPw]").focus();
		} else if($("[name=memberRePw]").val().trim()=="" && $("[name=memberRePw]").val().trim().length==0) {
			alert("비밀번호 확인을 입력해주세요.");   
			$("[name=memberRePw]").focus();
		} else if (pwFlag == 0) {
			alert("비밀번호를 확인해주세요.");
		} else if (pwReFlag == 0) {
			alert("비밀번호 확인값을 확인해주세요");
		} else if(pwFlag == 1 && pwReFlag == 1) {
			$.ajax({
				url: '/VerifyRecaptcha.do',
				type: 'post',
				data: {
					recaptcha: $("#g-recaptcha-response").val()
				},
				success: function(data) {
					switch (data) {
					case 0:
						alert("성공적으로 변경되었습니다.");
						$("#pwModifyFrm").submit();
						break;
					case 1:
						alert("자동 가입 방지 봇을 확인 한뒤 진행 해 주세요.");
						break;
					default:
						alert("자동 가입 방지 봇을 실행 하던 중 오류가 발생 했습니다. [Error bot Code : " + Number(data) + "]");
					break;
					}
				}
			});
		}
	});
    </script>
 </div>
          
                <!--Our Work Section-->
                
            </section> <!--End off About section -->
         
   
 <!--Company section-->

          

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

        </div>

        <!-- JS includes -->

        <script src="/resources/assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="/resources/assets/js/vendor/bootstrap.min.js"></script>

        <script src="/resources/assets/js/isotope.min.js"></script>
        <script src="/resources/assets/js/jquery.magnific-popup.js"></script>
        <script src="/resources/assets/js/jquery.easing.1.3.js"></script>
        <script src="/resources/assets/js/slick.min.js"></script>
        <script src="/resources/assets/js/jquery.collapse.js"></script>
        <script src="/resources/assets/js/bootsnav.js"></script>
        <script src="/resources/assets/js/masonry.min.js"></script>
       
        
        <script src="/resources/assets/js/plugins.js"></script>
        <script src="/resources/assets/js/main.js"></script>

    </body>
</html>