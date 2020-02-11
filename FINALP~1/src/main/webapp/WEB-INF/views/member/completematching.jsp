<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js" lang="ko"> 

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Matching Result</title>
     <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
      <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
      <style type="text/css">
         .table td{
            text-align: center;
            vertical-align: middle;
            font-size:20px;
         }
         
             .table th{
            text-align: center;
            vertical-align: middle;
            font-size: 24px;
         }
         #divhover:hover{
            color:hotpink;
         }
         
         .table tr:hover{
            background-color: rgba(241, 217, 230, 0.13);
         }
         
      
      
      </style>  
      <link href="https://fonts.googleapis.com/css?family=Monoton|Single+Day&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Single+Day&display=swap" rel="stylesheet">   
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
                <!-- Start Top Search -->
                
                <!-- End Top Search -->

                <div class="container">    
                    <!-- Start Atribute Navigation -->
                    
                    <!-- End Atribute Navigation -->

                    <!-- Start Header Navigation -->
                  
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
            
          
            <section id="feature" class="feature p-top-100">
             
      <div class="container" style="font-family: 'Single Day', cursive;">
    
    <div id="divhover" style="text-align: center;font-family: 'Monoton', cursive; font-size: 60px;">Matching　List</div>
    <table class="table">
        <tr>
            <th>매칭회원 아이디 </th>
            <th>매칭회원 이름</th>
            <th>성별</th>
            <th>지역</th>
            <th>쪽지보내기</th>

        </tr>
        <c:choose>
            <c:when test="${not empty memberList }">
                <c:forEach var="vo" items="${memberList}">
                  <form action="/sendMessage.do" method="post">
                  	<tr>
                  			<input type="hidden" name="sendId" value="${member.memberId }">
                            <td><input type="text" readonly name="reciveId" style="border: none; text-align: center; background-color: rgba(0,0,0,0);" value="${vo.memberId}"></td>
                            <td><input type="text" readonly name="memberName" style="border: none; text-align: center;background-color: rgba(0,0,0,0);" value="${vo.memberName}"></td>
                            <td><input type="text" readonly name="memberGender" style="border: none; text-align: center;background-color: rgba(0,0,0,0);" value="${vo.memberGender}"></td>
                            <td><input type="text" readonly name="memberAddr" style="border: none; text-align: center;background-color: rgba(0,0,0,0);" value="${vo.memberAddr}"></td>
                            <td><a href="/sendMessage.do?reciveId=${vo.memberId}" data-toggle="modal" data-target="#myModal"><input type="submit" class="btn" value="쪽지보내기"></a></td>
                    </tr>
                   </form>
                   
                    <!-- 쪽지보내기 모달창 -->

<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
        Modal body..
      </div>
    </div>
  </div>
</div>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="5">
                        <div>해당 값이 존재하지 않습니다.</div>
                    </td>
                </tr>
            </c:otherwise>
        </c:choose>



    </table>

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