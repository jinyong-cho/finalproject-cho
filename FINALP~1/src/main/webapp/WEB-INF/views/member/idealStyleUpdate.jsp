<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
   <script type="text/javascript"></script>
    <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
        
        
        
        
   <script>
   $(document).ready(function(){
      $("form").submit(function(){
         var checks = $("[type=radio]:checked");
         if(checks.length !=20){
               alert("체크란을 다시 확인해주세요.");
               return false;
            };
         });
   })
      </script>
      
<style>

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
             
      <div class="container">
              <h1> ${m.memberId }님의 원하는 상대방 스타일은? (수정 화면)</h1>
              <br>
              
<form action="/updateIdeal.do" method="post">

   <input type="hidden" name="memberId" value="${m.memberId }">
   <br>
   <hr>
   <br>
   혈액형 : 
   <c:choose>
      <c:when test="${i.bloodType eq 'A형'}">
         <input type="radio" name="bloodType" id="b1" value="A형" checked="checked">A형
         <input type="radio" name="bloodType" value="B형">B형
         <input type="radio" name="bloodType" value="O형">O형
         <input type="radio" name="bloodType" value="AB형">AB형
      </c:when>
      <c:when test="${i.bloodType eq 'B형'}">
         <input type="radio" name="bloodType" value="A형">A형
         <input type="radio" name="bloodType" value="B형" checked="checked">B형
         <input type="radio" name="bloodType" value="O형">O형
         <input type="radio" name="bloodType" value="AB형">AB형
      </c:when>
      <c:when test="${i.bloodType eq 'O형'}">
         <input type="radio" name="bloodType" value="A형">A형
         <input type="radio" name="bloodType" value="B형" >B형
         <input type="radio" name="bloodType" value="O형" checked="checked">O형
         <input type="radio" name="bloodType" value="AB형">AB형
      </c:when>
      <c:when test="${i.bloodType eq 'AB형'}">
         <input type="radio" name="bloodType" value="A형">A형
         <input type="radio" name="bloodType" value="B형">B형
         <input type="radio" name="bloodType" value="O형">O형
         <input type="radio" name="bloodType" value="AB형" checked="checked">AB형
      </c:when>
   </c:choose>
   
   <br>      
   <br>
   <hr>
   <br>
   음주 여부 :
   <c:choose>
   
   <c:when test="${i.drinkCount eq '주3회이상'}">
           <input type="radio" name="drinkCount" value="주3회이상" checked="checked">주3회이상
            <input type="radio" name="drinkCount" value="주2회">주2회
            <input type="radio" name="drinkCount" value="주1회">주1회
          <input type="radio" name="drinkCount" value="월2회">월2회
          <input type="radio" name="drinkCount" value="월1회">월1회
          <input type="radio" name="drinkCount" value="안마신다">안마신다
   
   </c:when>
   
   <c:when test="${i.drinkCount eq '주2회'}">
           <input type="radio" name="drinkCount" value="주3회이상" >주3회이상
            <input type="radio" name="drinkCount" value="주2회" checked="checked">주2회
            <input type="radio" name="drinkCount" value="주1회">주1회
          <input type="radio" name="drinkCount" value="월2회">월2회
          <input type="radio" name="drinkCount" value="월1회">월1회
          <input type="radio" name="drinkCount" value="안마신다">안마신다
   
   </c:when>
   
   <c:when test="${i.drinkCount eq '주1회'}">
           <input type="radio" name="drinkCount" value="주3회이상" >주3회이상
            <input type="radio" name="drinkCount" value="주2회">주2회
            <input type="radio" name="drinkCount" value="주1회" checked="checked">주1회
          <input type="radio" name="drinkCount" value="월2회">월2회
          <input type="radio" name="drinkCount" value="월1회">월1회
          <input type="radio" name="drinkCount" value="안마신다">안마신다
   
   </c:when>
   
   <c:when test="${i.drinkCount eq '월2회'}">
           <input type="radio" name="drinkCount" value="주3회이상" >주3회이상
            <input type="radio" name="drinkCount" value="주2회">주2회
            <input type="radio" name="drinkCount" value="주1회">주1회
          <input type="radio" name="drinkCount" value="월2회" checked="checked">월2회
          <input type="radio" name="drinkCount" value="월1회">월1회
          <input type="radio" name="drinkCount" value="안마신다">안마신다
   
   </c:when>
   
   <c:when test="${i.drinkCount eq '월1회'}">
           <input type="radio" name="drinkCount" value="주3회이상" >주3회이상
            <input type="radio" name="drinkCount" value="주2회">주2회
            <input type="radio" name="drinkCount" value="주1회">주1회
          <input type="radio" name="drinkCount" value="월2회">월2회
          <input type="radio" name="drinkCount" value="월1회" checked="checked">월1회
          <input type="radio" name="drinkCount" value="안마신다">안마신다
   
   </c:when>
   
   <c:when test="${i.drinkCount eq '안마신다'}">
           <input type="radio" name="drinkCount" value="주3회이상" >주3회이상
            <input type="radio" name="drinkCount" value="주2회">주2회
            <input type="radio" name="drinkCount" value="주1회">주1회
          <input type="radio" name="drinkCount" value="월2회">월2회
          <input type="radio" name="drinkCount" value="월1회">월1회
          <input type="radio" name="drinkCount" value="안마신다" checked="checked">안마신다
   
   </c:when>
   </c:choose>
   
   <br>   
   <br>
   <hr>
   <br>
     흡연 여부 : 
     <c:choose>
     <c:when test="${i.smoking eq '흡연'}">
     <input type="radio" name="smoking" value="흡연" checked="checked">흡연
     <input type="radio" name="smoking" value="비흡연">비흡연   
     </c:when>
     
     <c:when test="${i.smoking eq '비흡연'}">
     <input type="radio" name="smoking" value="흡연" >흡연
     <input type="radio" name="smoking" value="비흡연" checked="checked">비흡연   
     </c:when>
     </c:choose>
     
     <br>
   <br>
   <hr>
   <br>
     연령대 : 
     <c:choose>
     <c:when test="${i.association eq '연하'}">
           <input type="radio" name="association" value="연하" checked="checked">연하
           <input type="radio" name="association" value="연상">연상
           <input type="radio" name="association" value="동갑">동갑
           <input type="radio" name="association" value="상관없음">상관없음
     </c:when>
     
         <c:when test="${i.association eq '연상'}">
           <input type="radio" name="association" value="연하" >연하
           <input type="radio" name="association" value="연상" checked="checked">연상
           <input type="radio" name="association" value="동갑">동갑
           <input type="radio" name="association" value="상관없음">상관없음
     </c:when>
     
         <c:when test="${i.association eq '동갑'}">
           <input type="radio" name="association" value="연하" >연하
           <input type="radio" name="association" value="연상">연상
           <input type="radio" name="association" value="동갑" checked="checked">동갑
           <input type="radio" name="association" value="상관없음">상관없음
     </c:when>
     
         <c:when test="${i.association eq '상관없음'}">
           <input type="radio" name="association" value="연하" >연하
           <input type="radio" name="association" value="연상">연상
           <input type="radio" name="association" value="동갑">동갑
           <input type="radio" name="association" value="상관없음" checked="checked">상관없음
     </c:when>
     </c:choose>
     
     <br>
   <br>
   <hr>
   <br>
   <c:if test="${sessionScope.member.memberGender eq '여자' }">
      상대방 키(남) :
        <c:choose>
           <c:when test="${i.height eq '170이하'}">
                   <input type="radio" name="height" value="170이하" checked="checked">170cm이하
                 <input type="radio" name="height" value="171~175">171~175
                  <input type="radio" name="height" value="176~180">176~180
                  <input type="radio" name="height" value="181~185">181~185
                 <input type="radio" name="height" value="185이상">185이상
        </c:when>
        
           <c:when test="${i.height eq '171~175'}">
                   <input type="radio" name="height" value="170이하" >170cm이하
                 <input type="radio" name="height" value="171~175" checked="checked">171~175
                  <input type="radio" name="height" value="176~180">176~180
                  <input type="radio" name="height" value="181~185">181~185
                 <input type="radio" name="height" value="185이상">185이상
        </c:when>
        
           <c:when test="${i.height eq '176~180'}">
                   <input type="radio" name="height" value="170이하" >170cm이하
                 <input type="radio" name="height" value="171~175">171~175
                  <input type="radio" name="height" value="176~180" checked="checked">176~180
                  <input type="radio" name="height" value="181~185">181~185
                 <input type="radio" name="height" value="185이상">185이상
        </c:when>
        
           <c:when test="${i.height eq '181~185'}">
                   <input type="radio" name="height" value="170이하" >170cm이하
                 <input type="radio" name="height" value="171~175">171~175
                  <input type="radio" name="height" value="176~180">176~180
                  <input type="radio" name="height" value="181~185" checked="checked">181~185
                 <input type="radio" name="height" value="185이상">185이상
        </c:when>
        
           <c:when test="${i.height eq '185이상'}">
                   <input type="radio" name="height" value="170이하" >170cm이하
                 <input type="radio" name="height" value="171~175">171~175
                  <input type="radio" name="height" value="176~180">176~180
                  <input type="radio" name="height" value="181~185">181~185
                 <input type="radio" name="height" value="185이상" checked="checked">185이상
           </c:when>
        </c:choose>
   </c:if>
     <c:if test="${sessionScope.member.memberGender == '남자' }">
        상대방 키(여) :
        <c:choose>
        <c:when test="${i.height eq '160cm이하'}">
              <input type="radio" name="height" value="160cm이하" checked="checked">160cm이하
                 <input type="radio" name="height" value="161~165">161~165
                  <input type="radio" name="height" value="166~170">166~170
                  <input type="radio" name="height" value="171~175">171~175
                 <input type="radio" name="height" value="176이상">176이상
        </c:when>
        
        <c:when test="${i.height eq '161~165'}">
              <input type="radio" name="height" value="160cm이하" >160cm이하
                 <input type="radio" name="height" value="161~165" checked="checked">161~165
                  <input type="radio" name="height" value="166~170">166~170
                  <input type="radio" name="height" value="171~175">171~175
                 <input type="radio" name="height" value="176이상">176이상
        </c:when>
        
        <c:when test="${i.height eq '166~170'}">
              <input type="radio" name="height" value="160cm이하" >160cm이하
                 <input type="radio" name="height" value="161~165">161~165
                  <input type="radio" name="height" value="166~170" checked="checked">166~170
                  <input type="radio" name="height" value="171~175">171~175
                 <input type="radio" name="height" value="176이상">176이상
        </c:when>
        
        <c:when test="${i.height eq '171~175'}">
              <input type="radio" name="height" value="160cm이하" >160cm이하
                 <input type="radio" name="height" value="161~165">161~165
                  <input type="radio" name="height" value="166~170">166~170
                  <input type="radio" name="height" value="171~175" checked="checked">171~175
                 <input type="radio" name="height" value="176이상">176이상
        </c:when>
        
        <c:when test="${i.height eq '176이상'}">
              <input type="radio" name="height" value="160cm이하" >160cm이하
                 <input type="radio" name="height" value="161~165">161~165
                  <input type="radio" name="height" value="166~170">166~170
                  <input type="radio" name="height" value="171~175">171~175
                 <input type="radio" name="height" value="176이상" checked="checked">176이상
        </c:when>
        </c:choose>
     </c:if>
   
     <br>
           
   <br>
   <hr>
   <br>
   
   <c:if test="${sessionScope.member.memberGender eq '여자' }">
     상대방 외형(남) :
     <c:choose>
     <c:when test="${i.form eq '마름'}">
                 <input type="radio" name="form" value="마름" checked="checked">마름
                   <input type="radio" name="form" value="보통">보통
                   <input type="radio" name="form" value="근육질">근육질
                   <input type="radio" name="form" value="통통">통통
     </c:when>
     
        <c:when test="${i.form eq '보통'}">
                 <input type="radio" name="form" value="마름" >마름
                   <input type="radio" name="form" value="보통" checked="checked">보통
                   <input type="radio" name="form" value="근육질">근육질
                   <input type="radio" name="form" value="통통">통통
     </c:when>
     
        <c:when test="${i.form eq '근육질'}">
                 <input type="radio" name="form" value="마름" >마름
                   <input type="radio" name="form" value="보통">보통
                   <input type="radio" name="form" value="근육질" checked="checked">근육질
                   <input type="radio" name="form" value="통통">통통
     </c:when>
     
        <c:when test="${i.form eq '통통'}">
                 <input type="radio" name="form" value="마름" >마름
                   <input type="radio" name="form" value="보통">보통
                   <input type="radio" name="form" value="근육질">근육질
                   <input type="radio" name="form" value="통통" checked="checked">통통
     </c:when>
     
     </c:choose>
              
