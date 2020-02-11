<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<title>NOTICE</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">
<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Sunflower:300&display=swap" rel="stylesheet">

<link rel="stylesheet" href="/resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="/resources/assets/css/bootsnav.css">


<!--For Plugins external css-->
<!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="/resources/assets/css/style.css">
<!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="/resources/assets/css/responsive.css" />

<script src="/resources/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
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
   <!--End off Preloader -->

   <div class="culmn">
      <!--Home page style-->


      <nav
         class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">
         <!-- Start Top Search -->
         <!-- End Top Search -->
         <div class="container">
            <!-- Start Atribute Navigation -->
            <!-- End Atribute Navigation -->
            <!-- Start Header Navigation -->
            <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
      </nav>

      <!--Home Sections-->
      <section id="hello" class="blog-banner bg-mega"
         style="background-image: url('/resources/assets/images/background/3-1.png');">
         <div class="overlay"></div>
         <div class="container">
            <div class="row">
               <div class="main_home text-center">
                  <div class="about_text">
                     <h1 class="text-white text-uppercase">MyPage</h1>
                  </div>
               </div>
            </div>
            <!--End off row-->
         </div>
         <!--End off container -->
      </section>
      <!--End off Home Sections-->

      <!--Blog Features Section-->
      <section id="blog_fashion" class="blog_fashion roomy-100">
         <div class="container">
            <div class="row">
            <h2 style="text-align: center; color:gray; font-family: 'Do Hyeon', sans-serif;">결제내역</h2>
            <br>

               <table class="table table-bordered">
                  <thead>
                     <tr style="text-align: center;">
                        <td>번호</td>
                        <td>가격</td>
                        <td>날짜</td>
                        <td>신청횟수</td>
                     </tr>
                  </thead>
                  <tbody>
                     <c:choose>
                        <c:when test="${empty list}">
                           <tr style="text-align: center;">
                              <td colspan=4>비어있네요 ㅠㅠ</td>
                           </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach items="${list }" var="p" varStatus="i">
                              <tr style="text-align: center;">
                                 <td>${i.count }</td>
                                 <td>${p.price }</td>
                                 <td>${p.regDate }</td>
                                 <td>${p.totalCount }</td>
                              </tr>
                           </c:forEach>
                        </c:otherwise>
                     </c:choose>
                  </tbody>
               </table>
               <p style="text-align: center; font-size: 18px;">
               <a href="/myPageMain.do">마이페이지 메인으로 이동</a>
               </p>
            </div>
         </div>
         <!-- End off container -->
      </section>
      <!-- End off blog Fashion -->

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

   <script type="text/javascript">
      var msnry = new Masonry('.blog_area');
   </script>

   <script src="/resources/assets/js/plugins.js"></script>
   <script src="/resources/assets/js/main.js"></script>

</body>

</html>