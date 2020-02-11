<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <title>JOIN</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

    <link rel="stylesheet" href="/resources/assets/css/enroll.css">

    <meta charset="UTF-8">
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


    <style>
        input[name=loginMemberId] {
            width: 300px;
            height: 50px;
            margin: auto;
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

        body {
            font-family: 'Sunflower', sans-serif;
        }

        input[name=loginMemberId] {
            width: 300px;
            height: 50px;
            margin: auto;
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

        body {
            font-family: 'Sunflower', sans-serif;
        }

        /* 달력 css 관련 클래스 */
        .ui-datepicker-trigger {
            display: none;
        }

        #formDiv {
            border: 1px solid rgba(179, 179, 179, 0.171);
            border-radius: 8px;
            width: 1200px;
            height: 750px;
            margin: auto;
            background-color: rgba(31, 31, 31, 0.6);


        }

        button {
            color: rgba(0, 0, 0, 0.74);
            height: 40px;
            border-radius: 8px;
            background-color: rgba(46, 46, 46, 0.349);
        }

        .filelabel label {
            display: inline-block;
            padding: .5em .75em;
            color: #999;
            font-size: inherit;
            line-height: normal;
            vertical-align: middle;
            background-color: #fdfdfd;
            cursor: pointer;
            border: 1px solid #ebebeb;
            border-bottom-color: #e2e2e2;
            border-radius: .25em;
        }

        .filelabel input[type="file"] {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            border: 0;
        }

        #formback {

            padding: 5%;
            margin: auto;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: bottom;
            background-image: url("/resources/assets/images/background/손.jpg");

        }

        .ui-datepicker-trigger {
            display: none;
        }

        #formarea1 {
            width: 50%;
            display: inline-block;
            float: left;
            margin: auto;
            margin-top: 3%;
            border-right: 1px solid rgba(128, 128, 128, 0.329);
        }

        #formarea2 {
            margin-top: 7%;
            width: 50%;
            height: 100%;
            display: inline-block;

        }

        .checkspan {
            font-weight: bold;
            color: white;
            margin-left: 89px;

        }
    </style>
    <script>
        function setPhoneNumber(val) {
            var numList = val.split("-");
            document.smsForm.sphone1.value = numList[0];
            document.smsForm.sphone2.value = numList[1];
            if (numList[2] != undefined) {
                document.smsForm.sphone3.value = numList[2];
            }
        }

        function loadJSON() {
            var data_file = "/calljson.do";
            var http_request = new XMLHttpRequest();
            try {
                // Opera 8.0+, Firefox, Chrome, Safari
                http_request = new XMLHttpRequest();
            } catch (e) {
                // Internet Explorer Browsers
                try {
                    http_request = new ActiveXObject("Msxml2.XMLHTTP");
                } catch (e) {
                    try {
                        http_request = new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e) {
                        // Eror
                        alert("지원하지 않는브라우저!");
                        return false;
                    }
                }
            }

            http_request.onreadystatechange = function() {
                if (http_request.readyState == 4) {
                    // Javascript function JSON.parse to parse JSON data
                    var jsonObj = JSON.parse(http_request.responseText);
                    if (jsonObj['result'] == "Success") {
                        var aList = jsonObj['list'];
                        var selectHtml = "<select name=\"sendPhone\" onchange=\"setPhoneNumber(this.value)\">";
                        selectHtml += "<option value='' selected>발신번호를 선택해주세요</option>";
                        for (var i = 0; i < aList.length; i++) {
                            selectHtml += "<option value=\"" + aList[i] + "\">";
                            selectHtml += aList[i];
                            selectHtml += "</option>";
                        }
                        selectHtml += "</select>";
                        document.getElementById("sendPhoneList").innerHTML = selectHtml;
                    }
                }
            }

            http_request.open("GET", data_file, true);
            http_request.send();
        }
    </script>

</head>

