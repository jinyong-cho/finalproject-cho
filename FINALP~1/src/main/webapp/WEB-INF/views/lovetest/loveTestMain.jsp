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
    <!--Google Fonts link-->
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/css/LoveTestMain.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Cute+Font|Do+Hyeon|Noto+Sans+KR|Sunflower:300&display=swap" rel="stylesheet">

    <style>
        div[name=loveDiv] {
            font-family: 'Nanum Gothic Coding', monospace;
            font-size: 22px;


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

        <section id="hello" class="blog-banner bg-mega" style="background-image : url('/resources/assets/images/background/3-1.png');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="main_home text-center">
                        <div class="about_text">
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; 

font-size:7em;">Love Test</h1>
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
                <div id="loveTestMain" style="height: 1100px; text-align: center;">
                        <div style="font-family: 'Quicksand', sans-serif; font-size: 80px;">Love Test</div>
                        <br>
                        <div style="font-size: 70px;font-family: 'Cute Font', cursive; color :black;">연애인 심리테스트</div>
                        <br>
                        <div style="position:relative">
                            <div>
                                <div id="ddiv" style="width:400px; height:400px; background-color:#FFD8D8; border-radius:50%; margin: auto; position: relative;">
                                    <div id="subDiv" style="font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:60px; text-align:center; font-size:60px;"><img src="/resources/assets/images/testMain.PNG" style="width:280px; height:280px;"></div>
                                </div>
                            </div>
                            <a href="/loveTest.do" style="font-size: 70px;">
                                <div id="loveDiv" style="position: absolute; left:120px; top:300px; width:300px; height:300px; float:left; text-align: center; background-color:#FF6C6C; border-radius:50%; font-family: 'Quicksand', sans-serif; color :black;"><br>Love</div>
                            </a>
                            <a href="/personalityTest.do" style="font-size:50px;">
                                <div id="personDiv" style="position: absolute; top:450px; right:450px; width:300px; height:300px; float:left; text-align: center; background-color:#DAD9FF; border-radius:50%; font-family: 'Quicksand', sans-serif; color :black;"><br>
                                    <div style="margin-top: 40px;">Personality</div>
                                </div>
                            </a>
                            <a href="/funTest.do" style="font-size: 70px;">
                                <div id="funDiv" style="position: absolute;   right:120px; top:300px; width:300px; height:300px; float:left; text-align: center; background-color:#B2EBF4; border-radius:50%; font-family: 'Quicksand', sans-serif;  color :black;"><br>Fun</div>
                            </a>
                        </div>
                </div>
          

            <!--Our Work Section-->

       
        <!--End off About section -->


        <!--Company section-->

        <script>
            $("#loveDiv").hover(function() {

                    $("#ddiv").css('background-color', '#FF6C6C');
                    $("#subDiv").html('사랑 심리테스트! <br> 당신이 추구하는 <br> 사랑이궁금하다면? ')
                    $("#subDiv").attr("style", "font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:140px; text-align:center; font-size:40px;");
                },
                function() {
                    $("#ddiv").css('background-color', '#FFD8D8');
                    $("#subDiv").html('<img src="/resources/assets/images/testMain.PNG" style="width:280px; height:280px;">')
                    $("#subDiv").attr("style", "font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:60px; text-align:center; font-size:40px;");
                }
            )

            $("#personDiv").hover(function() {

                    $("#ddiv").css('background-color', '#DAD9FF');
                    $("#subDiv").html('성격 심리테스트! <br> 당신을 낱낱히 <br>파헤쳐 드리겠습니다')
                    $("#subDiv").attr("style", "font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:140px; text-align:center; font-size:40px;");
                },
                function() {
                    $("#ddiv").css('background-color', '#FFD8D8');
                    $("#subDiv").html('<img src="/resources/assets/images/testMain.PNG" style="width:280px; height:280px;">')
                    $("#subDiv").attr("style", "font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:60px; text-align:center; font-size:40px;");
                }
            )

            $("#funDiv").hover(function() {

                    $("#ddiv").css('background-color', '#B2EBF4');
                    $("#subDiv").html('재미로 <br> 풀어보는<br>심리테스트! ')
                    $("#subDiv").attr("style", "font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:140px; text-align:center; font-size:40px;");
                },
                function() {
                    $("#ddiv").css('background-color', '#FFD8D8');
                    $("#subDiv").html('<img src="/resources/assets/images/testMain.PNG" style="width:280px; height:280px;">')
                    $("#subDiv").attr("style", "font-family: 'Cute Font', cursive; color :black; width:300px; position: absolute; right:50px; bottom:60px; text-align:center; font-size:40px;");
                }
            )
        </script>
         </div>
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