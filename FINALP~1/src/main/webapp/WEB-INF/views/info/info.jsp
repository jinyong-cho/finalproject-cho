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
<title>About Us Page</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-2.2.4.js"
   integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
   crossorigin="anonymous"></script>
<link rel="icon" type="image/png" href="favicon.ico">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!--Google Fonts link-->
<link
   href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Serif+KR&display=swap"
   rel="stylesheet">

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
         <!-- End Header Navigation -->
         <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="container">
            <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
         </div>
      </nav>


      <!--Home Sections-->

      <section id="hello" class="about-banner bg-mega"
         style="background-image: url('/resources/assets/images/background/3-1.png');">
         <div class="overlay"></div>
         <div class="container">
            <div class="row">
               <div class="main_home text-center">
                  <div class="about_text">
                     <h1 class="text-white text-uppercase">Intro</h1>
                  </div>
               </div>
            </div>
            <!--End off row-->
         </div>
         <!--End off container -->
      </section>
      <!--End off Home Sections-->




      <!--Simple Section-->
      <section id="simple" class="simple bg-grey roomy-80">
         <div class="container">
            <div class="row">
               <div class="main_simple text-center">
                  <div class="col-md-12">
                     <h2 style="font-family: 'Noto Serif KR', serif;">본인의 이상형을
                        입력하고 두근두근 기다리기만 하면 열심히 찾아드립니다!</h2>
                     <a href="/index.do" class="btn btn-default m-top-40">연애인 시작<i
                        class="fa fa-long-arrow-right"></i></a>
                  </div>
               </div>
            </div>
         </div>
      </section>


      <!--Models section-->
      <center>
         <section id="teams" class="teams roomy-80">
            <div class="container">
               <div class="row">
                  <div class="main_teams">
                     <div class="col-md-12">
                        <div class="head_title text-left sm-text-center wow fadeInDown">
                           <br>
                           <center>
                              <h2
                                 style="font-family: 'Do Hyeon', sans-serif; font-size: 60px;">연애인
                                 사용설명서</h2>
                              <br>
                              <br> <img src="/resources/assets/images/인트로5.PNG"
                                 style="width: 600px; height: 700px;">

                           </center>

                           <hr>
                        </div>
                     </div>

                     <div class="col-md-1"></div>
                     <div class="col-md-10 col-sm-6">
                        <div class="team_item m-top-30">
                           <div class="head_title text-left sm-text-center wow fadeInDown">
                              <img src="/resources/assets/images/홈페이지소개1.heic" alt="" />
                           </div>
                        </div>
                     </div>
                     <!-- End off col-md-3 -->
                     <div class="col-md-1"></div>

                  </div>
               </div>
            </div>
         </section>
      </center>

      <!--Testimonial Section-->
      <section id="testimonial" class="testimonial fix roomy-100">
         <div class="container">
            <div class="row">
               <div class="main_testimonial text-center">

                  <div id="carousel-example-generic" class="carousel slide"
                     data-ride="carousel">
                     <div class="carousel-inner" role="listbox">
                        <div class="item active testimonial_item">
                           <div class="col-md-1"></div>
                           <div
                              class="col-md-10 head_title text-left sm-text-center wow fadeInDown">

                              <div class="test_authour">
                                 <center>
                                    <img class="img-circle"
                                       src="/resources/assets/images/연애인소개.jfif" alt="" />
                                 </center>
                                 <br>
                                 <center>
                                    <h6
                                       class="m-top-20 head_title sm-text-center wow fadeInDown"
                                       style="font-family: 'Nanum Pen Script', cursive; font-size: 5em">연애인</h6>
                                 </center>
                                 <br>
                                 <center>
                                    <h5 class="head_title sm-text-center wow fadeInDown"
                                       style="font-family: 'Nanum Pen Script', cursive; font-size: 3em">
                                       <em>연애합시다,나랑</em>
                                    </h5>
                                    <br>
                                 </center>
                              </div>

                              <center>
                                 <p class=" m-top-40 head_title sm-text-center wow fadeInDown"
                                    style="font-family: 'Nanum Pen Script', cursive; font-family: 'Noto Serif KR', serif; font-size: 21px;">
                                    이상형을 찾아 헤멜 필요가 없습니다.<br>
                                    <br>
                                    <br>
                                    <br>서로의 성향이 일치하는 사람들끼리 바로바로 <br>
                                    <br>1 : 1 매칭을 통해 이상형을 만날수 있습니다. <br>
                                    <br> '연애인'은 무료입니다.<br>
                                    <br>
                                    <br> 매칭한 모든 이성은 마이페이지에서 확인 가능합니다.<br>
                                    <br> 매칭이 성사 되면 채팅을 통해 이상형과 대화가 가능합니다.<br>
                                    <br> 매칭리스트에서 맘에 드는 이성의 소개와 사진을 확인 하실 수 있습니다.<br>
                                    <br> 컨설팅이 필요한 회원의 경우 담당 매니저를 통해 도움을 받으실 수 있습니다.<br>
                                    <br>(※ 요금이 부과될 수 있습니다)<br>
                                    <br> 지금 당신의 매력을 증명하고 연애인의 회원이 되세요!<br>
                                    <br> <br>
                                    <br>
                                    <br> 한번 친구는 영원한 친구,<br>
                                    <br> 회원님의 솔로 탈출이 이루어지는 그날까지 함께 하는 연애인이 되겠습니다.<br>
                                 </p>
                              </center>


                           </div>
                           <div class="col-md-1"></div>
                        </div>


                        <!-- Controls -->

                     </div>
                  </div>
               </div>
               <!--End off row-->
            </div>
            <!--End off container -->

            <br /> <br /> <br />
            <hr />
            <br /> <br /> <br />


         </div>
         <!-- End off container -->
      </section>
      <!--End off Testimonial section -->
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
</body>

</html>