<body onload="loadJSON()" data-spy="scroll" data-target=".navbar-collapse">

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


    <div class="culmn">


        <nav class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">


            <div class="container">
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
                        <li><a href="/infoMain.do" style="cursor: pointer;color:gray;">INTRO</a></li>

                        <li><a href="/noticeList.do?currentPage=1" style="cursor: pointer;color:gray;">NOTICE</a></li>
                        <c:choose>
                            <c:when test="${empty sessionScope.member }">
                                <li><a style="cursor: pointer;color:gray;" class="loginPlese">MATCHING</a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a style="cursor: pointer;color:gray;" id="machingBtn">MATCHING</a></li>
                            </c:otherwise>
                        </c:choose>
                        <li><a href="/loveTestMain.do" style="cursor: pointer;color:gray;">TEST</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.member.memberId eq 'admin' }">
                                <li><a href="/dateCourseList.do?currentPage=1" style="cursor: pointer;color:gray;">DATECOURSE</a>
                                <li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="/selectOnlyPlace.do" style="cursor: pointer;color:gray;">DATECOURSE</a></li>
                            </c:otherwise>
                        </c:choose>

                        <li><a href="/reviewList.do?currentPage=1" style="cursor: pointer;color:gray;">REVIEW</a></li>
                        <c:choose>
                            <c:when test="${empty sessionScope.member }">

                                <!-- <li><a href="" data-toggle="modal" data-target="#login" id="loginModal"  style="cursor: pointer;color:gray;">Login</a>
                        The Modal
                        <div class="modal" id="login" style="font-family:'Quicksand', sans-serif;">

                            <div class="modal-dialog modal-dialog-centered" style="z-index: 1050; width: 400px;">
                                <div class="modal-content" style=" height: 380px;" >

                                    Modal Header
                                    <div class="modal-header" style="padding: 15px; background-color: rgba(0, 137, 255, 0.19);">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" style="font-family:'Quicksand', sans-serif; font-size: 30px; width: 110px; margin:auto;cursor: pointer;color:gray;">Login</h4>
                                        
                                    </div>

                                    Modal body
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
                    <li><a href="/enrollFrm.do" style="cursor: pointer;color:gray;">Join</a></li> -->
                            </c:when>
                            <c:otherwise>
                                <li><a href="/logout.do" style="cursor: pointer;color:gray;">Logout</a></li>
                                <li><a href="/myPageMain.do" style="cursor: pointer;color:gray;">MyPage</a></li>
                            </c:otherwise>
                        </c:choose>
                    </ul>


                </div>
            </div>


            <script>
                $(document).ready(function() {
                    $(".loginPlese").click(function() {
                        alert("로그인이 필요한 서비스입니다.");
                        $("#loginModal").click();
                    });
                });

                (function() {
                    var w = window;
                    if (w.ChannelIO) {
                        return (window.console.error || window.console.log || function() {})('ChannelIO script included twice.');
                    }
                    var d = window.document;
                    var ch = function() {
                        ch.c(arguments);
                    };
                    ch.q = [];
                    ch.c = function(args) {
                        ch.q.push(args);
                    };
                    w.ChannelIO = ch;

                    function l() {
                        if (w.ChannelIOInitialized) {
                            return;
                        }
                        w.ChannelIOInitialized = true;
                        var s = document.createElement('script');
                        s.type = 'text/javascript';
                        s.async = true;
                        s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
                        s.charset = 'UTF-8';
                        var x = document.getElementsByTagName('script')[0];
                        x.parentNode.insertBefore(s, x);
                    }
                    if (document.readyState === 'complete') {
                        l();
                    } else if (window.attachEvent) {
                        window.attachEvent('onload', l);
                    } else {
                        window.addEventListener('DOMContentLoaded', l, false);
                        window.addEventListener('load', l, false);
                    }
                })();
                ChannelIO('boot', {
                    "pluginKey": "c67ca922-3571-423f-a590-472c627a9a53"
                });

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
        </nav>


        <!--Home Sections-->

        <!-- <section id="hello" class="blog-banner bg-mega" style = "background-image : url('/resources/assets/images/background/3-1.png');" >
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="about_text">
                                <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">연애가 쉬워지는 곳,<br> 연애인</h1>
                            </div>
                        </div>
                    </div>End off row
                </div>End off container
            </section>  -->
        <!--End off Home Sections-->


        <!--Blog Features Section-->


        <section id="feature" class="feature p-top-100">


            <!--content자리-->
            <form action="/enroll.do" method="post" enctype="multipart/form-data" id="enrollFrm">
                <div id="formback">
                    <div id="formDiv">

                        <div id="formarea1">
                            <div style="width:250px; height:250px; margin: 13px auto; border-radius: 8px;">
                                <img src="/resources/assets/images/스마일.PNG" id="modimg2" style="width:100%; height:100%; border-radius: 8px;">
                            </div>
                            <div class="filelabel" style=" width: 100px; margin: auto;">
                                <label for="filelabel">프로필사진</label>
                                <input type="file" id="filelabel" name="up_file" onchange="fn_loadImg(this)">
                            </div>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" placeholder="아이디를입력해주세요" name="memberId" autocomplete=”off” onkeyup="fn_idRegCheck()">
                            <span id="idRegCheckMsg" class="checkspan"></span><br>
                            <input type="password" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" name="memberPw" onkeyup="fn_pwRegCheck()" autocomplete=”off” placeholder="비밀번호를입력해주세요">
                            <span id="pwRegCheckMsg" class="checkspan"></span><br>
                            <input type="password" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" name="memberRePw" onkeyup="fn_pwReCheck()" autocomplete=”off” placeholder="비밀번호를입력해주세요">
                            <span id="pwRegCheckMsg2" class="checkspan"></span> <br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" name="memberName" onkeyup="fn_nameRegCheck()" autocomplete=”off” placeholder="이름">
                            <span id="nameRegCheckMsg" class="checkspan"></span><br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" name="memberNickName" onkeyup="fn_nickRegCheck()" autocomplete=”off” placeholder="닉네임">
                            <span id="nickRegCheckMsg" class="checkspan"></span><br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" name="memberBirth" onkeyup="fn_birthRegCheck()" onchange="fn_birthRegCheck2()" autocomplete=”off” placeholder="생년월일">
                            <span id="birthRegCheckMsg" class="checkspan"></span><br>

                        </div>

                        <div id="formarea2">

                            <div class="input-group mb-3" style=" width: 70%; margin: auto; margin-top: 6%;">
                                <input type="text" style=" width: 80%;height: 40px;margin: 
                        auto; background-color: rgba(0, 0, 0, 0.6); border: none; color:white;" autocomplete=”off” id="sample6_postcode" placeholder="우편번호" class="form-control text" name="memberAddr" value="" onfocus="this.blur();">
                                <div class="input-group-append">
                                    <button type="button" onclick="sample6_execDaumPostcode()" style="
                         height: 40px;
                      background-color: rgba(46, 46, 46, 0.349);
                      color : white" class="btn" id="postcodeBtn">주소검색</button>
                                </div>
                            </div>
                            <br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" id="sample6_address" placeholder="주소" class="form-control text" name="memberAddr2" onfocus="this.blur();"><br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" id="sample6_detailAddress" placeholder="상세주소" class="form-control text" name="memberAddr3" autocomplete=”off” onfocus="this.blur();"><br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" id="sample6_extraAddress" placeholder="참고항목" class="form-control text" name="memberAddr4" onfocus="this.blur();"><br>

                            <div class="input-group mb-3" style=" width: 70%; margin: auto;">
                                <input type="text" style="width: 75%;height: 40px;margin: auto;color:white; background-color: rgba(0, 0, 0, 0.6); border: none;" name="memberEmail" id="memberEmail" class="form-control" style="width: 76%;" onkeyup="fn_emailRegCheck()" placeholder="이메일을 입력해주세요" autocomplete=”off”>
                                <div class="input-group-append">
                                    <button type="button" onclick="fn_sendMail()" class="btn" style="color:white;">이메일인증</button>
                                    <br>
                                </div>
                            </div>
                            <span id="emailRegCheckMsg" class="checkspan"></span><br>
                            <input type="text" style=" width: 70%;height: 40px;margin: auto;color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" placeholder="인증번호를 입력하세요" id="emailCheck" class="form-control" onkeyup="fn_emailNumberCheck()" onclick="fn_emailRegReCheck()" autocomplete=”off”>
                            <span id="emailCheckSpan" class="checkspan"></span><br>
                            <div class="input-group mb-3" style="width: 70%; margin: auto;">
                                <input type="text" style=" width: 75%;
    height: 40px;
    margin: auto;
    color:white;
    background-color: rgba(0, 0, 0, 0.6); border: none;" onkeyup="fn_hpRegCheck()" class="form-control" style="width: 75.2%;" name="memberPhone" placeholder="핸드폰번호 입력 : '-'를 포함해서 입력하세요" autocomplete=”off”>
                                <div class="input-group-append">
                                    <button type="button" class="btn" onclick="fn_phoneCheck()" style="color:white;">휴대폰 인증</button><br>
                                </div>
                            </div>
                            <span id="hpRegCheckMsg" class="checkspan"></span><br>
                            <input type="text" style=" width: 70%;
    height: 40px;
    margin: auto;
    color:white;
  
    background-color: rgba(0, 0, 0, 0.6); border: none;" class="form-control" placeholder="핸드폰 인증번호입력" id="phoneCheck" onclick="fn_phoneRegReCheck()" onkeyup="fn_phoneNumberCheck()" autocomplete=”off”>
                            <span id="phoneCheckSpan" class="checkspan"></span><br>
                            <input type="hidden" name="action" value="go">
                            <input type="hidden" name="sphone1" value="010">
                            <input type="hidden" name="sphone2" value="5388">
                            <input type="hidden" name="sphone3" value="8918">
                            <input type="hidden" name="memberGender">
                            <div style="font-size: 20px; margin: auto; width: 200px;">
                                <label style="color: black;"><input type="radio" name="gender" onclick="fn_M()"> Man </label>&nbsp&nbsp&nbsp&nbsp&nbsp
                                <label style="color: black;"><input type="radio" name="gender" onclick="fn_W()"> Woman </label>
                            </div>
                            <div style="margin: 2% auto; width: 430px; height: 50px; margin-bottom: 2%;">
                                <button type="button" onclick="fn_submitBtn()" class="btn" style="width:430px; height: 50px; color:white;">회원가입</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <script>
                var memberId = $("[name=memberId]");
                var memberPw = $("[name=memberPw]");
                var memberName = $("[name=memberName]");
                var memberNick = $("[name=memberNickName]");
                var memberAddr = $("[name=memberAddr]");
                var memberEamil = $("[name=memberEmail]");
                var memberPhone = $("[name=memberPhone]");
                var memberBirth = $("[name=memberBirth]");
                var memberGender = $("[name=memberGender]");
                var emailNumberFlag = 0;
                var phoneNumberFlag = 0;
                var emailNumber = 9878454564654564;
                var phoneNumber = 987545465456456;
                var memberPhoneValue;
                var memberEmailValue;

                var clareCalendar = {
                    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
                    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                    weekHeader: 'Wk',
                    dateFormat: 'yymmdd', // 형식(20120303)
                    autoSize: false, // 오토리사이즈(body등 상위태그의 설정에 따른다)
                    changeMonth: true, // 월변경가능
                    changeYear: true, // 년변경가능
                    showMonthAfterYear: true, // 년 뒤에 월 표시
                    buttonImageOnly: false, // 이미지표시 
                    buttonText: '달력선택', // 버튼 텍스트 표시 
                    buttonImage: '/resources/upload/photo/cale_bg.jpg', //이미지주소
                    showOn: "both", // 엘리먼트와 이미지 동시 사용(both,button)
                    yearRange: '1950:2020' // 1990년부터 2020년까지
                };

                $("[name=memberBirth]").datepicker(clareCalendar);

                // 정규표현식 시작

                // 아이디 정규표현식
                var idReg = /^[A-Za-z0-9][A-Za-z0-9_-]{4,15}/; // [영문 대문자 또는 소문자 또는 숫자로 시작하는 아이디, 길이는 5~15자, 끝날때 제한 없음]
                var idFlag = 0;
                // 비밀번호 정규표현식
                var pwReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; // 최소 특수문자, 문자, 숫자 하나에 8글자
                var pwFlag = 0;
                var pwReFlag = 0;
                // 휴대폰번호 정규표현식
                var hpReg = /^\d{3}-\d{3,4}-\d{4}$/; // '-'를포함해야함
                var hpFlag = 0;
                // 이메일 정규표현식
                var emailReg =
                    /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; // 이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐 경우
                var emailFlag = 0;
                // 닉네임 정규표현식
                var nickReg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
                var nickFlag = 0;
                // 이름 정규표현식
                var nameReg = /^[가-힣]+$/;
                var nameFlag = 0;
                // 생년월일 정규표현식
                var birthReg = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
                var birthFlag = 0;

                function fn_idRegCheck() {
                    if (!idReg.test($("input[name=memberId]").val())) {
                        $("#idRegCheckMsg").html("영문 대문자/소문자/숫자로 시작(5~15자)");
                        $("input[name=memberId]").css('border', '1px solid red');
                        idFlag = 0;
                    } else {
                        memberId = $("[name=memberId]");
                        $.ajax({
                            url: "/idCheck.do",
                            type: "get",
                            data: "memberId=" + memberId.val(),
                            dataType: "json",
                            success: function(data) {
                                if (data.result == 0) {
                                    $("#idRegCheckMsg").html("사용가능한 아이디입니다.");
                                    $("input[name=memberId]").css('border', 'none');
                                    idFlag = 1;
                                } else {
                                    $("#idRegCheckMsg").html('이미 사용중인 ID 입니다.');
                                    $("input[name=memberId]").css('border', '1px solid red');
                                    idFlag = 0;
                                }
                            }
                        });
                    }
                }

                function fn_pwRegCheck() {
                    if (!pwReg.test($("input[name=memberPw]").val())) {
                        $("#pwRegCheckMsg").html("최소 8자리에 숫자, 문자, 특수문자 각각 1개 이상 포함");
                        $("input[name=memberPw]").css('border', '1px solid red');
                        pwFlag = 0;
                    } else {
                        $("#pwRegCheckMsg").html("사용가능한 비밀번호입니다.");
                        $("input[name=memberPw]").css('border', 'none');
                        pwFlag = 1;
                    }
                }

                function fn_pwReCheck() {
                    console.log($("[name=memberPw]").val());
                    console.log($("[name=memberRePw]").val());
                    if ($("[name=memberPw]").val() == $("[name=memberRePw]").val()) {
                        if (pwReg.test($("input[name=memberPw]").val())) {
                            $("#pwRegCheckMsg2").html("ok");
                            $("[name=memberRePw]").css('border', 'none');
                            pwReFlag = 1;
                        }
                    } else {
                        $("#pwRegCheckMsg2").html("비밀번호 값이 다릅니다.");
                        $("[name=memberRePw]").css('border', '1px solid red');
                        pwReFlag = 0;
                    }
                }

                function fn_hpRegCheck() {
                    if (!hpReg.test($("input[name=memberPhone]").val())) {
                        $("#hpRegCheckMsg").html("'-'를 포함해서 입력해주세요.'");
                        $("input[name=memberPhone]").css('border', '1px solid red');
                        hpFlag = 0;
                    } else {
                        memberPhone = $("[name=memberPhone]").val();
                        $.ajax({
                            url: "/phoneCheck.do",
                            type: "get",
                            data: "memberPhone=" + memberPhone,
                            dataType: "json",
                            success: function(data) {
                                if (data.result == 0) {
                                    $("#hpRegCheckMsg").html("사용가능한 핸드폰번호입니다.");
                                    $("input[name=memberPhone]").css('border', 'none');
                                    hpFlag = 1;
                                } else {
                                    $("#hpRegCheckMsg").html('이미 등록된 핸드폰번호 입니다.');
                                    $("input[name=memberPhone]").css('border', '1px solid red');
                                    hpFalg = 0;
                                }
                            }
                        });
                    }
                }

                function fn_phoneRegReCheck() {
                    if (hpFlag == 0) {
                        alert("핸드폰 번호를 확인해주세요.");
                        $("[name=memberPhone]").focus();
                        $("input[name=memberPhone]").css('border', '1px solid red');
                    }
                }

                function fn_emailRegCheck() {
                    if (!emailReg.test($("input[name=memberEmail]").val())) {
                        $("#emailRegCheckMsg").html("이메일 형식을 맞춰서 작성해주세요.");
                        $("input[name=memberEmail]").css('border', '1px solid red');
                        emailFlag = 0;
                    } else {
                        memberEmail = $("[name=memberEmail]").val();
                        $.ajax({
                            url: "/emailCheck.do",
                            type: "get",
                            data: "memberEmail=" + memberEmail,
                            dataType: "json",
                            success: function(data) {
                                if (data.result == 0) {
                                    $("#emailRegCheckMsg").html("올바른 이메일 형식입니다.");
                                    $("input[name=memberEmail]").css('border', 'none');
                                    emailFlag = 1;
                                } else {
                                    $("#emailRegCheckMsg").html('이미 사용중인 이메일 입니다.');
                                    $("input[name=memberEmail]").css('border', '1px solid red');
                                    emailFlag = 0;
                                }
                            }
                        });
                    }
                }

                function fn_emailRegReCheck() {
                    if (emailFlag == 0) {
                        alert("이메일을 확인해주세요.");
                        $("[name=memberEmail]").focus();
                        $("#memberEmail").css('border', '1px solid red');
                    }
                }

                function fn_nickRegCheck() {
                    if (!nickReg.test($("input[name=memberNickName]").val())) {
                        $("#nickRegCheckMsg").html("한글, 영문, 숫자만 가능합니다.");
                        $("input[name=memberNickName]").css('border', '1px solid red');
                        nickFlag = 0;
                    } else {
                        memberNickName = $("[name=memberNickName]").val();
                        $.ajax({
                            url: "/nickNameCheck.do",
                            type: "get",
                            data: "memberNickName=" + memberNickName,
                            dataType: "json",
                            success: function(data) {
                                if (data.result == 0) {
                                    $("#nickRegCheckMsg").html("사용가능한 닉네임입니다.");
                                    $("input[name=memberNickName]").css('border', 'none');
                                    nickFlag = 1;
                                } else {
                                    $("#nickRegCheckMsg").html('이미 사용중인 닉네임 입니다.');
                                    $("input[name=memberNickName]").css('border', '1px solid red');
                                    nickFlag = 0;
                                }
                            }
                        });
                    }
                }

                function fn_nameRegCheck() {
                    if (!nameReg.test($("input[name=memberName]").val())) {
                        $("#nameRegCheckMsg").html("이름은 한글(최소1글자)만 가능합니다");
                        $("input[name=memberName]").css('border', '1px solid red');
                        nameFlag = 0;
                    } else {
                        $("#nameRegCheckMsg").html("사용 가능한 이름입니다.");
                        $("input[name=memberName]").css('border', 'none');
                        nameFlag = 1;
                    }
                }

                function fn_birthRegCheck() {
                    if (!birthReg.test($("input[name=memberBirth]").val())) {
                        $("#birthRegCheckMsg").html("입력시 '-'가 포함되면안되고 8글자로 작성해주세요.");
                        $("input[name=memberBirth]").css('border', '1px solid red');
                        birthFlag = 0;
                    } else {
                        $("#birthRegCheckMsg").html("");
                        $("input[name=memberBirth]").css('border', 'none');
                        birthFlag = 1;
                    }
                }

                function fn_birthRegCheck2() {
                    if (!birthReg.test($("input[name=memberBirth]").val())) {
                        $("#birthRegCheckMsg").html("입력시 '-'가 포함되면안되고 8글자로 작성해주세요.");
                        $("input[name=memberBirth]").css('border', '1px solid red');
                        birthFlag = 0;
                    } else {
                        $("#birthRegCheckMsg").html("");
                        $("input[name=memberBirth]").css('border', 'none');
                        birthFlag = 1;
                    }
                }
                // 정규표현식 끝

                function fn_emailNumberCheck() {
                    if ($("#emailCheck").val() == emailNumber) {
                        $("#emailCheckSpan").html("인증번호가 확인되었습니다.");
                        $("#emailCheck").css('border', 'none');
                        emailNumberFlag = 1;
                    } else {
                        $("#emailCheckSpan").html("인증번호를 확인해주세요.");
                        $("#emailCheck").css('border', '1px solid red');
                        emailNumberFlag = 0;
                    }
                }

                function fn_phoneNumberCheck() {
                    if ($("#phoneCheck").val() == phoneNumber) {
                        $("#phoneCheckSpan").html("인증번호가 확인되었습니다.");
                        $("#phoneCheck").css('border', 'none');
                        phoneNumberFlag = 1;
                    } else {
                        $("#phoneCheckSpan").html("인증번호를 확인해주세요.");
                        $("#phoneCheck").css('border', '1px solid red');
                        phoneNumberFlag = 0;
                    }
                }

                function fn_phoneCheck() {
                    var param = {
                        rphone: $("[name=memberPhone]").val(),
                        action: $("[name=action]").val(),
                        sphone1: $("[name=sphone1]").val(),
                        sphone2: $("[name=sphone2]").val(),
                        sphone3: $("[name=sphone3]").val()
                    }

                    if (hpFlag == 0) {
                        alert("핸드폰 번호를 확인해주세요.");
                        $("[name=memberPhone]").focus();
                        $("[name=memberPhone]").css('border', '1px solid red');
                    } else {
                        $.ajax({
                            url: "/sendSMS.do",
                            data: param,
                            dataType: "json",
                            success: function(data) {
                                phoneNumber = data.phoneNumber;
                                memberPhoneValue = $("[name=memberPhone]").val();
                                alert(data.alert);
                                console.log(data.phoneNumber);
                                console.log(data.alert);
                            },
                            error: function(request, status, error) {
                                alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" +
                                    "error:" + error);
                            }
                        });
                    }
                }

                function fn_M() {
                    $("[name=memberGender]").val("남자");
                }

                function fn_W() {
                    $("[name=memberGender]").val("여자");
                }

                function sample6_execDaumPostcode() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                            var addr = ''; // 주소 변수
                            var extraAddr = ''; // 참고항목 변수

                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                addr = data.roadAddress;
                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                addr = data.jibunAddress;
                            }

                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                            if (data.userSelectedType === 'R') {
                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                if (data.bname !== '' &&
                                    /[동|로|가]$/g.test(data.bname)) {
                                    extraAddr += data.bname;
                                }
                                // 건물명이 있고, 공동주택일 경우 추가한다.
                                if (data.buildingName !== '' &&
                                    data.apartment === 'Y') {
                                    extraAddr += (extraAddr !== '' ? ', ' +
                                        data.buildingName :
                                        data.buildingName);
                                }
                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                if (extraAddr !== '') {
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                                // 조합된 참고항목을 해당 필드에 넣는다.
                                document.getElementById("sample6_extraAddress").value = extraAddr;

                            } else {
                                document.getElementById("sample6_extraAddress").value = '';
                            }

                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                            document.getElementById('sample6_postcode').value = data.zonecode;
                            document.getElementById("sample6_address").value = addr;
                            $("#sample6_detailAddress").attr("onfocus", "focus()");
                            document.getElementById("sample6_detailAddress").focus();
                        }
                    }).open();
                }

                function fn_loadImg(f) {
                    // console.log(f); // <input~ > 태그자체가 들어있음
                    // console.log(f.files); // FileList 파일name, size, 경로 등등 들어있고
                    // console.log(f.files[0]); // FileList의 [0]의 자리에는 filename이 들어있음
                    if (f.files && f.files[0]) {
                        var reader = new FileReader(); // 파일 읽기 메소드
                        reader.readAsDataURL(f.files[0]); // 읽기 완료시 onload 이벤트 발생
                        reader.onload = function(e) {
                            $("#modimg2").attr("src", e.target.result);
                            $("#modimg2").show();
                            console.log(e);
                            // FileReader 객체의 result에는
                            // 파일의 컨텐츠가 담겨있음
                        }
                    }
                }

                // 이메일 보내는 함수
                function fn_sendMail() {
                    if (emailFlag == 0) {
                        alert("이메일을 확인해주세요.");
                        $("[name=memberEmail]").focus();
                    } else {
                        $.ajax({
                            url: "/sendMail.do", // 보내줄 주소 (처리할 서블릿)
                            type: "POST",
                            data: {
                                memberId: $("#memberId").val(),
                                email: $("[name=memberEmail]").val()
                            }, //담는 곳이 있어야됨
                            dataType: 'json',
                            success: function(data) { // 성공적으로 실행이 됬을때 data에 받아옴
                                if (data != '3' && data != '2') {
                                    emailNumber = data;
                                    console.log(emailNumber);
                                    memberEmailValue = $("[name=memberEmail]").val();
                                    alert("이메일이 전송되었습니다.");
                                } else {
                                    alert("올바르게 입력해주세요");
                                }
                            }
                        });
                    }
                }

                function fn_submitBtn() {
                    memberId = $("[name=memberId]");
                    memberPw = $("[name=memberPw]");
                    memberName = $("[name=memberName]");
                    memberNick = $("[name=memberNickName]");
                    memberAddr1 = $("[name=memberAddr]");
                    memberAddr2 = $("[name=memberAddr2]");
                    memberAddr3 = $("[name=memberAddr3]");
                    memberAddr4 = $("[name=memberAddr4]");
                    memberEmail = $("[name=memberEmail]");
                    memberPhone = $("[name=memberPhone]");
                    memberBirth = $("[name=memberBirth]");
                    memberGender = $("[name=memberGender]");
                    var memberUpFile = $("[name=up_file]");


                    console.log(memberId.val().trim());
                    console.log(memberPw.val().trim());
                    console.log(memberNick.val().trim());
                    console.log(memberAddr3.val().trim());
                    console.log(memberEmail.val().trim());
                    console.log(memberPhone.val().trim());
                    console.log(memberBirth.val().trim());
                    console.log(memberGender.val().trim());
                    console.log(memberUpFile.val().trim());
                    console.log(idFlag);
                    console.log(pwFlag);
                    console.log(hpFlag);
                    console.log(emailFlag);
                    console.log(nickFlag);
                    console.log(nameFlag);
                    console.log(birthFlag);
                    console.log(emailNumberFlag);
                    console.log(phoneNumberFlag);

                    if (memberId.val().trim() == "" && memberId.val().trim().length == 0) {
                        alert("아이디를 입력하세요");
                        memberId.focus();
                        memberId.css('border', '1px solid red');
                        return false;
                    } else if (memberUpFile.val().trim() == "" && memberUpFile.val().trim().length == 0) {
                        alert("프로필 사진을 등록해주세요");
                        memberUpFile.focus();
                        return false;
                    } else if (memberPw.val().trim() == "" && memberPw.val().trim().length == 0) {
                        alert("비밀번호를 입력해주세요");
                        memberPw.focus();
                        memberPw.css('border', '1px solid red');
                        return false;
                    } else if (memberNick.val().trim() == "" && memberNick.val().trim().length == 0) {
                        alert("닉네임을 입력해주세요");
                        memberNick.focus();
                        memberNick.css('border', '1px solid red');
                        return false;
                    } else if (memberAddr1.val().trim() == "" && memberAddr1.val().trim().length == 0 && memberAddr2.val()
                        .trim() == "" && memberAddr2.val().trim().length == 0 && memberAddr3.val().trim() == "" && memberAddr3
                        .val().trim().length == 0 && memberAddr4.val().trim() == "" && memberAddr4.val().trim().length == 0) {
                        alert("주소를 전부 입력해주세요");
                        memberAddr3.focus();
                        memberAddr3.css('border', '1px solid red');
                        return false;
                    } else if (memberEmail.val().trim() == "" && memberEmail.val().trim().length == 0) {
                        alert("이메일을 입력해주세요");
                        memberEmail.focus();
                        memberEmail.css('border', '1px solid red');
                        return false;
                    } else if (memberPhone.val().trim() == "" && memberPhone.val().trim().length == 0) {
                        alert("핸드폰 번호를 입력해주세요");
                        memberPhone.focus();
                        memberPhone.css('border', '1px solid red');
                        return false;
                    } else if (memberBirth.val().trim() == "" && memberBirth.val().trim().length == 0) {
                        alert("생년월일을 입력해주세요");
                        memberBirth.focus();
                        memberBirth.css('border', '1px solid red');
                        return false;
                    } else if (memberGender.val().trim() == "" && memberGender.val().trim().length == 0) {
                        alert("성별을 골라주세요");
                        memberGender.focus();
                        return false;
                    } else if (idFlag == 1 && pwFlag == 1 && pwReFlag == 1 && hpFlag == 1 && emailFlag == 1 && nickFlag ==
                        1 && nameFlag == 1 && birthFlag == 1 && emailNumberFlag == 1 && phoneNumberFlag == 1) {
                        $("[name=memberPhone]").val(memberPhoneValue);
                        $("[name=memberEmail]").val(memberEmailValue);
                        $("#enrollFrm").submit();
                    } else {
                        alert("형식에 맞춰 값을 입력해주시기 바랍니다.");
                    }
                }
            </script>

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