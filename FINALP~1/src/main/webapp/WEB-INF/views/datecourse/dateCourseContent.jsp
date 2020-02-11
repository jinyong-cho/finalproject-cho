<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>데이트코스 정보 상세조회</title>
    <meta name="description" content="">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Courgette|Sunflower:300&display=swap" rel="stylesheet">
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
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">Date Course</h1>
                        </div>
                    </div>
                </div>
                <!--End off row-->
            </div>
            <!--End off container -->
        </section>
        <!--End off Home Sections-->


        <!--Blog Features Section-->


        <section id="feature" class="feature p-top-100" style="background-image: url('/resources/assets/images/background/valentines-day-1986203_1920.png');background-position:right bottom;background-repeat: no-repeat; background-size: 500px 500px;">

            <div class="container">
            <div style="background-color: rgba(250, 241, 214, 0.09); width: 1170px;padding:8px;height:900px; margin: auto;">
                <div style="width: 900px; margin:2% auto; text-align:center; font-family: fantasy; font-size: 50px;font-weight:700;font-family: 'Sunflower', sans-serif; ">${dc.dcTitle }</div>

                <script type="text/javascript">
                    $(document).ready(function() {
                        $("#deleteBtn").click(function() {
                            if (confirm("첨부파일을 삭제하시겠습니까?")) {
                                $("#deleteBtn").hide();
                                $("[name=up_file]").show();
                                $("[name=status]").val("delete");
                                $("#img-viewer").attr("src", "");
                            }
                        });
                    });
                </script>
                <input type="hidden" name="dcNo" value="${dc.dcNo }">
                <input type="hidden" name="memberId" value="${sessionScope.member.memberId }">

         
                <table class="table" style="width: 800px; margin: auto;">
                    <tr>
                        <td style="width: 100px;font-size:20px;font-weight:700; text-align: center; border: none;">제목</td>
                        <td colspan="5" style="border: none; font-size:20px;">${dc.dcTitle } </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;font-size:20px;font-weight:700;  text-align: center;">장소명</td>
                        <td colspan="5" style="font-size:20px;">${dc.dcPlace } </td>
                    </tr>

                    <tr>
                        <td style="width: 100px;font-size:20px;font-weight:700;  text-align: center;">지역</td>
                        <td style="font-size:20px;">${dc.dcArea } </td>
                    <tr>
                        <td style="width: 100px;font-size:20px;font-weight:700;  text-align: center;">금액</td>
                        <td style="font-size:20px;">${dc.dcCash } </td>
                    </tr>
                    <tr>
                        <td style="width: 100px;font-size:20px;font-weight:700;  text-align: center;">유형</td>
                        <td style="font-size:20px;">${dc.dcType } </td>
                    </tr>


                    <tr>
                        <td colspan="6" style="text-align: center;">
                            <div style="width: 300px; height: 300px; margin: auto;">
                                <img id="img-viewer" width="100%" height="100%" src="/resources/upload/photo/${requestScope.dc.dcRePhotoName }">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: center; border: none;">
                            <div style="font-size: 20px;">${dc.dcContent }</div>
                        </td>
                    </tr>
                </table>
                
                <div style="font-size: 30px; width: 200px; margin-left: 180px; color:hotpink;">
                    Like <span id="likeSpan">${dc.dcLikes }</span>
                    <div style="display: inline-block;">
                    <c:choose>
                            <c:when test="${empty sessionScope.member }">
                                <button type="button" class="loginPlese btn" style="background-color: white; color:black;padding: 0;">
                            <i class="fas fa-heart fa-2x"></i></button>
                            </c:when>
                            <c:otherwise>
                               <button type="button" id="dcLike" class="btn" style="background-color: white; color:black;padding: 0;">
                            <i class="fas fa-heart fa-2x"></i></button>
                            </c:otherwise>
                        </c:choose>
                   </div>
                </div>

            


                <div style="width: 300px; float: right; margin:3% auto;">
                    <c:if test="${sessionScope.member.memberId eq 'admin'}">
                        <a href="/dateCourseUpdateFrm.do?dcNo=${dc.dcNo }" style="color:black"><button class="btn">수정</button></a>
                        <a href="/delectDateCourseContent.do?dcNo=${dc.dcNo }&dcOldPhotoReName=${requestScope.dc.dcRePhotoName }" style="color:black">
                            <button class="btn">삭제</button></a>
                    </c:if>
                    <a href="/dateCourseList.do?currentPage=1"><button class="btn" style="color:black">리스트로가기</button></a>
                </div>
         </div>


                <script type="text/javascript">
                    function fn_loadImg(f) {
                        // console.log(f); // <input~ > 태그자체가 들어있음
                        // console.log(f.files); // FileList 파일name, size, 경로 등등 들어있고
                        // console.log(f.files[0]); // FileList의 [0]의 자리에는 filename이 들어있음
                        if (f.files && f.files[0]) {
                            var reader = new FileReader(); // 파일 읽기 메소드
                            reader.readAsDataURL(f.files[0]); // 읽기 완료시 onload 이벤트 발생
                            reader.onload = function(e) {
                                $("#img-viewer").attr("src", e.target.result); //미리보기
                                $("#img-viewer").show();
                                console.log(e);
                                // FileReader 객체의 result에는
                                // 파일의 컨텐츠가 담겨있음
                            }
                        }
                    }

                    $("#dcLike").click(function() {
                        var param = {
                            memberId: $("[name=memberId]").val(),
                            dcNo: $("[name=dcNo]").val()
                        }
                        $.ajax({
                            url: "/updateLike.do",
                            type: "POST",
                            data: param,
                            dataType:"json",
                            success: function(data) {
                                $("#likeSpan").html(data.likeValue); //data안에 좋아요 수 들어있뜸,이걸로 갱신 시켜쥼
                                 if (data.result == 1) {
                                    $("#dcLike").css("color", "pink");
                                } else {
                                    $("#dcLike").css("color", "black");
                                }

                            }
                        });
                    });
                </script>
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