</c:if>
   
   <c:if test="${sessionScope.member.memberGender == '남자' }">
     상대방 외형(여) :
     
     <c:choose>
     <c:when test="${i.form eq '마름'}">
                 <input type="radio" name="form" value="마름" checked="checked">마름
                   <input type="radio" name="form" value="보통">보통
                   <input type="radio" name="form" value="글레머">글레머
                   <input type="radio" name="form" value="통통">통통
     </c:when>
     
        <c:when test="${i.form eq '보통'}">
                 <input type="radio" name="form" value="마름" >마름
                   <input type="radio" name="form" value="보통" checked="checked">보통
                   <input type="radio" name="form" value="글레머" >글레머
                   <input type="radio" name="form" value="통통" >통통
     </c:when>
     
        <c:when test="${i.form eq '글레머'}">
                 <input type="radio" name="form" value="마름" >마름
                   <input type="radio" name="form" value="보통" >보통
                   <input type="radio" name="form" value="글레머" checked="checked">글레머
                   <input type="radio" name="form" value="통통" >통통
     </c:when>
     
        <c:when test="${i.form eq '통통'}">
                 <input type="radio" name="form" value="마름" >마름
                   <input type="radio" name="form" value="보통" >보통
                   <input type="radio" name="form" value="글레머" >글레머
                   <input type="radio" name="form" value="통통" checked="checked">통통
     </c:when>
     </c:choose>
 </c:if>   
     <br>           
   <br>
   <hr>
   <br>
   <c:if test="${sessionScope.member.memberGender eq '여자' }">
     내가 원하는 당신의 성향(남) :
     <c:choose>
     <c:when test="${i.style01 eq '샤프함'}">
                 <input type="radio" name="style01" value="샤프함" checked="checked">샤프함
                  <input type="radio" name="style01" value="귀여움" >귀여움
                  <input type="radio" name="style01" value="지적임">지적임
                   <input type="radio" name="style01" value="푸근함">푸근함
                  <input type="radio" name="style01" value="평범함">평범함
                   <input type="radio" name="style01" value="도도함">도도함
     </c:when>
     
     <c:when test="${i.style01 eq '귀여움'}">
                 <input type="radio" name="style01" value="샤프함" >샤프함
                  <input type="radio" name="style01" value="귀여움" checked="checked">귀여움
                  <input type="radio" name="style01" value="지적임">지적임
                   <input type="radio" name="style01" value="푸근함">푸근함
                  <input type="radio" name="style01" value="평범함">평범함
                   <input type="radio" name="style01" value="도도함">도도함
     </c:when>
     
     <c:when test="${i.style01 eq '지적임'}">
                 <input type="radio" name="style01" value="샤프함" >샤프함
                  <input type="radio" name="style01" value="귀여움" >귀여움
                  <input type="radio" name="style01" value="지적임" checked="checked">지적임
                   <input type="radio" name="style01" value="푸근함">푸근함
                  <input type="radio" name="style01" value="평범함">평범함
                   <input type="radio" name="style01" value="도도함">도도함
     </c:when>
     
     <c:when test="${i.style01 eq '푸근함'}">
                 <input type="radio" name="style01" value="샤프함" >샤프함
                  <input type="radio" name="style01" value="귀여움" >귀여움
                  <input type="radio" name="style01" value="지적임">지적임
                   <input type="radio" name="style01" value="푸근함" checked="checked">푸근함
                  <input type="radio" name="style01" value="평범함">평범함
                   <input type="radio" name="style01" value="도도함">도도함
     </c:when>
     
     <c:when test="${i.style01 eq '평범함'}">
                 <input type="radio" name="style01" value="샤프함" >샤프함
                  <input type="radio" name="style01" value="귀여움" >귀여움
                  <input type="radio" name="style01" value="지적임">지적임
                   <input type="radio" name="style01" value="푸근함">푸근함
                  <input type="radio" name="style01" value="평범함" checked="checked">평범함
                   <input type="radio" name="style01" value="도도함">도도함
     </c:when>
     
     <c:when test="${i.style01 eq '도도함'}">
                 <input type="radio" name="style01" value="샤프함" >샤프함
                  <input type="radio" name="style01" value="귀여움" >귀여움
                  <input type="radio" name="style01" value="지적임">지적임
                   <input type="radio" name="style01" value="푸근함">푸근함
                  <input type="radio" name="style01" value="평범함">평범함
                   <input type="radio" name="style01" value="도도함" checked="checked">도도함
     </c:when>
     </c:choose>
