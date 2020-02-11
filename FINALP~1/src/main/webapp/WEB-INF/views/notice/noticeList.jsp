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
            <!-- End Top Search -->
            <div class="container">
                <!-- Start Atribute Navigation -->
                <!-- End Atribute Navigation -->
                <!-- Start Header Navigation -->
                <jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
        </nav>

        <!--Home Sections-->
        <section id="hello" class="blog-banner bg-mega" style="background-image : url('/resources/assets/images/background/3-1.png');">
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
                <div class="row">

                      <form action="/searchNotice.do" method="post">
                        <input type="hidden" name="currentPage" value="1">
                            <div style="width: 500px; margin-left: 770px;">
                              <select class="form-control" style="width:100px;float: left;" name="select">
                                <option>작성자</option>
                                <option>제목</option>
                                  </select> 
                                <div class="input-group mb-3">
                               <input type="text" name="search" class="form-control" style="width: 250px;display: inline-block;" placeholder="검색할 내용을 입력하세요" id="related" onkeyup="fn_keyword()">
                                 <div class="input-group-append" style="width: 0;">
                               <input type="submit" value="검색" class="btn">
                                  </div>
                             </div>
                             </div>
                        </form>
                    
                    <br><br>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th style="text-align:center; width:150px;">번호</th>
                                <th>제목</th>
                                <th style="text-align:center; width:150px;">작성자</th>
                                <th style="text-align:center; width:150px;">작성일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${empty list }">
                                <tr>
                                    <td colspan="4">게시글이 존재하지 않습니다.</td>
                                </tr>
                            </c:if>
                            <c:forEach items="${list }" var="n" varStatus="i">
                                <tr>
                                    <td style="text-align:center;">${i.count }</td>
                                    <td><a href="/detailNotice.do?noticeNo=${n.noticeNo}">${n.noticeTitle }</a></td>
                                    <td style="text-align:center;">${n.writerId }</td>
                                    <td style="text-align:center;">${n.noticeRegDate }</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div style="text-align: center;">
                        ${pageNavi }
                    </div>
                    <c:if test="${sessionScope.member.memberId eq 'admin' }">
                    <a href="/writeFrm.do" style="float:right; color:gray;"><button type="button" class="btn">글 작성</button></a>
                	</c:if>
                </div>
            </div><!-- End off container -->
        </section><!-- End off blog Fashion -->

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
