<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>NOTICE</title>
    <meta name="description" content="">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <link rel="icon" type="image/png" href="favicon.ico">
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Sunflower:300&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <title>Insert title here</title>
    <style>
        /* 달력 css 관련 클래스 */
        .ui-datepicker-trigger {
            display: none;
        }

        th {

            width: 150px;

        }

        input[type=text] {
            width: 300px;

        }

        input[type=password] {
            width: 300px;

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
                            <h1 class="text-white text-uppercase">update profile</h1>
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

                <table class="table">
                    <form action="/memberUpdate.do" id="updateFrm" enctype="multipart/form-data" method="post">


                        <tbody>
                            <tr>
                                <th>프로필 사진</th>
                                <td><img src="/resources/upload/photo/${sessionScope.member.memberRePhotoName }" id="modimg" style="width:300px; height:300px">
                                    <input type="hidden" name="oldOriFilename" value="${sessionScope.member.memberOriPhotoName }">
                                    <input type="hidden" name="oldReFilename" value="${sessionScope.member.memberRePhotoName }">
                                    <br><label for="changeimg"><button type="button" class="btn">프로필 변경</button> <input type="file" id="changeimg" name="up_file" onchange="fn_loadImg(this)" style="display:none"></label>
                                </td>

                            </tr>

                            <tr>
                                <th>아이디 </th>
                                <td> <input type="text" name="memberId" onkeyup="fn_idRegCheck()" value="${sessionScope.member.memberId }" readonly style="border:none"><br></td>
                            </tr>
                            <tr>
                                <th>새 비밀번호</th>
                                <td><input type="password" class="form-control" name="newMemberPw" onkeyup="fn_pwRegCheck()" placeholder="비밀번호 변경시에만 입력해주세요!"><span id="pwRegCheckMsg"></span></td>
                            </tr>
                            <tr>
                                <th>새 비밀번호 확인</th>
                                <td><input type="password" class="form-control" name="newMemberRePw" onkeyup="fn_pwReCheck()"> <span id="pwRegCheckMsg2"></span> <br>
                                    <input type="hidden" name="oldMemberPw" value="${sessionScope.member.memberPw }"></td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td> <input type="text" name="memberName" onkeyup="fn_nameRegCheck()" value="${sessionScope.member.memberName }" readonly style="border:none"><span id="nameRegCheckMsg"></span></td>
                            </tr>
                            <tr>
                                <th>닉네임</th>
                                <td><input type="text" class="form-control" name="memberNickName" onkeyup="fn_nickRegCheck()" value="${sessionScope.member.memberNickName }"><span id="nickRegCheckMsg"></span></td>
                            </tr>
                            <tr>
                                <th>주소 </th>
                                <td>
                                   <div class="input-group mb-3">
                                   <input type="text" id="sample6_postcode" placeholder="우편번호" class="form-control" style="width: 220px;" name="memberAddr" value="${sessionScope.member.memberAddr}" onfocus="this.blur();">
                                    <div class="input-group-append" style="width: 0;">
                                    <input type="button" onclick="sample6_execDaumPostcode()" class="btn" value="주소 찾기" id="postcodeBtn">
                           </div>       
                           </div>                             
                                    <br>
                                    <input type="text" id="sample6_address" placeholder="주소" class="form-control text" name="memberAddr2" value="${sessionScope.member.memberAddr2 }" onfocus="this.blur();"><br>
                                    <input type="text" id="sample6_detailAddress" placeholder="상세주소" class="form-control text" name="memberAddr3" value="${sessionScope.member.memberAddr3 }" onfocus="this.blur();"><br>
                                    <input type="text" id="sample6_extraAddress" placeholder="참고항목" class="form-control text" name="memberAddr4" value="${sessionScope.member.memberAddr4 }" onfocus="this.blur();"><br>
                                </td>
                            </tr>

                            <tr>
                                <th>이메일</th>
                                <td> <input type="text" name="memberEmail" onkeyup="fn_emailRegCheck()" value="${sessionScope.member.memberEmail }" readonly style="border:none;"> <button type="button" id="emailChangeBtn" class="btn">변경</button>
                                    <div id="emailDiv" style="display:none">
                                        <button type="button" onclick="fn_sendMail()" class="btn"> 이메일 인증</button>
                                        <span id="emailRegCheckMsg"></span>
                                        <br><span>이메일 인증번호 : </span><input type="text" class="form-control" id="emailCheck" onkeyup="fn_emailNumberCheck()" disabled><span id="emailCheckSpan"></span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>핸드폰번호</th>
                                <td><input type="text" onkeyup="fn_hpRegCheck()" name="memberPhone" placeholder="'-'를 포함해서 입력하세요" value="${sessionScope.member.memberPhone }" readonly style="border:none"> <button type="button" id="phoneChangeBtn" class="btn">변경</button>
                                    <div id="phoneDiv" style="display:none">
                                        <button type="button" onclick="fn_phoneCheck()" class="btn">휴대폰 인증</button> <span id="hpRegCheckMsg"></span>
                                        <br><span>핸드폰 인증번호 :</span> <input type="text" class="form-control" id="phoneCheck" onkeyup="fn_phoneNumberCheck()" disabled><span id="phoneCheckSpan"> </span>
                                        <input type="hidden" name="action" value="go">
                                        <input type="hidden" name="sphone1" value="010">
                                        <input type="hidden" name="sphone2" value="5388">
                                        <input type="hidden" name="sphone3" value="8918">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>생년월일 </th>
                                <td><input type="text" name="memberBirth" value="${sessionScope.member.memberBirth }" onkeyup="fn_birthRegCheck()" onchange="fn_birthRegCheck2()" autocomplete=”off” class="form-control"><br><span id="birthRegCheckMsg"></span></td>
                            </tr>
                            <tr>
                                <th>성별</th>
                                <td><input type="hidden" name="sessionMemberGender" value="${sessionScope.member.memberGender }">
                                  <label> 남자 : <input type="radio" name="gender" onclick="fn_M()" id="man"> </label>   
                                  <label>여자 : <input type="radio" name="gender" onclick="fn_W()" id="woman"></label> 
                                    <input type="hidden" name="memberGender"></td>
                            </tr>
                        </tbody>
                </table>
               
                <button type="button" class="btn" onclick="fn_submitBtn()" style="float:right">정보 수정</button>
                <button type="button" class="btn" onclick="fn_deleteBtn()" style="float:right; margin-right:5px;">회원 탈퇴</button>
                </form>


                <script>
                    var memberNickName = $("[name=memberNickName]").val();
                    var oldMemberEmail = $("[name=memberEmail]").val();
                    var emailNumberFlag = 1;
                    var phoneNumberFlag = 1;
                    var emailNumber = 9878454564654564;
                    var phoneNumber = 987846546542354;

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
                        /* buttonText: '달력선택', // 버튼 텍스트 표시  */
                        /* buttonImage: '/resources/upload/photo/cale_bg.jpg', //이미지주소 */
                        showOn: "both", // 엘리먼트와 이미지 동시 사용(both,button)
                        yearRange: '1950:2020' // 1990년부터 2020년까지
                    };

                    $("[name=memberBirth]").datepicker(clareCalendar);

                    // 비밀번호 정규표현식
                    var pwReg = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/; // 최소 특수문자, 문자, 숫자 하나에 8글자
                    var pwFlag = 1;
                    var pwReFlag = 1;

                    // 닉네임 정규표현식
                    var nickReg = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
                    var nickFlag = 1;

                    // 이메일 정규표현식
                    var emailReg = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; // 이메일 형식이 알파벳+숫자@알파벳+숫자.알파벳+숫자 형식이 아닐 경우
                    var emailFlag = 1;

                    // 휴대폰번호 정규표현식
                    var hpReg = /^\d{3}-\d{3,4}-\d{4}$/; // '-'를포함해야함
                    var hpFlag = 0;

                    // 생년월일 정규표현식
                    var birthReg = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
                    var birthFlag = 0;

                    // 비밀번호 Flag
                    function fn_pwRegCheck() {
                        if (!pwReg.test($("input[name=newMemberPw]").val())) {
                            $("#pwRegCheckMsg").html("최소 8자리에 숫자, 문자, 특수문자 각각 1개 이상 포함");
                            pwFlag = 0;
                        } else {
                            $("#pwRegCheckMsg").html("사용가능한 비밀번호입니다 ㅎㅎ");
                            pwFlag = 1;
                        }
                    }

                    function fn_pwReCheck() {
                        if ($("[name=newMemberPw]").val() == $("[name=newMemberRePw]").val()) {
                            if (pwReg.test($("input[name=newMemberPw]").val())) {
                                $("#pwRegCheckMsg2").html("ok");
                                pwReFlag = 1;
                            }
                        } else {
                            $("#pwRegCheckMsg2").html("비밀번호 값이 다릅니다.");
                            pwReFlag = 0;
                        }
                    }

                    // 닉네임 Flag
                    function fn_nickRegCheck() {
                        if (!nickReg.test($("input[name=memberNickName]").val())) {
                            $("#nickRegCheckMsg").html("한글, 영문, 숫자만 가능합니다.");
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
                                        nickFlag = 1;
                                    } else {
                                        if (memberNickName == $("[name=memberNickName]").val()) {
                                            $("#nickRegCheckMsg").html("");
                                            nickFlag = 1;
                                        } else {
                                            $("#nickRegCheckMsg").html('이미 사용중인 닉네임 입니다.');
                                            nickFlag = 0;
                                        }
                                    }
                                }
                            });
                        }
                    }

                    function fn_emailRegCheck() {
                        if (!emailReg.test($("input[name=memberEmail]").val())) {
                            $("#emailRegCheckMsg").html("이메일 형식을 맞춰서 작성해주세요.");
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
                                        emailFlag = 1;
                                    } else {
                                        if (oldMemberEmail == $("[name=memberEmail]").val()) {
                                            $("#emailRegCheckMsg").html("기존 이메일과 동일합니다.");
                                            emailFlag = 0;
                                        } else {
                                            $("#emailRegCheckMsg").html('이미 사용중인 이메일 입니다.');
                                            emailFlag = 0;
                                        }
                                    }
                                }
                            });
                        }
                    }

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
                                        $("#emailCheck").removeAttr("disabled");
                                        emailNumber = data;
                                        memberEmailValue = $("[name=memberEmail]").val();
                                        alert("이메일이 전송되었습니다.");
                                    } else {
                                        alert("올바르게 입력해주세요");
                                    }
                                }
                            });
                        }
                    }

                    function fn_emailNumberCheck() {
                        if ($("#emailCheck").val() == emailNumber) {
                            $("#emailCheckSpan").html("인증번호가 확인되었습니다.");
                            emailNumberFlag = 1;
                        } else {
                            $("#emailCheckSpan").html("인증번호를 확인해주세요.");
                            emailNumberFlag = 0;
                        }
                    }

                    function fn_hpRegCheck() {
                        if (!hpReg.test($("input[name=memberPhone]").val())) {
                            $("#hpRegCheckMsg").html("'-'를 포함해서 입력해주세요.'");
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
                                        hpFlag = 1;
                                    } else {
                                        $("#hpRegCheckMsg").html('이미 등록된 핸드폰번호 입니다.');
                                        hpFalg = 0;
                                    }
                                }
                            });
                        }
                    }

                    function fn_loadImg(f) {
                        // console.log(f); // <input~ > 태그자체가 들어있음
                        // console.log(f.files); // FileList 파일name, size, 경로 등등 들어있고
                        // console.log(f.files[0]); // FileList의 [0]의 자리에는 filename이 들어있음
                        if (f.files && f.files[0]) {
                            var reader = new FileReader(); // 파일 읽기 메소드
                            reader.readAsDataURL(f.files[0]); // 읽기 완료시 onload 이벤트 발생
                            reader.onload = function(e) {
                                $("#modimg").attr("src", e.target.result);
                                console.log(e);
                                // FileReader 객체의 result에는
                                // 파일의 컨텐츠가 담겨있음
                            }
                        }
                    }

                    $(document).ready(function() {
                        if ($("[name=sessionMemberGender]").val() == "남자") {
                            fn_M();
                        } else {
                            fn_W();
                        }
                    });

                    function fn_M() {
                        $("#man").prop("checked", true);
                        $("[name=memberGender]").val("남자");
                    }

                    function fn_W() {
                        $("#woman").prop("checked", true);
                        $("[name=memberGender]").val("여자");
                    }

                    $("#emailChangeBtn").click(function() {
                        $("#emailDiv").show();
                        $("#emailChangeBtn").attr("style", "display:none");
                        $("[name=memberEmail]").val("");
                        $("[name=memberEmail]").attr("readonly", false);
                        $("[name=memberEmail]").attr("style", "border:show");
                        $("[name=memberEmail]").attr("class", "form-control");
                        emailNumberFlag = 0;
                    });

                    $("#phoneChangeBtn").click(function() {
                        $("#phoneDiv").show();
                        $("#phoneChangeBtn").attr("style", "display:none");
                        $("[name=memberPhone]").val("");
                        $("[name=memberPhone]").attr("readonly", false);
                        $("[name=memberPhone]").attr("style", "border:show");
                        emailNumberFlag = 0;
                        emailFlag = 1;
                    });

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
                        } else {
                            $.ajax({
                                url: "/sendSMS.do",
                                data: param,
                                dataType: "json",
                                success: function(data) {
                                    phoneNumber = data.phoneNumber;
                                    memberPhoneValue = $("[name=memberPhone]").val();
                                    alert(data.alert);
                                    $("#phoneCheck").removeAttr("disabled");
                                    alert(data.phoneNumber);
                                    console.log(data.alert);
                                },
                                error: function(request, status, error) {
                                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                                }
                            });
                        }
                    }

                    function fn_birthRegCheck2() {
                        if (!birthReg.test($("input[name=memberBirth]").val())) {
                            $("#birthRegCheckMsg").html("입력시 '-'가 포함되면안되고 8글자로 작성해주세요.");
                            birthFlag = 0;
                        } else {
                            $("#birthRegCheckMsg").html("좋아좋아");
                            birthFlag = 1;
                        }
                    }

                    function fn_phoneNumberCheck() {
                        if ($("#phoneCheck").val() == phoneNumber) {
                            $("#phoneCheckSpan").html("인증번호가 확인되었습니다.");
                            phoneNumberFlag = 1;
                        } else {
                            $("#phoneCheckSpan").html("인증번호를 확인해주세요.");
                            phoneNumberFlag = 0;
                        }
                    }

                    function fn_submitBtn() {
                        $("#updateFrm").submit();
                    }
                    
                    function fn_deleteBtn() {
                       location.href="/deleteMember.do";
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

                </script>
            </div><!-- End off container -->
        </section><!-- End off blog Fashion -->
        <!--Company section-->

        <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

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