<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript"></script>
    <script>
        $(document).ready(function() { // 나 동작한다 준비한다라고 알려준다 -> HTML의 모든태그가 작성되고나면 자동으로 실행되는 함수(화면준비가 끝나면)
            $("form").submit(function() { //form을 submit하는 동작중 -> form태그를 제출하려고 하는 경우 발생하는 이벤트
                var checks = $("[type=radio]:checked"); //타입이 radio로 체크되어있는 애들을 전체 가져올건데 -> type속성의 값이 radio인 html요소 중 체크된 요소만 선택
                if (checks.length != 20) { // 컬럼의 갯수가 20개인데 20개가  아니면   ->   체크된 radio버튼의 갯수가 20개가 아닌경우(20개를 선택하지 않았을 때)
                    alert("체크란을 다시 확인해주세요."); // alert창으로 알려줄거야 단 하나라도 빠지면안되고
                    return false; // 리턴을 해주지 않으니까 넘어가지 않을거야. (조건이 충족되면 넘어가겠지?)
                };
                //체크된 radio버튼의 갯수가 20개인경우 form태그를 제출
            });
        })

        /* $("input:radio[name=bloodType].is(:checked)==false"){ */

    </script>

    <style>
        span {
            display: table-cell;
            padding-left: 10px;
            text-align: center;
            vertical-align: middle;
            width: 100px;
            margin: 0 auto;
        
        }
      
        .radioBox {
            display: none;
            
        }

        .next,
        .prev {
            display: none;
        }

        input[type=radio] {
            display: none;
            
        }

        /*  input[name=bloodType]{
             position: absolute; 
        } 
         input[name=drinkCount]{
             position: absolute; 
        } 
        input[name=smoking]{
             position: absolute;
        } */

        /* 혈액형 */
        input+label {
            display: inline-block;
            width: 90px;
            height: 90px;
            border: none;
            background-size: 90px 90px;
            margin-left: 5%;
            
        }


        /* .dr{
        display: inline-block;
        margin-left: 10px; 
        }
        .dr>span{
           font-weight: bolder;   
        } */

        /* 혈액형 */
        input[name=bloodType]:checked+label:before {
            opacity: 0;
        }

        input[name=bloodType]+label:before {
            content="";
            border: 1px solid;
            display: inline-block;
            width: 90px;
            height: 90px;
            background-size: 90px 90px;
            
        }

        .radioBox>label {

            margin: 0;
            border-radius: 20px;
            background-color: rgba(255, 0, 137, 0.21);
            width: 100px;
            height: 100px;

        }

        label:hover {
            opacity: 0.5;
        }

        /* 음주 횟수 */
        input[name=drinkCount]:checked+label:before {
            opacity: 0;
        }

        input[name=drinkCount]+label:before {
            content="";
            border: 1px solid;
            display: inline-block;
            width: 100px;
            height: 100px;
            background-size: 100px 100px;
        }

        label:hover {
            opacity: 0.5;
        }

        /* 흡연 여부 */
        input[name=smoking]:checked+label:before {
            opacity: 0;
        }

        input[name=smoking]+label:before {
            content="";
            border: 1px solid;
            display: inline-block;
            width: 100px;
            height: 100px;
            background-size: 100px 100px;
        }

        label:hover {
            opacity: 0.5;
        }

    </style>

    <script>
        $(document).ready(function() {
            $(".radioBox").eq(0).show();
            $(".next").click(function() {
                $(this).parent().hide();
                $(this).parent().next().show();
            });
            $(".prev").click(function() {
                $(this).parent().hide();
                $(this).parent().prev().show();
            });
            $("label").click(function() {
                $(this).parents(".radioBox").children().last().click();

            });

        });

    </script>


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

        <section id="hello" class="blog-banner bg-mega" style="background-image : url

('/resources/assets/images/background/3-1.png');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="main_home text-center">
                        <div class="about_text">
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; 

