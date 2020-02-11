<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous">
    </script>

    <style>

    </style>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet">
    <style type="text/css">
        a:hover {
            opacity: 0.3;
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


        <section id="feature" class="feature p-top-100">

            <div class="container" style="font-family: 'Poor Story', cursive; margin-bottom: 5%; ">
                <div style="width: 1170px; margin: auto;background-color: rgba(250, 241, 214, 0.20); ">
                    <div style="font-size: 70px; margin-top:5%; font-family: 'Courgette', cursive; font-weight: 900; text-align: center;">
                        Review
                    </div>

                    <form action="/searchReview.do" style="margin-left: 750px;">
                        <input type="hidden" name="currentPage" value="1">

                        <select name="select" class="form-control" style="width:90px; height:34px; float:left">
                            <option>작성자</option>
                            <option>제목</option>
                        </select>

                        <div class="input-group mb-3">
                            <input type="text" class="form-control" name="search" placeholder="검색내용" id="related" onkeyup="fn_keyword()">
                            <div class="input-group-append" style="width: 0;">
                                <input type="submit" class="btn" style="width:58px;" value="검색">
                            </div>
                        </div>
                    </form>




                    <div style="width: 1000px;margin: auto;">
                        <c:if test="${empty list }">
                            검색결과가 없습니다.
                        </c:if>
                        <c:forEach items="${list }" var="r" varStatus="i">
                            <a href="/detailReview.do?reviewNo=${r.reviewNo }" style="color:black; margin-left:2.3%">
                                <ul style="width:300px; display: inline-block; margin:4% auto; text-align: center;">
                                    <li style="margin-bottom: 2%;"><img src="/resources/upload/photo/${r.reviewReFileName }" width="300" height="300"></li>
                                    <li style="font-size: 28px;">${r.reviewTitle }</li>
                                    <li style="font-size: 24px;">${r.writerId }</li>
                                    <li style="font-size: 20px;">views : ${r.reviewViews }　like : ${r.reviewLikes }</li>
                                </ul>
                            </a>

                        </c:forEach>
                    </div>
                    <c:if test="${not empty sessionScope.member }">
                        <div style="margin-left:1000px; margin-top:3% ">
                            <a href="/writeReviewFrm.do" style="color:gray;"><button type="button" class="btn">글 작성</button></a>
                        </div>
                    </c:if>


                    <div style="text-align: center;">${pageNavi }</div>
                </div>

                <!--Our Work Section-->
            </div>
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
