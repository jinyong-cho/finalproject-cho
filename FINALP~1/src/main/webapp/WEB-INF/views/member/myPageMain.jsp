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
<style>
    .myPageDiv {
        border: 1px solid;
        width: 150px;
        height: 150px;
        display: inline-block;
        text-align: center;
        font-family: 'Sunflower', sans-serif;
        background-color: white;
        margin-left: 10px;
        margin-top: 10px;
    }

    .imgicon {
        width: 100px;
        height: 80px;
        margin-top: 20px;
    }
    
    .myPageDiv:hover{
    	opacity: 0.3;
    }
</style>

<head>
    <meta charset="utf-8">
    <title>NOTICE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Sunflower:300&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
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
            <div class="top-search">
                <div class="container">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                    </div>
                </div>
            </div>
            <!-- End Top Search -->

            <div class="container">
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
                <div class="content" style="background-color :rgba(0, 137, 255, 0.04); width:1100px; height:900px; margin: auto;">
                    <div style="margin: auto;">
                        <div style=" margin: auto;font-family: 'Do Hyeon', sans-serif; font-size: 32px" align=center>마이 페이지</div>
                        <div style=" margin: 60px;" align=center><img src="/resources/upload/photo/${sessionScope.member.memberRePhotoName }" style="width:300px; height:300px;"></div>
                        <div style=" margin: auto; font-size: 40px; font-weight: 600" align=center>${sessionScope.member.memberNickName }</div>
                    </div>
                    <div style="width: 900px; margin-left : 140px">
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="memberUpdateBtn"><img src="/resources/assets/images/회원정보수정.png" class="imgicon" /><br>회원 정보 수정</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="reciveMessageBoxBtn"><img src="/resources/assets/images/쪽지함.png" class="imgicon" /><br>받은쪽지함</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="sendMessageBoxBtn"><img src="/resources/assets/images/쪽지함.png" class="imgicon" /><br>보낸쪽지함</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="paymentBtn"><img src="/resources/assets/images/결제내역.png" class="imgicon" /><br>결제내역</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="managerConsultingFrm"><img src="/resources/assets/images/매니저상담신청.png" class="imgicon" /><br>1:1매니저상담신청</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="myStyleAddrFrmBtn"><img src="/resources/assets/images/나의성향.png" class="imgicon" /><br>나는 이런사람입니다</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="idealStyleAddFrmBtn"><img src="/resources/assets/images/이상형.png" class="imgicon" /><br>이상형 타입</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="matchingBtn"><img src="/resources/assets/images/매칭하기.png" class="imgicon" /><br>매칭하기</div>
                        <div class="myPageDiv" style="width: 150px; height:150px; cursor: pointer;" id="chatBtn"><img src="/resources/assets/images/채팅방접속.png" class="imgicon" /><br>채팅방접속</div>
                        <a href="/sendMessage.do" data-target="#myModal" data-toggle="modal">
                            <div class="myPageDiv" style="width: 150px; height:150px; color:gray;"><img src="/resources/assets/images/쪽지보내기.png" class="imgicon" /><br>쪽지보내기</div>
                        </a>
                    </div>
                    <!-- <a href="/mySelfTest.do">나의 성향 맛보기</a><br> -->
                </div>
            </div><!-- End off container -->
        </section><!-- End off blog Fashion -->

      <!-- 쪽지보내기 모달창 -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content" style="height: 450px;">
                    <div class="modal-header">
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                    </div>
                </div>
            </div>
        </div>

        <script>
            var myStyleFlag = 0;
            var idealStyleFlag = 0;

            $.ajax({
                url: "/existenceMyStyle.do",
                success: function(data) {
                    if (data == 0) {
                        myStyleFlag = 0;
                    } else {
                        myStyleFlag = 1;
                    }
                }
            });

            $.ajax({
                url: "/existenceIdealStyle.do",
                success: function(data) {
                    if (data == 0) {
                        idealStyleFlag = 0;
                    } else {
                        idealStyleFlag = 1;
                    }
                }
            });

            $("#chatBtn").click(function() {
                window.open("/chat.do");
            });

            $("#paymentBtn").click(function() {
                location.href = "/paymentHistory.do";
            });

            $("#managerConsultingFrm").click(function() {
                location.href = "/managerConsultingFrm.do";
            });

            $("#memberUpdateBtn").click(function() {
                location.href = "/memberUpdateFrm.do";
            });

            $("#reciveMessageBoxBtn").click(function() {
                location.href = "/reciveMessage.do";
            });

            $("#sendMessageBoxBtn").click(function() {
                location.href = "/sendMessagelist.do";
            });

            $("#myStyleAddrFrmBtn").click(function() {
                location.href = "/myStyleAddFrm.do";
            });

            $("#idealStyleAddFrmBtn").click(function() {
                location.href = "/idealStyleAddFrm.do";
            });

            $("#matchingBtn").click(function() {
                if (myStyleFlag == 0) {
                    alert("나는 이런사람입니다를 입력해주세요!");
                } else if (idealStyleFlag == 0) {
                    alert("내가 원하는 너의 스타일을 입력해주세요!");
                } else {
                    location.href = "/matching.do";
                }
            });
        </script>

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