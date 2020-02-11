------------업데이트 노티스 ----------------------
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <title>NOTICE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
     <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <!--Google Fonts link-->
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
                <!-- Start Atribute Navigation -->
               <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
            </div>
        </nav>


        <!--Home Sections-->

        <section id="hello" class="blog-banner bg-mega" style="background-image : url('/resources/assets/images/background/1.png');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="main_home text-center">
                        <div class="about_text">
                            <h1 class="text-white text-uppercase">NOTICE</h1>
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
                <h2>공지사항</h2>
                <form action="/updateNotice.do" method="post" enctype="multipart/form-data" id="frm">
                    <input type="hidden" name="noticeNo" value="${notice.noticeNo }" style="border: none">

                    <table class="table">
                        <thead>
                            <tr>
                                <td colspan="2">조회수</td>
                                <td><input type="text" name="countView" value="${notice.noticeView }" readonly style="border: none"></td>
                            </tr>
                            <tr>
                                <td colspan="2">작성자</td>
                                <td><input type="text" name="writerId" value="${requestScope.notice.writerId }" readonly style="border: none"></td>
                            </tr>
                            <tr>
                                <td colspan="2">첨부파일</td>
                                <td><input type="hidden" name="oldReFile" value="${notice.noticeReFileName }">
                                    <input type="hidden" name="oldOriFile" value="${notice.noticeOriFileName }">
                                    <input type="hidden" name="status" value="stay">
                                    <input type="file" name="fileUpload" class="form-control-file" onchange="fn_loadFile(this)" style="display: none">
                                    <c:choose>
                                        <c:when test="${not empty notice.noticeReFileName }">
                                            <label id="deleteBtnLabel" for="deleteBtn"> ${notice.noticeOriFileName } </label>
                                            <button type="button" id="deleteBtn">파일 삭제</button>
                                            <label id="addBtnLabel" for="addBtn" class="form-control-file" style="display: none">선택된 파일 없음 </label>
                                            <button type="button" id="addBtn" class="form-control-file" style="display: none"> 파일 추가</button>
                                        </c:when>
                                        <c:otherwise>
                                            <label id="addBtnLabel" for="addBtn">선택된 파일 없음 </label>
                                            <button type="button" id="addBtn">파일 추가</button>
                                            <label id="deleteBtnLabel" for="deleteBtn" class="form-control-file" style="display: none"></label>
                                            <button type="button" id="deleteBtn" class="form-control-file" style="display: none">파일삭제</button>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="2">제목</td>
                                <td><input type="text" name="noticeTitle" value="${notice.noticeTitle }" readonly style="border: none; width:800px;"></td>
                            </tr>
                            <tr>
                                <td colspan="2">내용</td>
                                <td>
                                    <textarea id="textAreaContent" name="content" style="width:1020px; height:600px;">${notice.noticeContent }</textarea>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <div>
                    <hr>
                    <input type="button" class="btn" value="글수정" id="submitButton" style="float:right;">
                    <a href="/deleteNotice.do?noticeNo=${notice.noticeNo }&noticeReFileName=${notice.noticeReFileName }" style="float:right; color:gray;"><button class="btn">글삭제</button></a>
                    <a href="/noticeList.do?currentPage=1" style="color:black; text-decoration:none; float:left;"><button class="btn" style="color:gray">목록으로 돌아가기</button></a>
                </div>
                <script>
                    //업로드된 파일 삭제 함수
                    $("#deleteBtn").click(function() {
                        if (confirm("삭제하시겠습니깡?")) {
                            $("[name=status]").val("delete");
                            $("#deleteBtn").hide();
                            $("#deleteBtnLabel").hide();
                            $("#addBtn").show();
                            $("#addBtnLabel").show();
                            $("#addBtnLabel").text("첨부 파일 없음");
                        } else {
                            return false;
                        }
                    });

                    $("#addBtn").click(function() {
                        $("[name=fileUpload]").click();
                    });

                    function fn_loadFile(f) {
                        if (f.files && f.files[0]) {
                            var reader = new FileReader(); // 파일 읽기 메소드
                            console.log(f.files[0].name);
                            reader.readAsDataURL(f.files[0]); // 읽기 완료시 onload 이벤트 발생
                            reader.onload = function(e) {
                                $("#addBtnLabel").hide();
                                $("#deleteBtnLabel").show();
                                $("#deleteBtnLabel").html(f.files[0].name);
                                $("#addBtn").hide();
                                $("[name=status]").val("delete");
                                $("#deleteBtn").show();
                            }
                        }
                    }

                    var oEditors = [];
                    nhn.husky.EZCreator.createInIFrame({
                        oAppRef: oEditors,
                        elPlaceHolder: "textAreaContent",
                        sSkinURI: "/smartEditor2/SmartEditor2Skin.html",
                        htParams: {
                            bUseToolbar: true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                            bUseVerticalResizer: false, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                            bUseModeChanger: true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                            fOnBeforeUnload: function() {
                                //alert("아싸!");   
                            }
                        }, //boolean
                        fCreator: "createSEditor2"
                    });

                    // 파일 미리보기
                    // 미리보기하기전에 업로드가 완료됨
                    function pasteHTML(filepath) {
                        var sHTML = '<img src="/resources/upload/testPhoto/' + filepath + '" width="300px">';
                        oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
                    }

                    $("#submitButton").click(function() {
                        oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
                        $("#frm").submit(); // 서브밋!

                    });
                </script>

            </div><!-- End off container -->
        </section><!-- End off blog Fashion -->



        <!--Company section-->

        <section id="company" class="company bg-light">
            <div class="container">
                <div class="row">
                    <div class="main_company roomy-100 text-center">
                        <h3 class="text-uppercase">pouseidon.</h3>
                        <p>7th floor - Palace Building - 221b Walk of Fame - London- United Kingdom</p>
                        <p>(+84). 123. 456. 789 - info@poiseidon.lnk</p>
                    </div>
                </div>
            </div>
        </section>


        <!-- scroll up-->
        <div class="scrollup">
            <a href="#"><i class="fa fa-chevron-up"></i></a>
        </div><!-- End off scroll up -->


        <footer id="footer" class="footer bg-mega">
            <div class="container">
                <div class="row">
                    <div class="main_footer p-top-40 p-bottom-30">
                        <div class="col-md-6 text-left sm-text-center">
                            <p class="wow fadeInRight" data-wow-duration="1s">
                                Made with
                                <i class="fa fa-heart"></i>
                                by
                                <a target="_blank" href="http://bootstrapthemes.co">Bootstrap Themes</a>
                                2016. All Rights Reserved
                            </p>
                        </div>
                        <div class="col-md-6 text-right sm-text-center sm-m-top-20">
                            <ul class="list-inline">
                                <li><a href="">Facebook</a></li>
                                <li><a href="">Twitter</a></li>
                                <li><a href="">Instagram</a></li>
                                <li><a href="">Pinterest</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>




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