font-size:7em;">연애가 쉬워지는 곳,<br> 연애인</h1>
                        </div>
                    </div>
                </div>
                <!--End off row-->
            </div>
            <!--End off container -->
        </section>
        <!--End off Home Sections-->


        <!--Blog Features Section-->


        <section id="feature" class="feature p-top-100">

            <div class="container">

                <form action="/insertIdeal.do" method="get">

                    <input type="hidden" name="memberId" value="${m.memberId }">
                    <br>
                    <br>

                    <div class="radioBox" style="width: 800px; margin: auto; text-align:center">
                        <h1> ${m.memberId }님의 원하는 상대방 혈액형은?</h1>

                        <input type="radio" name="bloodType" id="b1" value="A형">
                        <label for="b1" style="text-align:center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 20px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                A
                            </div>
                        </label>


                        <input type="radio" name="bloodType" id="b2" value="B형">
                        <label for="b2" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 20px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                B
                            </div>
                        </label>



                        <input type="radio" name="bloodType" id="b3" value="O형">
                        <label for="b3" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 20px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                O
                            </div>
                        </label>


                  
                        <input type="radio" name="bloodType" id="b4" value="AB형">
                        <label for="b4" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 20px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                AB
                            </div>
                        </label>


                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님의 원하는 상대방 음주 횟수는?</h1>


                        <input type="radio" name="drinkCount" id="dc1" value="주3회이상">
                        <label for="dc1" style="text-align: center;">
                            <div style="text-align:center; padding:0px; margin:9px; font-size: 16px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                주3회<br>이상
                            </div>
                        </label>

                        <input type="radio" name="drinkCount" id="dc2" value="주2회">
                        <label for="dc2" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                주2
                            </div>
                        </label>

                        <input type="radio" name="drinkCount" id="dc3" value="주1회">
                        <label for="dc3" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                주1
                            </div>
                        </label>

                        <input type="radio" name="drinkCount" id="dc4" value="월2회">
                        <label for="dc4" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                월2
                            </div>
                        </label>

                        <input type="radio" name="drinkCount" id="dc5" value="월1회">
                        <label for="dc5" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                월1
                            </div>
                        </label>

                        <input type="radio" name="drinkCount" id="dc6" value="안마신다">
                        <label for="dc6" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                        No
                            </div>
                        </label>

                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방 흡연 여부는?</h1>

                        <input type="radio" name="smoking" id="sm1" value="흡연">
                        <label for="sm1" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    흡연
                           </div>
                        </label>

                        <input type="radio" name="smoking" id="sm2" value="비흡연">
                        <label for="sm2" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                        NO
                            </div>
                        </label>

                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님의 원하는 상대방 연령대는?</h1>

                        <input type="radio" name="association" id="ac1" value="연하">
                        <c:if test="${sessionScope.member.memberGender == '여자' }">
                            <label for="ac1" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    연하
                           </div>
                            </label>
                        </c:if>

                        <c:if test="${sessionScope.member.memberGender == '남자' }">
                            <label for="ac1" style="text-align: center;">
                               <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    연하
                           </div>
                            </label>
                        </c:if>

                        <input type="radio" name="association" id="ac2" value="연상">
                        <c:if test="${sessionScope.member.memberGender == '여자' }">
                            <label for="ac2" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    연상
                           </div>
                            </label>
                        </c:if>

                        <c:if test="${sessionScope.member.memberGender == '남자' }">
                            <label for="ac2" style="text-align: center;">
                               <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    연상
                           </div>
                            </label>
                        </c:if>

                        <input type="radio" name="association" id="ac3" value="동갑">
                        <c:if test="${sessionScope.member.memberGender == '여자' }">
                            <label for="ac3" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    동갑
                           </div>
                            </label>
                        </c:if>

                        <c:if test="${sessionScope.member.memberGender == '남자' }">
                            <label for="ac3" style="text-align: center;">
                              <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    동갑
                           </div>
                            </label>
                        </c:if>

                        <input type="radio" name="association" id="ac4" value="상관없음">
                        <label for="ac4" style="text-align: center;">
                           <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                        NO
                           </div>
                        </label>

                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>


                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 키는?</h1>
                        <c:if test="${sessionScope.member.memberGender eq '여자' }">
                        
                            <input type="radio" name="height" id="ht1" value="170이하">
                            <label for="ht1" style="text-align: center;">
                                <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    170 이하
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht2" value="171~175">
                            <label for="ht2" style="text-align: center;">
                               <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    171<br>175
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht3" value="176~180">
                            <label for="ht3" style="text-align: center;">
                                <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                   176<br>180 
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht4" value="181~185">
                            <label for="ht4" style="text-align: center;">
                               <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                               181<br>185
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht5" value="185이상">
                            <label for="ht5" style="text-align: center;">
                                <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    185<br>이상
                           </div>
                            </label>
                        </c:if>

                        
                     <c:if test="${sessionScope.member.memberGender == '남자' }">
                            <input type="radio" name="height" id="ht6" value="160cm이하">
                            <label for="ht6" style="text-align: center;">
                            <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    160 이하
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht7" value="161~165">
                            <label for="ht7" style="text-align: center;">
                                 <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    161<br>165
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht8" value="166~170">
                            <label for="ht8" style="text-align: center;">
                                <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    166<br>170
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht9" value="171~175">
                            <label for="ht9" style="text-align: center;">
                                <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    171<br>175
                           </div>
                            </label>

                            <input type="radio" name="height" id="ht10" value="176이상">
                            <label for="ht10" style="text-align: center;">
                                 <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    176<br>이상
                                  
                           </div>
                            </label>
                     </label>
                        </c:if>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 체형은?</h1>
                        <c:if test="${sessionScope.member.memberGender == '여자' }">
                            <input type="radio" name="form" id="fm1" value="마름">
                            <label for="fm1" style="text-align: center;">
                                   <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    마름
                           </div>
                            </label>
                            <input type="radio" name="form" id="fm2" value="보통">
                            <label for="fm2" style="text-align: center;">
                                  <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    보통
                           </div>
                            </label>
                            <input type="radio" name="form" id="fm3" value="근육질">
                            <label for="fm3" style="text-align: center;">
                                  <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    근육
                           </div>
                            </label>
                            <input type="radio" name="form" id="fm4" value="통통">
                            <label for="fm4" style="text-align: center;">
                                    <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    통통
                           </div>
                            </label>

                        </c:if>

                        <c:if test="${sessionScope.member.memberGender == '남자' }">
                            <input type="radio" name="form" id="fm5" value="마름">
                            <label for="fm5" style="text-align: center;">
                                   <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    마름
                           </div>
                            </label>
                            <input type="radio" name="form" id="fm6" value="보통">
                            <label for="fm6" style="text-align: center;">
                                  <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    보통
                           </div>
                            </label>
                            <input type="radio" name="form" id="fm7" value="글레머">
                            <label for="fm7" style="text-align: center;">
                                  <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    글램
                           </div>
                            </label>
                            <input type="radio" name="form" id="fm8" value="통통">
                            <label for="fm8" style="text-align: center;">
                                   <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    통통
                           </div>
                            </label>
                        </c:if>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 성격은?</h1>
                        <c:if test="${sessionScope.member.memberGender == '여자' }">
                            <input type="radio" name="style01" id="sy1" value="샤프함">
                            <label for="sy1" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    샤프
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy2" value="귀여움">
                            <label for="sy2" style="text-align: center;">
                               <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    귀염
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy3" value="지적임">
                            <label for="sy3" style="text-align: center;">
                              <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    지적
                           </div>

                            </label>
                            <input type="radio" name="style01" id="sy4" value="푸근함">
                            <label for="sy4" style="text-align: center;">
                              <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    푸근
                           </div>

                            </label>
                            <input type="radio" name="style01" id="sy5" value="평범함">
                            <label for="sy5" style="text-align: center;">
                                 <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    평범
                           </div>

                            </label>
                            <input type="radio" name="style01" id="sy6" value="도도함">
                            <label for="sy6" style="text-align: center;">
                                  <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    도도
                           </div>

                            </label>
                        </c:if>


                        <c:if test="${sessionScope.member.memberGender eq '남자' }">
                            <input type="radio" name="style01" id="sy7" value="귀여움">
                            <label for="sy7" style="text-align: center;">
                              <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    귀염
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy8" value="섹시함">
                            <label for="sy8" style="text-align: center;">
                                <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    섹시
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy9" value="단아함">
                            <label for="sy9" style="text-align: center;">
                                <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    단아
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy10" value="세련함">
                            <label for="sy10" style="text-align: center;">
                                 <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    세련
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy11" value="까칠함">
                            <label for="sy11" style="text-align: center;">
                                 <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    까칠
                           </div>
                            </label>
                            <input type="radio" name="style01" id="sy12" value="시크함">
                            <label for="sy12" style="text-align: center;">
                                 <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    시크
                           </div>
                            </label>
                        </c:if>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 얼굴상은?</h1>
                        <input type="radio" name="style02" id="sy13" value="강아지상">
                        <label for="sy13" style="text-align: center;">
                              <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    멍멍상  
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy14" value="고양이상">
                        <label for="sy14" style="text-align: center;">
                            <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                          냥이상                  
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy15" value="공룡상">
                        <label for="sy15" style="text-align: center;">
                           <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    공룡상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy16" value="곰상">
                        <label for="sy16" style="text-align: center;">
                            <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    불곰상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy17" value="병아리상">
                        <label for="sy17" style="text-align: center;">
                              <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    삐약상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy18" value="호랑이상">
                        <label for="sy18" style="text-align: center;">
                              <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    호랭상
                           </div>
                        </label><br>
                        <input type="radio" name="style02" id="sy19" value="여우상">
                        <label for="sy19" style="text-align: center;">
                              <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    여우상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy20" value="토끼상">
                        <label for="sy20" style="text-align: center;">
                              <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    토끼상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy21" value="다람쥐상">
                        <label for="sy21" style="text-align: center;">
                              <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    다람상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy22" value="비버상">
                        <label for="sy22" style="text-align: center;">
                               <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    비버상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy23" value="밥상">
                        <label for="sy23" style="text-align: center;">
                                 <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    찰밥상
                           </div>
                        </label>
                        <input type="radio" name="style02" id="sy24" value="유민상">
                        <label for="sy24" style="text-align: center;">
                               <div style="text-align:center; padding:14px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    유민상
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 눈 스타일은?</h1>
                        <input type="radio" name="yn01" id="yn1" value="무쌍">
                        <label for="yn1" style="text-align: center;">
                          <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    무쌍
                           </div>
                        </label>
                        <input type="radio" name="yn01" id="yn2" value="유쌍">
                        <label for="yn2" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    유쌍
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방 먹는 스타일은?</h1>
                        <input type="radio" name="yn02" id="yn3" value="부먹">
                        <label for="yn3" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    부먹
                           </div>
                        </label>
                        <input type="radio" name="yn02" id="yn4" value="찍먹">
                        <label for="yn4" style="text-align: center;">
                           <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    찍먹
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방 스타일은?</h1>
                        <input type="radio" name="yn03" id="yn5" value="낮져밤이">
                        <label for="yn5" style="text-align: center;">
                           <div style="text-align:center; padding:16px; margin:9px; font-size: 16px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                            낮져<br>밤이
                           </div>
                        </label>
                        <input type="radio" name="yn03" id="yn6" value="낮이밤져">
                        <label for="yn6" style="text-align: center;">
                           <div style="text-align:center; padding:16px; margin:9px; font-size: 16px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                            낮이<br>밤져
                           </div>
                        </label>
                        <input type="radio" name="yn03" id="yn7" value="낮이밤이">
                        <label for="yn7" style="text-align: center;">
                            <div style="text-align:center; padding:16px; margin:9px; font-size: 16px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                            낮이<br>밤이
                           </div>
                        </label>
                        <input type="radio" name="yn03" id="yn8" value="낮져밤져">
                        <label for="yn8" style="text-align: center;">
                            <div style="text-align:center; padding:16px; margin:9px; font-size: 16px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                            낮져<br>밤져
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방이 좋아하는 곳은?</h1>
                        <input type="radio" name="yn04" id="yn9" value="산">
                        <label for="yn9" style="text-align: center;">
                              <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    산
                           </div>
                        </label>
                        <input type="radio" name="yn04" id="yn10" value="바다">
                        <label for="yn10" style="text-align: center;">
                              <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    바다
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 주?</h1>
                        <input type="radio" name="yn05" id="yn11" value="밥">
                        <label for="yn11" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    밥
                           </div>
                        </label>
                        <input type="radio" name="yn05" id="yn12" value="면">
                        <label for="yn12" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    면
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방 연락 스타일?</h1>
                        <input type="radio" name="yn06" id="yn13" value="문자">
                        <label for="yn13" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    문자
                           </div>
                        </label>
                        <input type="radio" name="yn06" id="yn14" value="전화">
                        <label for="yn14" style="text-align: center;">
                           <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    전화
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 중국집 스타일?</h1>
                        <input type="radio" name="yn07" id="yn15" value="짜장">
                        <label for="yn15" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                  짜장
                           </div>
                        </label>
                        <input type="radio" name="yn07" id="yn16" value="짬뽕">
                        <label for="yn16" style="text-align: center;">
                           <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                   짬뽕
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방이 찾는 술은?</h1>
                        <input type="radio" name="yn08" id="yn17" value="맥주">
                        <label for="yn17" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    맥주
                           </div>
                        </label>
                        <input type="radio" name="yn08" id="yn18" value="소주">
                        <label for="yn18" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    소주
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>


                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님은 애인과 외식을 하려합니다. 상대방이 어디 고기집에 가자고 했으면 좋겠습니까?</h1>
                        <input type="radio" name="yn09" id="yn19" value="소">
                        <label for="yn19" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    소
                           </div>
                        </label>
                        <input type="radio" name="yn09" id="yn20" value="돼지">
                        <label for="yn20" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    돼지
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는  엄청 더운 여름과 엄청 추운 겨울 중 상대방이 어느쪽을 택하였으면 좋겠습니까?</h1>
                        <input type="radio" name="yn10" id="yn21" value="여름">
                        <label for="yn21" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    여름
                           </div>
                        </label>
                        <input type="radio" name="yn10" id="yn22" value="겨울">
                        <label for="yn22" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    겨울
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방의 입맛 스타일?</h1>
                        <input type="radio" name="yn11" id="yn23" value="순한맛">
                        <label for="yn23" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    순한
                           </div>
                        </label>
                        <input type="radio" name="yn11" id="yn24" value="매운맛">
                        <label for="yn24" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    매운
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <button type="button" class="next">다음</button>
                    </div>

                    <div class="radioBox" style="text-align:center">
                        <h1> ${m.memberId }님이 원하는 상대방이 절벽에 매달린 나와 상대방 친구중 누굴 구해줬으면 좋겠습니까?</h1>
                        <input type="radio" name="yn12" id="yn25" value="사랑">
                        <label for="yn25" style="text-align: center;">
                            <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    사랑
                           </div>
                        </label>
                        <input type="radio" name="yn12" id="yn26" value="우정">
                        <label for="yn26" style="text-align: center;">
                             <div style="text-align:center; padding:20px; margin:9px; font-size: 18px; border: 2px dashed white; border-radius:15px; width: 80px; height: 80px;">
                                    우정
                           </div>
                        </label>
                        <button type="button" class="prev">이전</button>
                        <br>
                        <br>
                        <br>
                        <br>
                        <div style="text-align:center">
                            <input type="submit" class="btn" value="제출하기">
                        </div>

                    </div>
                    <input type="hidden" name="memberGender" value="${sessionScope.member.memberGender }">

                    <hr>



                </form>
            </div>

            <!--Our Work Section-->

        </section>
        <!--End off About section -->


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