</c:if>
   
   
   <c:if test="${sessionScope.member.memberGender == '남자' }">
     내가 원하는 당신의 성향(여) :
     <c:choose>
     <c:when test="${i.style01 eq '귀여움'}">
                      <input type="radio" name="style01" value="귀여움"checked="checked">귀여움
                      <input type="radio" name="style01" value="섹시함">섹시함
                      <input type="radio" name="style01" value="단아함">단아함
                      <input type="radio" name="style01" value="세련함">세련함
                      <input type="radio" name="style01" value="까칠함">까칠함
                      <input type="radio" name="style01" value="시크함">시크함
     </c:when>
     
        <c:when test="${i.style01 eq '섹시함'}">
                      <input type="radio" name="style01" value="귀여움">귀여움
                      <input type="radio" name="style01" value="섹시함" checked="checked">섹시함
                      <input type="radio" name="style01" value="단아함">단아함
                      <input type="radio" name="style01" value="세련함">세련함
                      <input type="radio" name="style01" value="까칠함">까칠함
                      <input type="radio" name="style01" value="시크함">시크함
     </c:when>
     
        <c:when test="${i.style01 eq '단아함'}">
                      <input type="radio" name="style01" value="귀여움">귀여움
                      <input type="radio" name="style01" value="섹시함">섹시함
                      <input type="radio" name="style01" value="단아함" checked="checked">단아함
                      <input type="radio" name="style01" value="세련함">세련함
                      <input type="radio" name="style01" value="까칠함">까칠함
                      <input type="radio" name="style01" value="시크함">시크함
     </c:when>
     
        <c:when test="${i.style01 eq '세련함'}">
                      <input type="radio" name="style01" value="귀여움">귀여움
                      <input type="radio" name="style01" value="섹시함">섹시함
                      <input type="radio" name="style01" value="단아함">단아함
                      <input type="radio" name="style01" value="세련함" checked="checked">세련함
                      <input type="radio" name="style01" value="까칠함">까칠함
                      <input type="radio" name="style01" value="시크함">시크함
     </c:when>
     
        <c:when test="${i.style01 eq '까칠함'}">
                      <input type="radio" name="style01" value="귀여움">귀여움
                      <input type="radio" name="style01" value="섹시함">섹시함
                      <input type="radio" name="style01" value="단아함">단아함
                      <input type="radio" name="style01" value="세련함">세련함
                      <input type="radio" name="style01" value="까칠함" checked="checked">까칠함
                      <input type="radio" name="style01" value="시크함">시크함
     </c:when>
     
        <c:when test="${i.style01 eq '시크함'}">
                      <input type="radio" name="style01" value="귀여움">귀여움
                      <input type="radio" name="style01" value="섹시함">섹시함
                      <input type="radio" name="style01" value="단아함">단아함
                      <input type="radio" name="style01" value="세련함">세련함
                      <input type="radio" name="style01" value="까칠함">까칠함
                      <input type="radio" name="style01" value="시크함" checked="checked">시크함
     </c:when>
     
     </c:choose>
 </c:if>            
     <br>          
   <br>
   <hr>
   <br>
     내가 원하는  얼굴상은 : 
     <c:choose>
     <c:when test="${i.style02 eq '강아지상'}">
                  <input type="radio" name="style02" value="강아지상" checked="checked">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '고양이상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상" checked="checked">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '공룡상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상" checked="checked">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '곰상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상" checked="checked">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '병아리상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상" checked="checked">병아리상
                  <input type="radio" name="style02" value="호랑이상" >호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '호랑이상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상" checked="checked">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '여우상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상" checked="checked">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '토끼상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상" checked="checked">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '다람쥐상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상" checked="checked">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '비버상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상" checked="checked">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '밥상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상" checked="checked">밥상
                  <input type="radio" name="style02" value="유민상">유민상
     </c:when>
     
     <c:when test="${i.style02 eq '유민상'}">
                  <input type="radio" name="style02" value="강아지상">강아지상
                  <input type="radio" name="style02" value="고양이상">고양이상
                  <input type="radio" name="style02" value="공룡상">공룡상
                  <input type="radio" name="style02" value="곰상">곰상
                  <input type="radio" name="style02" value="병아리상">병아리상
                  <input type="radio" name="style02" value="호랑이상">호랑이상
                   <input type="radio" name="style02" value="여우상">여우상
                  <input type="radio" name="style02" value="토끼상">토끼상
                  <input type="radio" name="style02" value="다람쥐상">다람쥐상
                  <input type="radio" name="style02" value="비버상">비버상
                  <input type="radio" name="style02" value="밥상">밥상
                  <input type="radio" name="style02" value="유민상" checked="checked">유민상
     </c:when>
     </c:choose>
                  
     <br>         
   <br>
   <hr>
   <br>
     눈 스타일 : 
     <c:choose>
     <c:when test="${i.yn01 eq '무쌍'}">
            <input type="radio" name="yn01" value="무쌍" checked="checked">무쌍
            <input type="radio" name="yn01" value="유쌍">유쌍
     </c:when>
     
     <c:when test="${i.yn01 eq '유쌍'}">
            <input type="radio" name="yn01" value="무쌍" >무쌍
            <input type="radio" name="yn01" value="유쌍" checked="checked">유쌍
     </c:when>
     </c:choose>
     
     <br>
   <br>
   <hr>
   <br>
     먹는 스타일 : 
     <c:choose>
     <c:when test="${i.yn02 eq '부먹'}">
              <input type="radio" name="yn02" value="부먹" checked="checked">부먹
             <input type="radio" name="yn02" value="찍먹">찍먹
     </c:when>
     
     <c:when test="${i.yn02 eq '찍먹'}">
              <input type="radio" name="yn02" value="부먹" >부먹
             <input type="radio" name="yn02" value="찍먹" checked="checked">찍먹
     </c:when>
     </c:choose>
     
     <br>
   <br>
   <hr>
   <br>   
     리드 유형 :  
     <c:choose>
     <c:when test="${i.yn03 eq '낮져밤이'}">
              <input type="radio" name="yn03" value="낮져밤이" checked="checked">낮져밤이
             <input type="radio" name="yn03" value="낮이밤져">낮이밤져
             <input type="radio" name="yn03" value="낮이밤이">낮이밤이
             <input type="radio" name="yn03" value="낮져밤져">낮져밤져
     </c:when>
     
     <c:when test="${i.yn03 eq '낮이밤져'}">
              <input type="radio" name="yn03" value="낮져밤이" >낮져밤이
             <input type="radio" name="yn03" value="낮이밤져" checked="checked">낮이밤져
             <input type="radio" name="yn03" value="낮이밤이">낮이밤이
             <input type="radio" name="yn03" value="낮져밤져">낮져밤져
     </c:when>
     
     <c:when test="${i.yn03 eq '낮이밤이'}">
              <input type="radio" name="yn03" value="낮져밤이" >낮져밤이
             <input type="radio" name="yn03" value="낮이밤져">낮이밤져
             <input type="radio" name="yn03" value="낮이밤이" checked="checked">낮이밤이
             <input type="radio" name="yn03" value="낮져밤져">낮져밤져
     </c:when>
     
     <c:when test="${i.yn03 eq '낮져밤져'}">
              <input type="radio" name="yn03" value="낮져밤이" >낮져밤이
             <input type="radio" name="yn03" value="낮이밤져">낮이밤져
             <input type="radio" name="yn03" value="낮이밤이">낮이밤이
             <input type="radio" name="yn03" value="낮져밤져" checked="checked">낮져밤져
     </c:when>
     </c:choose>
            
     <br>
   <br>
   <hr>
   <br>     
     당신은  : 
     <c:choose>
     <c:when test="${i.yn04 eq '산'}">
           <input type="radio" name="yn04" value="산" checked="checked">산
            <input type="radio" name="yn04" value="바다">바다
     </c:when>
     
     <c:when test="${i.yn04 eq '바다'}">
           <input type="radio" name="yn04" value="산">산
            <input type="radio" name="yn04" value="바다" checked="checked">바다
     </c:when>
     </c:choose>

   <br>
   <br>
   <hr>
   <br>   
     당신은 : 
     <c:choose>
     <c:when test="${i.yn05 eq '밥'}">
            <input type="radio" name="yn05" value="밥" checked="checked">밥
           <input type="radio" name="yn05" value="면">면
     </c:when>
     
     <c:when test="${i.yn05 eq '면'}">
            <input type="radio" name="yn05" value="밥">밥
           <input type="radio" name="yn05" value="면" checked="checked">면
     </c:when>
     </c:choose>
          
     <br> 
   <br>
   <hr>
   <br>   
     당신은 : 
     <c:choose>
     <c:when test="${i.yn06 eq '문자'}">
           <input type="radio" name="yn06" value="문자" checked="checked">문자
           <input type="radio" name="yn06" value="전화">전화
     </c:when>
     
     <c:when test="${i.yn06 eq '전화' }">
           <input type="radio" name="yn06" value="문자">문자
           <input type="radio" name="yn06" value="전화" checked="checked">전화
     </c:when>
     </c:choose>
           
     <br>  
   <br>
   <hr>
   <br>   
     당신은 :
     <c:choose>
     <c:when test="${i.yn07 eq '짜장'}">
           <input type="radio" name="yn07" value="짜장" checked="checked">짜장
           <input type="radio" name="yn07" value="짬뽕">짬뽕
     </c:when>
     
     <c:when test="${i.yn07 eq '짬뽕'}">
           <input type="radio" name="yn07" value="짜장">짜장
           <input type="radio" name="yn07" value="짬뽕" checked="checked">짬뽕
     </c:when>
     </c:choose>
           
     <br>  
   <br>
   <hr>
   <br>   
     당신은 : 
     <c:choose>
     <c:when test="${i.yn08 eq '맥주'}">
           <input type="radio" name="yn08" value="맥주" checked="checked">맥주파
           <input type="radio" name="yn08" value="소주">소주파
     </c:when>
     
        <c:when test="${i.yn08 eq '소주'}">
           <input type="radio" name="yn08" value="맥주">맥주파
           <input type="radio" name="yn08" value="소주" checked="checked">소주파
     </c:when>
     </c:choose>
  
     <br>
   <br>
   <hr>
   <br>
     당신은 :
     <c:choose>
     <c:when test="${i.yn09 eq '소'}">
           <input type="radio" name="yn09" value="소" checked="checked">소
           <input type="radio" name="yn09" value="돼지">돼지
     </c:when>
     
     <c:when test="${i.yn09 eq '돼지'}">
           <input type="radio" name="yn09" value="소">소
           <input type="radio" name="yn09" value="돼지" checked="checked">돼지
     </c:when>
     </c:choose>   
     
     <br>
   <br>
   <hr>
   <br>
   당신은 : 
   <c:choose>
   <c:when test="${i.yn10 eq '여름'}">
            <input type="radio" name="yn10" value="여름" checked="checked">여름
           <input type="radio" name="yn10" value="겨울" >겨울        
   </c:when>
   
   <c:when test="${i.yn10 eq '겨울'}">
            <input type="radio" name="yn10" value="여름" >여름
           <input type="radio" name="yn10" value="겨울" checked="checked">겨울        
   </c:when>
   </c:choose>
      
     <br>
   <br>
   <hr>
   <br>   
     당신은 :
     <c:choose>
     <c:when test="${i.yn11 eq '순한맛'}">
           <input type="radio" name="yn11" value="순한맛" checked="checked">순한맛
           <input type="radio" name="yn11" value="매운맛">매운맛
     </c:when>
            
     <c:when test="${i.yn11 eq '매운맛'}">
           <input type="radio" name="yn11" value="순한맛">순한맛
           <input type="radio" name="yn11" value="매운맛"  checked="checked">매운맛
     </c:when>
            
     </c:choose>
          
     <br>
   <br>
   <hr>
   <br>   
     당신은 : 
     <c:choose>
     <c:when test="${i.yn12 eq '사랑'}">
           <input type="radio" name="yn12" value="사랑" checked="checked">사랑
           <input type="radio" name="yn12" value="우정">우정
     </c:when>
     
         <c:when test="${i.yn12 eq '우정'}">
           <input type="radio" name="yn12" value="사랑">사랑
           <input type="radio" name="yn12" value="우정" checked="checked">우정
          
     </c:when>
     </c:choose>
     <br>
     <br>  
   <hr>
   <br>
   <div style="text-align:center">
   <input type="submit" class="btn" value="수정하기"  >
    </div>   
        <br>
        <br>
        <br>
      </form>
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
        
        <script type="text/javascript">
            var msnry = new Masonry('.blog_area');
        </script>
        
        <script src="/resources/assets/js/plugins.js"></script>
        <script src="/resources/assets/js/main.js"></script>

    </body>
</html>






