<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="ko"> 

<head>
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>데이트코스 게시물 등록</title>
    <meta charset="utf-8">
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
                                <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">Date Course</h1>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->

          
            <section id="feature" class="feature p-top-100">
             
	   <div class="container">
	   <div style="margin: auto; width: 800px;">
	   
	   
	 
	   <div style="font-size: 40px; font-weight: 400; color:black;margin-bottom: 3%;">데이트 코스 등록</div>
    	<form action="/insertDateCourse.do" method="post" enctype="multipart/form-data" id="frm">
        <table class="table" style="width: 800px;">
        
           <tr >
           <td style="text-align: center;width: 120px; border: none; vertical-align: middle;">작성자</td>
           <td colspan="5" style="border: none;" >
           <input type="text" name="writerId" class="form-control" value="admin" style="background-color:white; border: none;" readonly="readonly">
           </td>
          
           </tr>
            <tr>
                <td colspan="2">
                    <select name="dcArea"class="form-control">
      					<option selected="selected" disabled="disabled">지역선택</option>
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
                    <input type="text" name="dcCash" class="form-control" placeholder="금액입력">
                </td>
                <td colspan="2">
                    <select name="dcType" class="form-control">
                    	<option selected="selected" disabled="disabled">유형선택</option> 
                        <option value="맛집">맛집</option>
                        <option value="카페">카페</option>
                        <option value="놀거리">놀거리</option>
                    </select>
                </td>
            </tr>
            <tr>
            	<td style="text-align: center; vertical-align: middle;">제목</td>
	            <td colspan="4">
                 <input type="text" name="dcTitle" class="form-control" placeholder="제목입력">
                </td>
            </tr>
             <tr>
                <td colspan="6">
                   <input type="text" class="form-control" name="dcPlace" placeholder="장소명을 입력해주세요.">
                </td>
            </tr>
            
            <tr>
                <td colspan="6">
                    <input type="file" name="up_File" onchange="fn_loadImg(this)" style="display:none">
                    <label id="addBtnLabel" for="addBtn">선택된 파일 없음 </label>
               		<button type="button" id="addBtn">파일 추가</button>
                	<label id="deleteBtnLabel" for="deleteBtn" style="display: none"></label>
                	<button type="button" id="deleteBtn" style="display: none">파일삭제</button>
                </td>    
             </tr>
             <tr>
             	<td colspan="6" style="text-align: center; border: none; padding: 0px;">
                        <img id="img-viewer" width="250">
             	</td>
             </tr>
            <tr>
                <td colspan="6" style="padding: 0"><textarea name="dcContent" id="textAreaContent" style="width: 795px;"></textarea></td>
            </tr>
        </table>
    </form>
    <div style="width: 250px; height:40px; margin:5% auto;">
     <button type="button" id="submitButton" style="width: 100%; height: 100%;" class="btn">작성완료</button>
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
                $("[name=up_File]").val("");
            } else {
                return false;
            }
        });
    
    	$("#addBtn").click(function() {
       	 	$("[name=up_File]").click();
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
            var sHTML = '<img src="/resources/upload/testPhoto/' + filepath + '"width="300px">';
            oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
        }

        $("#submitButton").click(function() {
        	oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", []);
        	var taContent = $("#textAreaContent").val(); 
        	if ($("[name=dcTitle]").val().trim()=="" && $("[name=dcTitle]").val().trim().length==0) {
             	alert("제목을 입력해주세요.");
             	$("[name=dcTitle]").focus();
             } else if(taContent == "" || taContent == null || taContent == '&nbsp;' || taContent == '<p>&nbsp;</p>' || taContent == '<br>' || taContent == '<br/>' ) {
 				oEditors.getById["textAreaContent"].exec("FOCUS"); //포커싱 
				alert("내용을 입력하세요");
             } else if(!($("[name=up_File]").val())) {
            	 alert("커버사진을 등록해주세요!");
            	 $("[name=up_File]").focus();
             } else if(!$("[name=dcCash]").val()) {
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
