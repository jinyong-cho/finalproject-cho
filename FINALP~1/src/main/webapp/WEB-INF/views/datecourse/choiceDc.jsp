<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="ko"> 
<head>
 <meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DateCourse</title>
 <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<style>
   #selectAreaDiv,#selectCashDiv,#submitBtn{
       display: none;
   }
   label:hover {
   opacity: 0.2;
   }
   
   input[name=dcType]{
   position: absolute; 
   left: -30000%; 
   }
   
   input[name=dcType] +label {
   width: 280px; 
   height: 500px; 
   display: inline-block;
   }   
   #food +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 280px 50%;
   background-color: #E6F1F7;
   background-repeat:no-repeat;
   background-image: url("/resources/assets/images/background/food.png");
   background-position: center;
    
   }
   #play +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 280px 500px;
   background-color: #A9DAFB;
   background-image: url("/resources/assets/images/background/play.png");
   background-repeat:no-repeat;
   background-position: center;
   background-size: 280px 50%;
   }
   
   #cafe +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 280px 500px;
   background-color: #99C8FF;
   background-image: url("/resources/assets/images/background/cafe.png");
   background-repeat:no-repeat;
   background-position: center;
   background-size: 280px 50%;
   }
   
   input[type="checkbox"]:checked + label:before {
   opacity: 0.2;
   }
   
/*=====================================================================================================================================  */

   input[name=dcArea]{
   position: absolute; 
   left: -30000%; 
   }
   
   #selectBtn2{
   position: absolute; 
   left: -30000%; 
   }
   
   #a1 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;
   background-size: 120px 120px;
   }   
   
   #a1 +label:before {
   content:"";
   
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/종로구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(244, 197, 215, 0.24);
   
   }
   
   #a2 +label {
   
   width: 150px; 
   height:150px;  
   display: inline-block;
   background-position: center;
   background-size: 120px 120px;
   }   
   
   #a2 +label:before {
   content:"";
   
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/중구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(162, 153, 202, 0.24);
   }
   
   #a3 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;
   background-position: center;
   background-size: 120px 120px;
   }   
   
   #a3 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/강남구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(255, 182, 155, 0.24);
   }
   
   #a4 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;
   }   
   
   #a4 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/마포구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(124, 202, 199, 0.21);
   }
   
   #a5 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;
   }   
   
   #a5 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/명동.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(132, 192, 233, 0.24);
   }
   
   #a6 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;
   
   }   
   
   #a6 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/용산구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(255, 182, 155, 0.24);
   }
   
   #a7 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;
   
   }   
   
   #a7 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/홍대.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(124, 202, 199, 0.21);
   }
   
   #a8 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;

   }   
   
   #a8 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/송파구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(162, 153, 202, 0.24);
   
   }
   
   #a9 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;

   }   
   
   #a9 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/서초구.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(254, 225, 159, 0.24);
   }
   
   #a10 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;

   }   
   
   #a10 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/서교동.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(254, 225, 159, 0.24);
   }      
   
   #a11 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;

   }   
   
   #a11 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/삼청동 (1).png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(124, 202, 199, 0.21);
   }   
   
   #a12 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;

   }   
   
   #a12 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/인사동.png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(244, 197, 215, 0.24);
   }   
      
   #a13 +label {
   width: 150px; 
   height:150px;  
   display: inline-block;

   }   
   
   #a13 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/삼청동 (3).png");
   background-position: center;
   background-size: 120px 120px;
   background-repeat: no-repeat;
   background-color: rgba(132, 192, 233, 0.24);
   }   
   
   
   
   #selectArea + label {
   width: 150px; 
   height: 150px; 
   display: inline-block;

   }   
   
   #selectArea +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/손가락11.png");
   background-position: center;
   background-size: 110px 110px;
   background-repeat: no-repeat;
   background-color: rgba( 255, 0, 0, 0.18 );
   
   }
   
   #selectBtn2 +label {
   width: 150px; 
   height:150px; 
   display: inline-block;

   }
   
   #selectBtn2 +label:before {
   content:"";
   width: 150px; 
   height: 150px; 
   display: inline-block;
   background-image: url("/resources/assets/images/background/전체보기.png");
   background-position: center;
   background-size: 110px 110px;
   background-repeat: no-repeat;
   background-color: rgba(254, 225, 159, 0.24);
   }
   
   
/* ========================================================================================================================== */


   input[name=dcCash]{
   position: absolute; 
   left: -30000%; 
   }
   
   input[name=dcCash] + label {
   width: 280px; 
   height: 500px; 
   display: inline-block;
   }   
   
   input[name=dcCash] +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 280px 500px;
   }

   input[type="radio"]:checked + label:before {
   opacity: 0.2;
   }
   
   
   #c1 +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 260px 300px;
   background-image: url("/resources/assets/images/background/10000.png");
   background-repeat: no-repeat;
   background-position: center;
   background-color: rgba(250, 241, 214, 0.28); 
   }
   
   #c2 +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 260px 300px;
   background-image: url("/resources/assets/images/background/50000.png");
   background-repeat: no-repeat;
   background-position: center;
   background-color: rgba(253, 173, 171, 0.28);
   }
   #c3 +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 260px 300px;
   background-image: url("/resources/assets/images/background/100000.png");
   background-repeat: no-repeat;
   background-position: center;
   background-color: rgba(250, 222, 225, 0.28);
   }
   #c4 +label:before {
   content:"";
   width: 280px; 
   height: 500px; 
   display: inline-block;
   background-size: 260px 300px;
   background-image: url("/resources/assets/images/background/150000.png");
   background-repeat: no-repeat;
   background-position: center;
   background-color:rgba(217, 241, 241, 0.28);
   }
   
   
   
   
   
   
   
   
   
   #all{
   width: 280px; 
   margin-right:3px;
   height: 500px;
   display: inline-block;
   float: left; 
   background-color:#EFD4DF;
   background-image: url("/resources/assets/images/background/all.png");
   background-repeat:no-repeat;
   background-position: center;
   background-size: 280px 50%;
   }
   
   #all:hover {
   opacity: 0.5;
   }
   
   
