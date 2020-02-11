----------업데이트 데이트 코스 컨텐츠----------------

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>데이트코스 정보 상세조회</title>
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
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


        <section id="feature" class="feature p-top-100">

            <div class="container" style="font-family: 'Sunflower', sans-serif;">
                <div style="margin: auto; width:900px; background-color: rgba(250, 241, 214, 0.1); ">
                    <div style="font-size: 40px;width:300px; font-weight: 400; color:black; margin-bottom: 3%; margin: auto;">데이트 코스 수정</div>
                    <div style="width: 850px; margin-left: 50px;">
                        <form action="/updateDcContent.do" method="post" enctype="multipart/form-data" id="frm">
                            <input type="hidden" name="dcNo" value="${dc.dcNo }">
                            <input type="hidden" name="memberId" value="${sessionScope.member.memberId }">
                            <table class="table" style="width: 800px;">
                                <tr>
                                    <td style="text-align: center;width: 120px; border: none; vertical-align: middle;">작성자</td>
                                    <td colspan="5" style="border: none;">
                                        <input type="text" name="writerId" class="form-control" value="${dc.writerId }" style="background-color:rgba(250, 241, 214, 0.05); border: none;" readonly="readonly">
                                    </td>
                                </tr>

                                <tr>
                                    <td colspan="2">
                                        <select name="dcArea" class="form-control">
                                            <option value="${dc.dcArea }">${dc.dcArea }</option>
                                            <option value="종로구">종로구</option>
                                            <option value="중구">중구</option>
                                            <option value="강남구">강남구</option>
                                            <option value="마포구">마포구</option>
                                            <option value="명동">명동</option>
                                            <option value="용산구">용산구</option>
                                            <option value="홍대">홍대</option>
                                            <option value="송파구">송파구</option>
                                            <option value="서초구">서초구</option>
                                            <option value="서교동">서교동</option>
                                            <option value="삼청동">삼청동</option>
                                            <option value="인사동">인사동</option>
                                            <option value="동대문">동대문</option>
                                        </select>
                                    </td>
                                    <td colspan="2">
                                        <input type="text" name="dcCash" class="form-control" value="${dc.dcCash}">
                                    </td>
                                    <td colspan="2">
                                        <select name="dcType" class="form-control">
                                            <option value="${dc.dcType }">${dc.dcType }</option>
                                            <option value="맛집">맛집</option>
                                            <option value="카페">카페</option>
                                            <option value="놀거리">놀거리</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center; vertical-align: middle;">제목</td>
                                    <td colspan="4">
                                        <input type="text" name="dcTitle" class="form-control" value="${dc.dcTitle }">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6">
                                        <input type="text" class="form-control" name="dcPlace" value="${dc.dcPlace }">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center;width: 120px;vertical-align: middle;">업로드<br>
                                        <button type="button" class="btn" id="deleteBtn">변경</button>
                                    </td>
                                    <td colspan="6">
                                        <input type="hidden" name="status" value="stay">
                                        <input type="file" name="up_file" onchange="fn_loadImg(this)" style="display: none;">
                                        <div style="width: 300px; height: 300px">
                                            <img id="img-viewer" width="100%" height="100%" src="/resources/upload/photo/${requestScope.dc.dcRePhotoName }">
                                        </div>
                                        <input type="hidden" name="dcOldPhotoReName" value="${requestScope.dc.dcRePhotoName }">
                                        <input type="hidden" name="dcOldPhotoOriName" value="${requestScope.dc.dcOriPhotoName }">

                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="text-align: center; border: none; padding: 0px;">
                                        <img id="img-viewer" width="250">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="6" style="padding: 0">
                                        <textarea cols="80" rows="10" id="textAreaContent" style="width: 795px;" name="dcContent">${dc.dcContent }</textarea></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                    <div style="width: 250px; height:40px; margin:5% auto;">
                        <button type="button" id="submitButton" style="width: 40%; height: 100%;" class="btn">수정하기</button>
                        <a href="/delectDateCourseContent.do?dcNo=${dc.dcNo }&dcOldPhotoReName=${requestScope.dc.dcRePhotoName }" style="color:gray;">
                            <button type="button" class="btn" style="width: 40%; height: 100%; display: inline-block;">글삭제</button></a>
                    </div>


                </div>
                <script type="text/javascript">
                    $("#deleteBtn").click(function() {
                        if (confirm("커버사진을 변경하시겠습니까?")) {
                            $("[name=status]").val("delete");
                            $("[name=up_file]").click();
                        }
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
                                console.log(e);
                                // FileReader 객체의 result에는
                                // 파일의 컨텐츠가 담겨있음
                            }
                        }
                    }

                    $("#dcLikes").click(function() {
                        var param = {
                            memberId: $("[name=memberId]").val(),
                            dcNo: $("[name=dcNo]").val()
                        }
                        $.ajax({
                            url: "/updateLike.do",
                            type: "POST",
                            data: param,
                            success: function(data) {
                                $("[name=dcLikes]").val(data); //data안에 좋아요 수 들어있뜸,이걸로 갱신 시켜쥼
                            }
                        });

                    });

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
                        $("#frm").submit(); // 서브밋!
                    });

                    $("#submitButton").click(function() {
                        oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
                        var taContent = $("#textAreaContent").val();
                        if ($("[name=dcTitle]").val().trim() == "" && $("[name=dcTitle]").val().trim().length == 0) {
                            alert("제목을 입력해주세요.");
                            $("[name=dcTitle]").focus();
                        } else if (taContent == "" || taContent == null || taContent == '&nbsp;' || taContent == '<p>&nbsp;</p>' || taContent == '<br>' || taContent == '<br/>') {
                            oEditors.getById["textAreaContent"].exec("FOCUS"); //포커싱 
                            alert("내용을 입력하세요");
                        } else if (!$("[name=dcCash]").val()) {
                            alert("금액을 등록해주세요");
                            $("[name=dcCash]").focus();
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
    <script src="/resources/assets/js/plugins.js"></script>
    <script src="/resources/assets/js/main.js"></script>

</body>

</html>