<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <title>Insert title here</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
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
        </div><!--End off Preloader -->


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

            <section id="hello" class="blog-banner bg-mega" style = "background-image : url('/resources/assets/images/background/3-1.png');" >
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="about_text">
                                <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">Review</h1>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


            <!--Blog Features Section-->
            
          
            <section id="feature" class="feature">
             
	   <div class="container" style="margin: 2% auto;">
 
    	<div style="margin:auto; font-size: 45px;width: 900px;">연애인 후기</div>
    
    	<form action="/updateReview.do" method="post" enctype="multipart/form-data" id="frm">
      	<input type="hidden" name="reviewNo" value="${review.reviewNo }">
      	<table class="table table-border" style="width: 900px; margin:2% auto;">
      	
      		<tr>
      			<td  style="width: 100px;text-align: center; border: none; vertical-align: middle;">제목</td>
      			<td colspan="3" style="border: none;"><input type="text"  class="form-control" name="reviewTitle" value="${review.reviewTitle }" placeholder="제목을 입력해 주세요."></td>
      		</tr>
      		<tr>
      			<td style="width: 100px;text-align: center;  vertical-align: middle;">작성자</td>
      			<td colspan="3">${review.writerId } <input type="hidden" name="writerId" value="${review.writerId }"></td>
      		</tr>
      		<tr>
      			<td style="width: 100px;text-align: center;">
      			좋아요 : ${review.reviewLikes } <input type="hidden" name="reviewLike" value="${review.reviewLikes }">
      			</td>
      			<td>
      			조회수 : ${review.reviewViews } <input type="hidden" name="reviewViews" value="${review.reviewViews }">
      			</td>
      		
      		</tr>
      		<tr>
      			<td style="width: 100px;text-align: center;  vertical-align: middle;">첨부파일<br>
      			<button type="button" id="deleteBtn" class="btn">변경</button></td>
      			<td colspan="3"><div style="width: 300px; height: 300px">
           		 <img id="img-viewer" width="100%" height="100%" src="/resources/upload/photo/${review.reviewReFileName}">
        		</div>
        		</td>
      		</tr>
      		
	      		<tr>
	      			<td colspan="3" style="width: 900px; margin: auto;"><textarea name="reviewContent" id="textAreaContent" style="width: 880px;margin: auto;">${review.reviewContent }</textarea></td>
	      		</tr>
      	</table>
        
        <input type="hidden" name="oldReFile" value="${review.reviewReFileName }">
        <input type="hidden" name="oldOriFile" value="${review.reviewOriFileName }">
        <input type="hidden" name="status" value="stay">
        <input type="file" name="fileUpload" onchange="fn_loadImg(this)" style="display: none;">
        
        <div style="width: 500px; height:40px; margin:2% auto;">
        <input type="button" value="글수정" style="width: 45%; height: 100%;" class="btn" id="submitButton">
        <a href="/deleteReview.do?reviewNo=${review.reviewNo }" style="color:gray;"><button style="width: 45%; height: 100%;" class="btn">글삭제</button></a> 
        </div> 
    </form>
    <script>
        $("#deleteBtn").click(function() {
            if (confirm("커버사진을 변경하시겠습니까?")) {
                $("[name=status]").val("delete");
                $("[name=fileUpload]").click();
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
        
        //이전글 다음글 
        $("#subBtn").click(function() {
            var check = confirm('삭제하시겠습니까?');
            if (check) {
                return true;
            } else {
                return false;
            }
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
            var taContent = $("#textAreaContent").val();
            if ($("[name=reviewTitle]").val().trim() == "" && $("[name=reviewTitle]").val().trim().length == 0) {
                alert("제목을 입력해주세요.");
                $("[name=reviewTitle]").focus();
            } else if (taContent == "" || taContent == null || taContent == '&nbsp;' || taContent == '<p>&nbsp;</p>' || taContent == '<br>' || taContent == '<br/>') {
                oEditors.getById["textAreaContent"].exec("FOCUS"); //포커싱 
                alert("내용을 입력하세요");
            } else {
                oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
                $("#frm").submit(); // 서브밋!
            }
        });
    </script>
</div>
          
                <!--Our Work Section-->
                
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