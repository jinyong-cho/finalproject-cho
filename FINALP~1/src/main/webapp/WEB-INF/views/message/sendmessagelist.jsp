<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Acme|Courgette|Sunflower:300&display=swap" rel="stylesheet">
    <style>
        .modal-backdrop {
            z-index: -1;
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
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">연애가 쉬워지는 곳,<br> 연애인</h1>
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

            <div class="container">
                <div style="width:400px;text-align:center; margin: auto; font-size: 50px;font-family: 'Courgette', cursive;">Send Message</div>
                <br>

                <table class="table">
                    <tr>
                        <th style="width:130px;text-align: center;border: none;">보낸이</th>
                        <th style="width:130px;text-align: center;border: none;">받은이</th>
                        <th style="text-align: center;border: none;width: 796px;" colspan="4">내용</th>
                    </tr>

                    <c:forEach var="rm" items="${rm}">
                        <c:if test="${rm.sendId==sessionScope.member.memberId }">
                            <tr>
                                <form action="/deleteMessage2.do" method="post">
                                    <td style="width:100px;text-align: center;"><input type="text" class="form-control" name="sendId" readonly value="${rm.sendId}" style="text-align: center;background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    <td style="width:100px;text-align: center;"><input type="text" class="form-control" name="reciveId" readonly value="${rm.reciveId}" style="text-align: center;background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    <td colspan="4"><input type="text" class="form-control" size="100" name="content" readonly value="${rm.content}" style="background-color:white;text-align: center; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    <td><input type="submit" class="btn" value="삭제"></td>
                                </form>
                            </tr>
                        </c:if>
                    </c:forEach>
                    <tr>
                        <td colspan="7" align=center>${page }</td>
                    </tr>

                </table>
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