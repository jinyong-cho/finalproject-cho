-------------디테일 노티스 --------------------
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
   <style type="text/css">
      #alink,#alink2{
      color:gray;
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
        <section id="hello" class="blog-banner bg-mega" style="background-image: url('/resources/assets/images/background/3-1.png');">
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
                    <table class="table">
                        <thead>
                            <tr>
                                <td colspan="2">조회수</td>
                                <td>${notice.noticeView }</td>
                            </tr>
                            <tr>
                                <td colspan="2">작성자</td>
                                <td>${notice.writerId }</td>
                            </tr>
                            <tr>
                                <td colspan="2">첨부파일</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${not empty notice.noticeReFileName }">
                                           <a href="/download.do?noticeReFileName=${notice.noticeReFileName }">${notice.noticeReFileName }</a>
                                        </c:when>
                                        <c:otherwise>
                                            <span> 첨부파일이 존재하지 않습니다 </span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="2">제목</td>
                                <td>${notice.noticeTitle }</td>
                            </tr>
                            <tr>
                                <td colspan="2">내용</td>
                                <td>
                                    <div style="width:700px;">${notice.noticeContent }</div>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                <hr>
                <div>
                   
                    <c:if test="${notice.countNo ne 1}">
                        <i class="fas fa-angle-up"></i>
                        <a href="/preNotice.do?countNo1=${notice.countNo }&countNo2=1" style="font-size: 18px;" id="alink">이전글${preNotice.noticeTitle }</a><br>
                    </c:if>
                    <hr style="padding: 0; margin: 3px;">
               <c:if test="${notice.countNo ne max}">
                        <i class="fas fa-angle-down"></i>
                        <a href="/nextNotice.do?countNo1=${notice.countNo }&countNo2=1" style="font-size: 18px;" id="alink2">다음글 ${neNotice.noticeTitle }</a><br>
                    </c:if>
                    <br>
                    <a href="/noticeList.do?currentPage=1" style="color:black;text-decoration:none; float:left;"><button type="button" class="btn">목록으로 돌아가기</button></a><br>
                    <c:if test="${sessionScope.member.memberId eq 'admin' }">
                       <a href="/updatePageNotice.do?noticeNo=${notice.noticeNo }" style="color:gray;">
                       <input type="button" value="글수정" id="submitButton" class="btn" style="float:right; color:gray;"></a>
                       <a href="/deleteNotice.do?noticeNo=${notice.noticeNo }&noticeReFileName=${notice.noticeReFileName }" style="text-decoration:none; color:gray; float:right;">
                       <button type="button" class="btn" style="margin-right: 2px;">글삭제</button></a>
                    </c:if>
                </div>
            </div>
            <!-- End off container -->
        </section>
        <!-- End off blog Fashion -->
     </div>
          
                <!--Our Work Section-->
                
         
   
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
        
        <script type="text/javascript">
            var msnry = new Masonry('.blog_area');
        </script>
        
        <script src="/resources/assets/js/plugins.js"></script>
        <script src="/resources/assets/js/main.js"></script>

    </body>
</html>