<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <title>타이틀</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <title>Insert title here</title>
    <style>
        #tbl1 {
            width: 500px;
            height: 250px;
            table-layout: fixed;
        }

        #tbl2 {
            width: 200px;
            height: 150px;
            table-layout: fixed;
        }

        #dcAlink {
            text-decoration: none;
            color: black;

        }

        #alink:hover {
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


        <section id="feature" class="feature">

            <div class="container" style="font-family: 'Poor Story', cursive;">
                <div style=" background-color:rgba(128, 128, 128, 0.01); width: 1170px; margin: auto;">
                    <div style="font-size: 70px; margin-top:5%; font-family: 'Courgette', cursive; font-weight: 900; text-align: center;">
                        DateCourse List
                    </div>
                    <div style="margin-top:3%;margin-bottom:2%; width: 310px; margin-left: 690px;">
                        <c:if test="${not empty pd.dateCourse }">
                            <form action="/searchDateCourseList.do">
                                <select name="selectType" class="form-control" style="width:90px; height:34px; float:left">
                                    <option>제목</option>
                                    <option>내용</option>
                                </select>
                                <c:forEach items="${info.dcType }" var="type">
                                    <input type="hidden" name="dcType" value="${type }">
                                </c:forEach>
                                <c:forEach items="${info.dcArea }" var="area">
                                    <input type="hidden" name="dcArea" value="${area }">
                                </c:forEach>
                                <input type="hidden" name="dcCash">
                                <input type="hidden" name="currentPage" value="1">

                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" name="searchValue" style="width: 200px;" placeholder="검색내용입력">
                                    <div class="input-group-append" style="width: 0;">
                                        <input type="submit" class="btn" style="width: 80px;" value="검색">
                                    </div>

                                </div>
                            </form>
                        </c:if>

                    </div>

                    <div style="width: 1030px; margin: auto;">
                        <c:choose>
                            <c:when test="${not empty pd.dateCourse }">
                                <c:forEach items="${pd.dateCourse }" var="d">
                                    <a href="/dateCourseContent.do?dcNo=${d.dcNo }" id="dcAlink">
                                        <div id="alink" style="margin:3px auto; width:500px; display: inline-block; background-color: rgba(250, 241, 214, 0.12);">
                                            <table style="margin: 2px; border: rgba(112, 112, 112, 0.253);">
                                                <tr style="width: 200px; height:150px;">
                                                    <td style="width: 200px; height:150px; ">
                                                        <table id="tbl2">
                                                            <tr>
                                                                <td colspan="2" style="text-align: center; font-size: 24px; font-weight:500; height: 70px; font-weight:800px; text-overflow: ellipsis; overflow: hidden;">${d.dcTitle }</td>
                                                            </tr>

                                                            <tr>
                                                                <td colspan="2" style="width: 200px; height:50px; text-align: center; border-top: 1px dashed rgba(112, 112, 112, 0.253); font-size:18px; font-weight:800px; text-overflow: ellipsis; overflow: hidden;">${d.dcPlace }</td>
                                                            </tr>
                                                            <tr style="width: 200px; height: 30px;">
                                                                <td style="width:100px; height: 30px; text-align: center; font-size:18px; font-weight:500; line-height: 7px;">${d.dcArea }</td>
                                                                <td style="width:100px; height: 30px; text-align: center; font-size:18px; font-weight:500; line-height: 7px;">${d.dcType }</td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width:100px; height: 30px; text-align: center; font-size:18px; font-weight:500; color:hotpink; line-height: 7px;">Views: ${d.dcViews }</td>
                                                                <td style="width:100px; height: 30px; text-align: center; font-size:18px; font-weight:500; color:rgb(0, 151, 255); line-height: 7px;">Likes: ${d.dcLikes }</td>
                                                            </tr>

                                                        </table>

                                                    </td>
                                                    <td colspan="2" rowspan="2" width="300px" height="220px">
                                                        <img width="100%" height="100%" src="/resources/upload/photo/${d.dcRePhotoName }">
                                                    </td>
                                                </tr>

                                            </table>
                                        </div>
                                    </a>
                                </c:forEach>
                            </c:when>
                             <c:otherwise>
                                <div style="width: 600px;margin: auto; font-size: 50px;">해당 조건에 맞는 값이 없습니다.</div>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <div style="text-align: center;">
                        ${pd.dateCourseNavi }
                    </div>

                    <c:if test="${sessionScope.member.memberId eq 'admin' }">
                        <div style="margin-left: 1000px; margin-bottom:5%; width: 100px;">
                            <a href="/dateCourseInsert.do" style="color:gray;">
                                <button type="button" class="btn">글작성</button>
                            </a>
                        </div>
                    </c:if>

                </div>
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