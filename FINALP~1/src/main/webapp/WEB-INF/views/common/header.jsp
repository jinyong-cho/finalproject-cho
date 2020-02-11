<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <!--Google Fonts link-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=East+Sea+Dokdo&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/resources/assets/css/slick.css">
    <link rel="stylesheet" href="/resources/assets/css/slick-theme.css">
    <link rel="stylesheet" href="/resources/assets/css/animate.css">
    <link rel="stylesheet" href="/resources/assets/css/fonticons.css">
    <link rel="stylesheet" href="/resources/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/assets/css/bootsnav.css">
   

    <!--For Plugins external css-->
    <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

    <!--Theme custom css -->
    <link rel="stylesheet" href="/resources/assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

    <!--Theme Responsive css-->
    <link rel="stylesheet" href="/resources/assets/css/responsive.css" />

    <script src="/resources/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
   	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <style type="text/css">
        input[name=loginMemberId] {
            width: 300px;
            height: 50px;
            margin:auto;
            border-bottom: 1px solid;
            border-left: none;
            border-right: none;
            border-top: none;

        }

        input[name=loginMemberPw] {

            width: 300px;
            height: 50px;
            margin: 3px auto;
            border-bottom: 1px solid;
            border-left: none;
            border-right: none;
            border-top: none;
        }

        #loginSubmit {
            width: 300px;
            height: 40px;
            margin-bottom: 5%;
        }
        
        body{
        	font-family: 'Sunflower', sans-serif;
        }
        
    </style>
</head>
<body>
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
            <i class="fa fa-bars"></i>
        </button>
        <a class="navbar-brand" href="/" style="color: pink; font-family: 'East Sea Dokdo', cursive; font-size: 36px">
            연애人
        </a>
    </div>
    <!-- End Header Navigation -->

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="navbar-menu">
        <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
            <li><a href="/infoMain.do">INTRO</a></li>

            <li><a href="/noticeList.do?currentPage=1">NOTICE</a></li>
            <c:choose>
                <c:when test="${empty sessionScope.member }">
                    <li><a style="cursor: pointer" class="loginPlese">MATCHING</a></li>
                </c:when>
                <c:otherwise>
                    <li><a style="cursor: pointer" id="machingBtn">MATCHING</a></li>
                </c:otherwise>
            </c:choose>
            <li><a href="/loveTestMain.do">TEST</a></li>
         <c:choose>
            <c:when test="${sessionScope.member.memberId eq 'admin' }">
               <li><a href="/dateCourseList.do?currentPage=1">DATECOURSE</a><li>
            </c:when>
            <c:otherwise>
               <li><a href="/selectOnlyPlace.do">DATECOURSE</a></li>
            </c:otherwise>
         </c:choose>
           
            <li><a href="/reviewList.do?currentPage=1">REVIEW</a></li>
            <c:choose>
                <c:when test="${empty sessionScope.member }">

                   <li><a href="" data-toggle="modal" data-target="#login" id="loginModal">Login</a>
                        <!-- The Modal -->
                        <div class="modal" id="login" style="font-family:'Quicksand', sans-serif;">

                            <div class="modal-dialog modal-dialog-centered" style="z-index: 1050; width: 400px;">
                                <div class="modal-content" style=" height: 380px;" >

                                    <!-- Modal Header -->
                                    <div class="modal-header" style="padding: 15px; background-color: rgba(0, 137, 255, 0.19);">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" style="font-family:'Quicksand', sans-serif; font-size: 30px; width: 110px; margin:auto;">Login</h4>
                                        
                                    </div>

                                    <!-- Modal body -->
                                    <div class="modal-body" >
                                        <form action="/login.do" method="post">
                                           <input type="text"class="form-control" name="loginMemberId" placeholder="ID">
                                            <input type="password" class="form-control" name="loginMemberPw" placeholder="PW"><br>
                                            <div style="width: 300px;margin: auto;">
                                                <input type="submit" id="loginSubmit" value="Login" class="btn" style="background-color: rgba(0, 137, 255, 0.19);">
                                            </div>
                                        </form>
                                        <div style="width: 300px;margin: auto;">
                                            <a href="/idSearchFrm.do" style="color:gray;"><button type="button" style=" width: 147px;height: 40px;" class="btn">Search ID</button></a>
                                            <a href="/pwSearch.do" style="color:gray;"><button type="button" style="width: 147px; height: 40px;" class="btn">Search PW</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a href="/terms.do">Join</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="/logout.do">Logout</a></li>
                    <li><a href="/myPageMain.do">MyPage</a></li>
                    <c:if test="${sessionScope.member.memberId eq 'admin' }">
                       	<li><a href="/manageAllMember.do?currentPage=1">전체회원 조회(회원 관리)</a></li>
                  		<li><a href="/reportBoard.do?currentPage=1">신고게시판</a></li>
                  		<li><a href="/reviewReportBoard.do">신고게시판2</a></li>
                    </c:if>
                </c:otherwise>
            </c:choose>
        </ul>


    </div>
    <input type="hidden" name="headMember" value="${sessionScope.member.memberId }">
    <script>
    var myStyleFlag = 0;
   var idealStyleFlag = 0;
        $(document).ready(function() {
            $(".loginPlese").click(function() {
                alert("로그인이 필요한 서비스입니다.");
                $("#loginModal").click();
            });
        });
        
        $(document).ready(function() {
           if($("[name=headMember]").val()!="") {
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
            }
        });
        
        
        $("#machingBtn").click(function() {
            if (myStyleFlag == 0) {
                alert("나는 이런사람입니다를 입력해주세요!");
            } else if (idealStyleFlag == 0) {
                alert("내가 원하는 너의 스타일을 입력해주세요!");
            } else {
                location.href = "/matching.do";
            }
        });
    </script>

</body>

</html>