<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html class="no-js" lang="ko"> 
    <head>
        <meta charset="utf-8">
        <title>NOTICE</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
	
	<style type="text/css">
	#a{
	color: gray;
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
                    </div>
                </div>
            </section> 
            
          
            <section id="feature" class="feature">
                <div class="container">

	<c:choose>
		<c:when test="${not empty requestScope.member}">
			
			<div style="width: 500px; height:200px; margin: 5% auto;">
			
			<div style="width: 450px; margin:5% auto; font-size: 24px; text-align: center;">
			고객님의 정보와 일치하는 아이디는<br> ${requestScope.member.memberId } <br>
			입니다.</div>
			
			<div style="width: 250px; margin:auto;">
			<button type="button" class="btn" style="width: 100%;" data-toggle="modal" data-target="#login">로그인</button>
			</div>
			<!-- The Modal -->
			<div class="modal" id="login">
 			 <div class="modal-dialog modal-dialog-centered">
    		<div class="modal-content">
     		 <!-- Modal Header -->
     			 <div class="modal-header">
      		  <h4 class="modal-title">Login</h4>
     	   <button type="button" class="close" data-dismiss="modal">&times;</button>
    	  </div>
     		 <!-- Modal body -->
     		 <div class="modal-body">
      		 <form action="/login.do" method="post">
				<input type="text" class="form-control" name="memberId" placeholder="ID">
				<input type="password" class="form-control" name="memberPw" placeholder="PW"><br>
				<div style="width: 300px;margin: auto;">
				<input  type="submit" class="btn" style="width: 100%;" value="로그인">
				</div>
			</form>
			<div style="width: 300px;margin: auto;">
			<a href="/idSearchFrm.do"><button type="button"  style="width: 130px;margin-left: 5.2%;" class="btn">아이디 찾기</button></a>
			<a href="/pwSearch.do"><button type="button"  style="width: 130px;" class="btn">비밀번호 찾기</button></a>
			</div>
      		</div>
    </div>
  </div>
</div>
			
			<div style="width: 250px; margin:2px auto;">
			<a href="/pwSearchMethod.do?memberId=${requestScope.member.memberId }" id="a">
			<button type="button" class="btn" style="width:100%;">비밀번호 찾기</button>
			</a>
			</div>
			
			</div>
			
			
		</c:when>
		<c:otherwise>
		<div style="width:700px; margin:3% auto; font-size: 30px;">
		입력하신 정보에 해당하는 아이디값이 존재하지 않습니다.<br>
		<div style="margin:5% auto;width: 200px;">
		<a href="/idSearchFrm.do" id="a"><button type="button" class="btn" style="width: 100%">아이디찾기</button></a>
		</div>
		</div>
		</c:otherwise>
	</c:choose>
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