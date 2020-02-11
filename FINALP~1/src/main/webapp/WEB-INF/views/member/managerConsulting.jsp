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

    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <!--Google Fonts link-->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Noto+Sans+KR|Sunflower:300&display=swap" rel="stylesheet">

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


        <nav class="navbar navbar-default navbar-fixed white no-background bootsnav text-uppercase">
            <!-- Start Top Search -->
            <!-- End Top Search -->
            <div class="container">
                <!-- Start Atribute Navigation -->
                <!-- End Atribute Navigation -->
                <!-- Start Header Navigation -->
                <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
        </nav>

        <!--Home Sections-->
        <section id="hello" class="blog-banner bg-mega" style="background-image: url('/resources/assets/images/background/3-1.png');">
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
                    <div style="text-align: center;font-family: 'Noto Sans KR', sans-serif; ">
                        <h1 style="color: gray; font-family: 'Do Hyeon', sans-serif;">매니저시스템소개</h1>
                        <br>
                        <div style="text-align: center;">
                            <span style="font-size: 25px; color:black;">연애인만의 프리미엄 서비스</span><br>
                            <br> <span style="font-size: 18px" ;>원활한 매칭을 진행하기 위해서는
                                전문적이고 체계적인 서비스가 필수적입니다. 이를위해 연애인은 프리미엄 매칭서비스를 실행하고 있습니다.<br>
                                <br>이상형타입을 바탕으로
                                <span style="font-weight: bold; color:#FF5A5A">전담매니저가 1:1 매칭</span>을 진행해드립니다.<br> 1회 단
                                2만원이라는 비용으로 저렴한 비용으로 부담없이 매칭서비스를 이용해보세요!
                            </span>
                        </div>
                        <br><br>
                        <div style="text-align: center;color:black;">
                            < 가격안내 1회2만원 3/5/7/10>
                        </div><br><br>
                        <span style="font-size: 18px; color:black;" ;>진행순서</span><br><br>
                        <span style="color:black;">1. 마이페이지에서 1:1매니저 상담신청을 누릅니다.</span><br><br>
                        <span style="color:black;">2. 원하는 횟수로 비용을 결제합니다.</span><br><br>
                        <span style="color:black;">3. 전문가 집단인 매칭 커플매니저가 고객님께 전담됩니다. </span><br><br>
                        <span style="color:black;">4. 커플매니저가 고객님의 성향과 이상형타입을 분석하여 커뮤니케이션 하며 지원합니다.</span><br><br>
                        <span style="color:black;">5. 1:1 매칭으로 고객님께 맞는 최상의 이상형을 매칭해드립니다.</span><br><br>
                        <br>
                    </div>

                    <input type="hidden" name="name" value="${sessionScope.member.memberName }">
                    <!-- 이름 -->
                    <input type="hidden" name="addr" value="${sessionScope.member.memberAddr }">
                    <!-- 주소! -->
                    <input type="hidden" name="postcode" value="${sessionScope.member.memberAddr2 }">
                    <!-- 우편번호 -->
                    <input type="hidden" name="email" value="${sessionScope.member.memberEmail }">
                    <!-- 이메일 -->
                    <input type="hidden" name="phone" value="${sessionScope.member.memberPhone }">
                    <!-- 핸드폰번호 -->
                    <div style="width: 1210px; height: 200px; box-sizing: border-box; float: left;">
                        <div name="price" id="price1" value="600" onclick="fn_3()" style="border: 1px solid white; cursor: pointer; width: 300px; height: 200px; float: left; background-color: #FAE0D4; text-align: center; font-size: 30px; color: gray;">
                            <br>
                            <br>3회
                        </div>
                        <div name="price" id="price2" value="1000" onclick="fn_5()" style="border: 1px solid white; cursor: pointer; width: 300px; height: 200px; float: left; background-color: #FAECC5; text-align: center; font-size: 30px; color: gray">
                            <br>
                            <br>5회
                        </div>
                        <div name="price" id="price3" value="1400" onclick="fn_7()" style="border: 1px solid white; cursor: pointer; width: 300px; height: 200px; float: left; background-color: #FAF4C0; text-align: center; font-size: 30px; color: gray">
                            <br>
                            <br>7회
                        </div>
                        <div name="price" id="price4" value="2000" onclick="fn_10()" style="border: 1px solid white; cursor: pointer; width: 300px; height: 200px; float: left; background-color: #E4F7BA; text-align: center; font-size: 30px; color: gray">
                            <br>
                            <br>10회
                        </div>

                    </div>
                    <input type="hidden" id="price">
                    
                    <div style="width: 200px; height:40px; margin:auto;">
                    <button type="button" class="btn" style="width: 100%; height: 100%; margin-top: 8%;" id="click" onclick="fn_g()">결제</button>
                    </div>
                    

                    <script>
                        function fn_3() {
                            $("#price").val("600");
                        }

                        function fn_5() {
                            $("#price").val("1000");
                        }

                        function fn_7() {
                            $("#price").val("1400");
                        }

                        function fn_10() {
                            $("#price").val("2000");
                        }
                        $("#price1").click(function() {

                            $("#price1").css("background", "#FFC19E");
                            $("#price2").css("background", "#FAECC5");
                            $("#price3").css("background", "#FAF4C0");
                            $("#price4").css("background", "#E4F7BA");

                        })
                        $("#price2").click(function() {

                            $("#price1").css("background", "#FAE0D4");
                            $("#price2").css("background", "#FFE08C");
                            $("#price3").css("background", "#FAF4C0");
                            $("#price4").css("background", "#E4F7BA");

                        })
                        $("#price3").click(function() {

                            $("#price1").css("background", "#FAE0D4");
                            $("#price2").css("background", "#FAECC5");
                            $("#price3").css("background", "#FAED7D");
                            $("#price4").css("background", "#E4F7BA");

                        })
                        $("#price4").click(function() {

                            $("#price1").css("background", "#FAE0D4");
                            $("#price2").css("background", "#FAECC5");
                            $("#price3").css("background", "#FAF4C0");
                            $("#price4").css("background", "#CEF279");

                        })

                        function fn_g() {

                            var IMP = window.IMP; // 생략해도 괜찮습니다.
                            var name = $("[name=name]").val();
                            var price = $("#price").val();
                            var addr = $("[name=addr]").val();
                            var phone = $("[name=phone]").val();
                            var postcode = $("[name=postcode]").val();
                            var email = $("[name=email]").val();
                            IMP.init("imp83473203"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.

                            $
                                .ajax({
                                    url: "/countSearch.do",
                                    success: function(data) {
                                        if (data == 0) {
                                            // IMP.request_pay(param, callback) 호출
                                            IMP
                                                .request_pay({ // param
                                                        pg: "inicis", // 하나의 아임포트계정으로 여러 PG를 사용할 때 구분자
                                                        pay_method: "card", // 결제수단
                                                        merchant_uid: 'merchant_' +
                                                            new Date()
                                                            .getTime(), // 가맹점에서 생성/관리하는 고유 주문번호
                                                        name: "새드 회원 갱생 프로그램", // (선택항목) 원활한 결제정보 확인을 위해 입력 권장 (PG사마다 차이가 있지만) 16자이내로 작성하기를 권장
                                                        amount: price, // 결제할 금액

                                                        // 구매자 정보
                                                        buyer_email: email, // 주문자 이메일(선택항목)
                                                        buyer_name: name, // 주문자 이름(선택항목)
                                                        buyer_tel: phone, // 핸드폰 번호 (필수)
                                                        buyer_addr: addr, // 주문자 주소(선택항목) */
                                                        buyer_postcode: postcode
                                                        // 주문자 우편번호(선택항목) */
                                                    },
                                                    function(rsp) { // callback
                                                        if (rsp.success) {
                                                            // 결제 성공 시 로직,
                                                            alert("결제에 성공하셨습니다.");
                                                            location.href = "/managerMatching.do?price=" +
                                                                price;
                                                        } else {
                                                            // 결제 실패 시 로직,
                                                            alert(rsp.error_msg);
                                                        }
                                                    });
                                        } else {
                                            IMP
                                                .request_pay({ // param
                                                        pg: "inicis", // 하나의 아임포트계정으로 여러 PG를 사용할 때 구분자
                                                        pay_method: "card", // 결제수단
                                                        merchant_uid: 'merchant_' +
                                                            new Date()
                                                            .getTime(), // 가맹점에서 생성/관리하는 고유 주문번호
                                                        name: "새드 회원 갱생 프로그램", // (선택항목) 원활한 결제정보 확인을 위해 입력 권장 (PG사마다 차이가 있지만) 16자이내로 작성하기를 권장
                                                        amount: price, // 결제할 금액

                                                        // 구매자 정보
                                                        buyer_email: email, // 주문자 이메일(선택항목)
                                                        buyer_name: name, // 주문자 이름(선택항목)
                                                        buyer_tel: phone, // 핸드폰 번호 (필수)
                                                        buyer_addr: addr, // 주문자 주소(선택항목) */
                                                        buyer_postcode: postcode
                                                        // 주문자 우편번호(선택항목) */
                                                    },
                                                    function(rsp) { // callback
                                                        if (rsp.success) {
                                                            // 결제 성공 시 로직,
                                                            alert("결제에 성공하셨습니다.");
                                                            location.href = "/managerUpdateMatching.do?price=" + price;
                                                        } else {
                                                            // 결제 실패 시 로직,
                                                            alert(rsp.error_msg);
                                                        }
                                                    });
                                        }
                                    }

                                });
                        }

                    </script>
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

    <script src="/resources/assets/js/plugins.js"></script>
    <script src="/resources/assets/js/main.js"></script>

</body>

</html>