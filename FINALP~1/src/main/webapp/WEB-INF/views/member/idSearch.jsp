<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html class="no-js" lang="ko"> 
    <head>
        <meta charset="utf-8">
        <title>아이디찾기</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
		<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
		<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Jua|Poor+Story|Quicksand|Sunflower:300&display=swap" rel="stylesheet">
		<style type="text/css">
			.span1{
			font-size: 16px;
			display: inline-block;
			}
	
		#phoneRegCheckMsg,#phoneCheckSpan,#emailCheckSpan
			{
			width:220px;
			color:rgba(255, 0, 0, 0.55);
			}
		#emailRegCheckMsg{
			width:260px;
			color:rgba(255, 0, 0, 0.55);
			}	
		input[type=text]{
			width: 300px;
			height: 40px;
			margin-top: 1%;
			}
		
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
        </div><!--End off Preloader -->


        <div class="culmn">
            <!--Home page style-->


            <nav class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">

             <div class="container">    

            <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
            
            </div>
            </nav>


            <!--Home Sections 메인에 큰사진-->

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
            
          
            <section id="feature" class="feature" >

            <!-- contents -->
            <script type="text/javascript">
     function setPhoneNumber(val) {
   	 	var numList = val.split("-");
   	 	document.smsForm.sphone1.value = numList[0];
    	document.smsForm.sphone2.value = numList[1];
		if(numList[2] != undefined){
        	document.smsForm.sphone3.value = numList[2];
		}
	}
	function loadJSON() {
    	var data_file = "/calljson.do";
    	var http_request = new XMLHttpRequest();
    	try {
        	// Opera 8.0+, Firefox, Chrome, Safari
        	http_request = new XMLHttpRequest();
    	} catch (e) {
        	// Internet Explorer Browsers
        	try {
            	http_request = new ActiveXObject("Msxml2.XMLHTTP");
        	} catch (e) {
            try {
                http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                // Eror
                alert("지원하지 않는브라우저!");
                return false;
            }
        }
    }
   	 	http_request.onreadystatechange = function() {
        if (http_request.readyState == 4) {
            // Javascript function JSON.parse to parse JSON data
            var jsonObj = JSON.parse(http_request.responseText);
            	if (jsonObj['result'] == "Success") {
                	var aList = jsonObj['list'];
                	var selectHtml = "<select name=\"sendPhone\" onchange=\"setPhoneNumber(this.value)\">";
                	selectHtml += "<option value='' selected>발신번호를 선택해주세요</option>";
                	for (var i = 0; i < aList.length; i++) {
                    	selectHtml += "<option value=\"" + aList[i] + "\">";
                    	selectHtml += aList[i];
                   	 	selectHtml += "</option>";
                	}
                	selectHtml += "</select>";
                	document.getElementById("sendPhoneList").innerHTML = selectHtml;
            	}
        	}
    	}
    	http_request.open("GET", data_file, true);
    	http_request.send();
	}
</script>       
    
   <section style="height: 500px;">
		
		<div style="width: 550px; height: 400px; margin:3% auto; background-color:rgba(0, 137, 255, 0.04);">
		<div style="font-size: 50px; width: 250px; margin:auto; height:50px; font-family: 'Sunflower', sans-serif;">아이디찾기</div>
		<div style="width: 330px; font-size: 20px;margin:5% auto;">
		<label style="font-family: 'Sunflower', sans-serif;"><input type="radio" onclick="idPhoneSearch()" name="search" checked>회원정보에 등록한 휴대전화로 인증</label><br>
		<label style="font-family: 'Sunflower', sans-serif;"><input type="radio" onclick="idEmailSearch()" name="search">본인확인 이메일로 인증</label>
		</div>
   		
 
	<div id="idPhone" style="margin-top: 5%;">
	<div style="width:300px; margin:3% auto;">
	<form action="/idSearch.do" id="idPhoneSearchFrm">
	
	<input type="text" name="memberName" class="form-control" placeholder="이름">
		<div class="input-group mb-3" style="width: 500px; margin-bottom:2%">
		<input type="text" name="memberPhone" style="width: 222px;" class="form-control" onkeyup="fn_phoneRegCheck()"  placeholder="'-'를 포함해서 입력하세요">
		<div class="input-group-append" style="width: 300px; height: 45px">
		<button type="button" onclick="fn_phoneCheck()" style="margin-top:5px; height:40px;" class="btn">인증번호</button>
		</div>
		</div>
			<div id="phoneRegCheckMsg"></div>
			<input type="text" id="phoneCheck" class="form-control" placeholder="인증번호 6자리 입력" onkeyup="fn_phoneNumberCheck()" disabled>
			<div id="phoneCheckSpan"></div>
			<input type="hidden" name="action" value="go">
			<input type="hidden" name="sphone1" value="010">
			<input type="hidden" name="sphone2" value="5388">
			<input type="hidden" name="sphone3" value="8918"> 
			<div>
			<div style="width: 300px;">
			<button type="button" class="btn" style="width: 100%; height:40px; margin-top: 5%;" onclick="fn_phoneFlagCheck()">다음</button>
			</div>
			</div>
		</form>
		</div>
	</div>
	
	<div id="idEmail">
	<div style="width: 300px; margin: auto;">
		<form action="/idSearch.do" id="idEmailSearchFrm">
		
		
			<input type="text" name="memberName" class="form-control" placeholder="이름">
			
			<div class="input-group mb-3" style="width: 500px; margin-bottom:2%">
			<input type="text" name="memberEmail"  style="width: 222px;" class="form-control" onkeyup="fn_emailRegCheck()"placeholder="이메일주소">
			<div class="input-group-append">
			<button type="button" onclick="fn_sendMail()"class="btn checkBtn"  
			style="margin-top:5px; height:40px;">인증번호</button>
			</div>
			</div>
			
			<div id="emailRegCheckMsg"></div>
			<input type="text" id="emailCheck" placeholder="인증번호 6자리 입력" class="form-control" onkeyup="fn_emailNumberCheck()" disabled>
			<div id="emailCheckSpan"></div>
			<div style="width: 300px; margin: auto">
			<input type="button" value="다음" class="btn" class="btn" style="width: 300px; height:40px; margin-top: 5%;" onclick="fn_emailFlagCheck()">
			</div>
			
			
		</form>
		</div>
		</div>
	