</style>

</head>

<body data-spy="scroll" data-target=".navbar-collapse">

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
                                <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">Date Course</h1>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


            <!--Blog Features Section-->
            
          
    <section id="feature" class="feature">
             
      <div class="container">
      <div style="font-family: fantasy;font-size: 5em;">DateCourseSelect</div>
   <hr>
   
   
      <a href="/dateCourseList.do?currentPage=1" style="width:100%; height: 100%;">
      <button id="all" class="btn"></button></a>
      
      <form action="/choiceSelect.do?" method="get" id="frm">
      
      <div id="selectTypeDiv">
      	<input type="hidden" name="currentPage" value="1">
         <input type="checkbox" name="dcType" value="맛집" id="food">
         <label for="food"></label>
         
         <input type="checkbox" name="dcType" value="놀거리" id="play">
         <label for="play"></label>
         
         <input type="checkbox" name="dcType" value="카페" id="cafe">
         <label for="cafe"></label>
      
         <div style="width: 150px; margin: auto;">
         <button type="button" id="selectType" class="btn" style="width: 100%;color:black;  background-color: white;"><i class="fas fa-hand-point-right fa-5x"></i></button>
         </div>
   </div>
         
      <div id="selectAreaDiv" style="margin: auto; width: 800px;">
         
         <input type="checkbox" id="selectBtn2">
         <label for="selectBtn2"></label>
         
         <input type="checkbox" name="dcArea" value="종로구" id="a1">
         <label for="a1"></label>
         
         <input type="checkbox" name="dcArea" value="중구" id="a2">
         <label for="a2"></label>
         
         <input type="checkbox" name="dcArea" value="강남구" id="a3">
         <label for="a3"></label>
         
         <input type="checkbox" name="dcArea" value="마포구" id="a4">
         <label for="a4"></label>
         
         <input type="checkbox" name="dcArea" value="명동" id="a5">
         <label for="a5"></label>
         
         <input type="checkbox" name="dcArea" value="용산구" id="a6">
         <label for="a6"></label>
         
         <input type="checkbox" name="dcArea" value="홍대" id="a7">
         <label for="a7"></label>
         
         <input type="checkbox" name="dcArea" value="송파구" id="a8">
         <label for="a8"></label>
         
         <input type="checkbox" name="dcArea" value="서초구" id="a9">
         <label for="a9"></label>
         
         <input type="checkbox" name="dcArea" value="서교동" id="a10">
         <label for="a10"></label>
         
         <input type="checkbox" name="dcArea" value="삼청동" id="a11">
         <label for="a11"></label>
         
         <input type="checkbox" name="dcArea" value="인사동" id="a12">
         <label for="a12"></label>
         
         <input type="checkbox" name="dcArea" value="동대문" id="a13">
         <label for="a13"></label>
         
         <button type="button" id="selectArea" class="btn" style="color:black; display: none;">
         </button>
         <label for="selectArea"></label>
         <div style="height: 25px"></div>
         
      </div>
      
         <div id="selectCashDiv" style="margin-bottom: 10px;">
         
         <input type="radio" name="dcCash" value="50000" id="c1">
         <label for="c1"></label>
         
         
         <input type="radio" name="dcCash" value="100000" id="c2">
         <label for="c2"></label>
         
         
         <input type="radio" name="dcCash" value="150000" id="c3">
         <label for="c3"></label>
         
         
         <input type="radio" name="dcCash" value="200000" id="c4">
         <label for="c4"></label>
         
      
         <div style="margin: auto; width:100px;">
         <button type="submit" id="cashBtn" class="btn" style="width: 100%; color:black; background-color: white;">
         <i class="fas fa-search fa-5x"></i>
         </button>
         </div>
         </div>
   </form>
   
<script type="text/javascript">
   

   

   
   
   
   $("#cashBtn").click(function(){
      if($("input:radio[name=dcCash]").is(":checked")==false){
         alert("1가지 이상 체크해주세요!");
         return false;
      }else{
         $("#subBtn").submit();
      }
      
   })
   
   $("#selectType").click(function() {
      if(($("input:checkbox[name=dcType]:checked").length)==0){
         alert("1가지 이상 체크해주세요!");
         $("#all").show();
      }else{
         $("#selectAreaDiv").show();
         $("#selectTypeDiv").css('display','none');   
         $("#all").hide();
      }
   })
   
   $("#selectArea").click(function() {
      if(($("input:checkbox[name=dcArea]:checked").length)==0){
         alert("1가지 이상 체크해주세요!");
      }else{
         $("#selectCashDiv").show();
         $("#selectAreaDiv").css('display','none');   
      }
   })
   
   $("#selectBtn1").click(function () {
      if($("#selectBtn1").prop("checked")){
         $("[name=dcType]").prop("checked",true);
      }else{
         $("[name=dcType]").prop("checked",false);
      }
   })
   $("#selectBtn2").click(function () {
      if($("#selectBtn2").prop("checked")){
         $("[name=dcArea]").prop("checked",true);
      }else{
         $("[name=dcArea]").prop("checked",false);
      }
   })
   
   
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