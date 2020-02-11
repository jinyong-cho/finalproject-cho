<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="ko"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<title>Insert title here</title>
<meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
        
        <style type="text/css">
        .table td{
            text-align: center;
            vertical-align: middle;
            font-size:20px;
         }
             .table th{
            text-align: center;
            vertical-align: middle;
            font-size: 20px;
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
             
      <div class="container"  style="font-family: 'Single Day', cursive;">

   <div style="text-align: center; font-size: 50px;">상담 신청이 완료되었습니다!</div>
   <div style="text-align: center; font-size:30px;">매니저 정보</div>
   <table class="table">
   <tr>
      <td><img src="/resources/upload/photo/${requestScope.manager.memberOriPhotoName }"></td>
      <td>${requestScope.manager.memberId }</td>
      <td>${requestScope.manager.memberPhone }</td>
   </tr>
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