</div>
</section>


	<script>
		// 휴대폰번호 정규표현식
		var phoneReg = /^\d{3}-\d{3,4}-\d{4}$/; // '-'를포함해야함
		var phoneFlag = 0;
		var phoneFlag2 = 0;
		var phoneFlag3 = 0;
		var phoneMemberName;
		var phoneMemberPhone;
		// 이메일 정규표현식
		var emailReg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; // 이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐 경우
		var emailFlag = 0;
		var emailFlag2 = 0;
		var emailFlag3 = 0;
		var emailMemberName;
		var emailMemberEmail;
	
		var phoneNumber = 987545465456456;
		
		function fn_phoneRegCheck() {
			if(!phoneReg.test($("input[name=memberPhone]").val())) {
				$("#phoneRegCheckMsg").html("'-'를 포함해서 입력해주세요.");
				phoneFlag = 0;
			} else {
				$("#phoneRegCheckMsg").html("");
				phoneFlag = 1;
			}
		}
		
		function fn_emailRegCheck() {
			if(!emailReg.test($("input[name=memberEmail]").val())) {
				$("#emailRegCheckMsg").html("이메일 형식을 맞춰서 작성해주세요.");
				emailFlag = 0;
			} else {
				$("#emailRegCheckMsg").html("");
				emailFlag = 1;
			}
		}
		
		$(document).ready(function() {
			$("#idEmail").hide();
		});
		
		function idPhoneSearch() {
			$("#idEmail").hide();
			$("#idPhone").show();
			$("#idEmailSearchFrm > [name=memberName]").val("");
			$("[name=memberEmail]").val("");
			$("#phoneCheck").val("");
			$('#phoneCheck').attr('disabled', true);
			$("#phoneCheckSpan").html("");
			$("#phoneRegCheckMsg").html("");
			emailFlag = 0;
			emailFlag2 = 0;
			emailFlag3 = 0;
		}
		
		function idEmailSearch() {
			$("#idPhone").hide();
			$("#idEmail").show();
			$("#idPhoneSearchFrm > [name=memberName]").val("");
			$("[name=memberPhone]").val("");
			$("#emailCheck").val("");
			$('#emailCheck').attr('disabled', true);
			$("#emailCheckSpan").html("");
			$("#emailRegCheckMsg").html("");
			phoneFlag = 0;
			phoneFlag2 = 0;
			phoneFlag3 = 0;
		}
		
		function fn_phoneCheck() {
			if($("#idPhoneSearchFrm > [name=memberName]").val()=="" && $("#idPhoneSearchFrm > [name=memberName]").val().trim().length==0) {
				alert("이름을 입력해주세요");
				return false;
			} else if(phoneFlag == 0) {
				alert("번호를 확인하고 다시 시도해주세요");
				return false;
			} else {
				var param= {
						rphone: $("[name=memberPhone]").val(),
						action: $("[name=action]").val(),
						sphone1: $("[name=sphone1]").val(),
						sphone2: $("[name=sphone2]").val(),
						sphone3: $("[name=sphone3]").val()
					}
				$.ajax({
					url: "/sendSMS.do",
					data: param,
					dataType: "json",
					success: function(data) {
						phoneNumber = data.phoneNumber;
						phoneFlag2 = 1;
						$('#phoneCheck').attr('disabled', false);
						phoneMemberName = $("#idPhoneSearchFrm > [name=memberName]").val();
						phoneMemberPhone = $("[name=memberPhone]").val();
						
						console.log(phoneMemberName);
						console.log(phoneMemberPhone);
						alert(data.alert);
						alert(data.phoneNumber);
						console.log(data.alert);
					},
					error: function(request, status, error) {
						alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
			}
		}
		
		function fn_phoneNumberCheck() {
			if(phoneFlag2 == 0){
				$("#phoneCheckSpan").html("인증번호 받기를 진행해주세요");
			} else {
				if($("#phoneCheck").val() == phoneNumber) {
					$("#phoneCheckSpan").html("인증번호가 확인되었습니다.");
					phoneFlag3 = 1;
				} else {
					$("#phoneCheckSpan").html("인증번호를 확인해주세요.");
					phoneFlag3 = 0;
				}
			}
		}
		
		function fn_emailNumberCheck() {
			if(emailFlag2 == 0) {
				$("#emailCheckSpan").html("이메일 인증을 진행해주세요");
			} else {
				if($("#emailCheck").val() == emailNumber) {
					$("#emailCheckSpan").html("인증번호가 확인되었습니다.");
					emailFlag3 = 1;
				} else {
					$("#emailCheckSpan").html("인증번호를 확인해주세요.");
					emailFlag3 = 0;
				}
			}
		}
		
		function fn_phoneFlagCheck() {
			if($("#idPhoneSearchFrm > [name=memberName]").val().trim()=="" && $("#idPhoneSearchFrm > [name=memberName]").val().trim().length==0) {
				alert("이름을 입력해주세요");
				return false;
			} else if($("[name=memberPhone]").val().trim()=="" && $("[name=memberPhone]").val().trim().length==0) {
				alert("번호를 입력해주세요");				
			} else if(phoneFlag3 == 0 ) {
				alert("휴대폰 인증을 진행해 주세요");
				return false;
			} else if(phoneFlag == 1 && phoneFlag2 == 1 && phoneFlag3 == 1){
				$("#idPhoneSearchFrm > [name=memberName]").val(phoneMemberName);
				$("[name=memberPhone]").val(phoneMemberPhone);
				$("#idPhoneSearchFrm").submit();
			}
		} 
		
		function fn_emailFlagCheck() {
			if($("#idEmailSearchFrm > [name=memberName]").val().trim()=="" && $("#idEmailSearchFrm > [name=memberName]").val().trim().length==0) {
				alert("이름을 입력해주세요");
				return false;
			} else if($("[name=memberEmail]").val().trim()=="" && $("[name=memberEmail]").val().trim().length==0) {
				alert("이메일을 입력해주세요");
			} else if(emailFlag3 == 0) {
				alert("이메일 인증을 진행해 주세요");
				return false;
			} else if(emailFlag == 1 && emailFlag2 == 1 && emailFlag3 == 1){
				$("#idEmailSearchFrm > [name=memberName]").val(emailMemberName);
				$("[name=memberEmail]").val(emailMemberEmail);
				$("#idEmailSearchFrm").submit();				
			}
		}
		
		// 이메일 보내는 함수
		function fn_sendMail() {
		 	if ($("#idEmailSearchFrm > [name=memberName]").val().trim()=="" && $("#idEmailSearchFrm > [name=memberName]").val().trim().length==0) {
				alert("이름을 입력해주세요");
			} else if (emailFlag == 0) {
				alert("주소를 확인하고 다시 시도해주세요");
			} else {
				$.ajax({
					url : "/sendMail.do", // 보내줄 주소 (처리할 서블릿)
					type : "POST",
					data : {
						email : $("[name=memberEmail]").val()
					},//담는 곳이 있어야됨
					dataType : 'json',
					success : function(data) { // 성공적으로 실행이 됬을때 data에 받아옴
						if (data != '3' && data != '2') {
							emailNumber = data;
							emailFlag2 = 1;
							$('#emailCheck').attr('disabled', false);
							emailMemberName = $("#idEmailSearchFrm > [name=memberName]").val();
							emailMemberEmail = $("[name=memberEmail]").val();
							alert("이메일이 전송되었습니다.");
						} else {
							emailNumber = 3482093489023094;
							emailFlag2 = 0;
							alert("올바르게 입력해주세요");
						}
					}
				});
			}
		}
		
	</script>
            
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