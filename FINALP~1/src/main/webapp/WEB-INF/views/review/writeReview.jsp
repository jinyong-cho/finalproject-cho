<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <title>Insert title here</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
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
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">Review</h1>
                        </div>
                    </div>
                </div>
                <!--End off row-->
            </div>
            <!--End off container -->
        </section>
        <!--End off Home Sections-->


        <!--Blog Features Section-->


        <section id="feature" class="feature">

            <div class="container" style="margin: 2% auto; font-family: 'Sunflower', sans-serif;">
               <div style="width: 1170px; margin: auto; background-color: rgba(250, 241, 214, 0.09); ">
                <div style="margin:auto; font-size: 45px;width: 900px;">후기작성</div>
                <form action="/writeReview.do" method="post" enctype="multipart/form-data" id="frm">
                    <table class="table table-border" style="width: 900px; margin:2% auto;">
                        <tr>
                            <td style="width: 100px; text-align: center; border: none; vertical-align: middle; font-size: 20px; font-weight: 600;">작성자</td>
                            <td colspan="2" style="border: none;"><input type="text" class="form-control" style="background-color: rgba(0,0,0,0);font-size: 17px; font-weight: 400; border: none;" name="writerId" value="${sessionScope.member.memberId }" readonly></td>
                        <tr>
                        <tr>
                            <td style="text-align: center; vertical-align: middle;font-size: 20px; font-weight: 600;">제목</td>
                            <td colspan="2"><input type="text" class="form-control" name="reviewTitle" placeholder="제목입력"></td>

                        </tr>
                        <tr>
                            <td style="text-align: center; vertical-align: middle;font-size: 20px; font-weight: 600;">업로드</td>
                            <td colspan="2"><input type="file" name="fileUpload" onchange="fn_loadImg(this)" style="display:none">
                                <label id="addBtnLabel" for="addBtn">선택된 파일 없음 </label>
                                <button type="button" id="addBtn">파일 추가</button><br>
                                <label id="deleteBtnLabel" for="deleteBtn" style="display: none"></label>
                                <button type="button" id="deleteBtn" style="display: none">파일삭제</button>
                            </td>
                        </tr>
                        <tr>
                           <td style="border-top:none;"></td>
                            <td colspan="2" style="border: none; padding: 1px; height:250"><img id="img-viewer" width="250" height="250"></td>
                        </tr>

                        <tr>
                            <td colspan="3" style="width: 900px; margin: auto;"><textarea id="textAreaContent" name="reviewContent" style="width: 880px;margin: auto;"></textarea></td>

                        </tr>
                    </table>
                </form>
                <div style="width: 200px; height:40px; margin:2% auto;">
                    <input type="button" value="등록" style="width: 100%; height: 100%;" class="btn" id="submitButton">
                </div>
         </div>
                <script>
                    $("#deleteBtn").click(function() {
                        if (confirm("삭제하시겠습니깡?")) {
                            $("#deleteBtn").hide();
                            $("#deleteBtnLabel").hide();
                            $("#addBtn").show();
                            $("#addBtnLabel").show();
                            $("#addBtnLabel").text("첨부 파일 없음");
                            $("#img-viewer").attr("src", "");
                            $("[name=fileUpload]").val("");
                        } else {
                            return false;
                        }
                    });

                    $("#addBtn").click(function() {
                        $("[name=fileUpload]").click();
                    });

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
                                $("#addBtnLabel").hide();
                                $("#deleteBtnLabel").show();
                                $("#deleteBtnLabel").html(f.files[0].name);
                                $("#addBtn").hide();
                                $("#deleteBtn").show();
                                // FileReader 객체의 result에는
                                // 파일의 컨텐츠가 담겨있음
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

                    function pasteHTML(filepath) {
                        var sHTML = '<img src="/resources/upload/testPhoto/' + filepath + '" width="300px">';
                        oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
                    }

                    $("#submitButton").click(function() {
                        oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
                        var taContent = $("#textAreaContent").val();
                        if ($("[name=reviewTitle]").val().trim() == "" && $("[name=reviewTitle]").val().trim().length == 0) {
                            alert("제목을 입력해주세요.");
                            $("[name=reviewTitle]").focus();
                        } else if (taContent == "" || taContent == null || taContent == '&nbsp;' || taContent == '<p>&nbsp;</p>' || taContent == '<br>' || taContent == '<br/>') {
                            oEditors.getById["textAreaContent"].exec("FOCUS"); //포커싱 
                            alert("내용을 입력하세요");
                        } else if (!($("[name=fileUpload]").val())) {
                            alert("커버사진을 등록해주세요!");
                            $("[name=up_File]").focus();
                        } else {
                            oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
                            $("#frm").submit(); // 서브밋!
                        }
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

    <script type="text/javascript">
        var msnry = new Masonry('.blog_area');
    </script>

    <script src="/resources/assets/js/plugins.js"></script>
    <script src="/resources/assets/js/main.js"></script>

</body>

</html>