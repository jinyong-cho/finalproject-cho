<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
    <meta charset="utf-8">
    <title>NOTICE</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
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
        <!--About Sections-->
        <section id="feature" class="feature p-top-100">
            <div class="container">
                <div class="row">
                    <div class="main_feature">
                        <div class="col-md-6 m-top-120">
                            <!-- Head Title -->
                            <div class="head_title">
                                <h2>연애인님의 후기</h2>
                                <h5><em>
                                    <div class="separator_left"></div>
                            </div><!-- End off Head Title -->
                            <div class="feature_content wow fadeIn m-top-40">
                                <p>안녕하세요!<br>1:1 매칭 후 담당매니저님의 도움으로 저의 천생연분을 만났습니다.
                                    <br>처음
                                    1:1매칭으로 저의 이상형을 찾았지만 여러번 실패 후 담당 매니저님을 뵙게 되었어요. <br>담당매니저님께서
                                    저의 이상형성향을 체크해주시고 매칭을 해주셨어요. <br> 막상 매칭이 되고 1:1 채팅을 하려고 보니 살짝
                                    어색하고 민망하기도 했는데 매니저님이 많은 꿀팁과 도움을 주셔서 첫 대화를 잘이어 갈 수 있었어요. <br>그리고
                                    드디어 첫 데이트 ! <br>그 후 다음 약속을 잡고도 카톡이 이어지지 않을까봐 걱정이 되었는데 제가 먼저
                                    출근했다 퇴근했다 등 카톡을 보냈더니 바로바로 연락이 잘되었어요. 현재 3개월째 잘 만나고 있답니다. 연애인의
                                    매칭서비스 덕분에 행복한 나날을 보내고 있습니다. <br>감사합니다^^</p>
                                <div class="feature_btns m-top-30">
                                    <c:choose>
                                        <c:when test="${empty sessionScope.member }">
                                            <a style="cursor: pointer" class="loginPlese btn btn-default text-uppercase">매칭 바로가기 <i class="fa fa-long-arrow-right"></i></a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="/matching.do" class="btn btn-default text-uppercase">매칭 바로가기 <i class="fa fa-long-arrow-right"></i></a>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="feature_photo wow fadeIn sm-m-top-40">
                                <div class="feature_img">
                                    <img src="/resources/assets/images/남주혁.jpg" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End off row-->
            </div>
            <!--End off container -->
            <br />
            <br />
            <br />
            <br />
            <hr />
            <br />
            <hr />
            <br />
            <br />
            <br />

            <!--Our Work Section-->
            <div class="container">
                <div class="row">
                    <div class="main_work">
                        <a href="/infoMain.do">
                            <div class="col-md-7 col-md-offset-5 col-sm-12 col-xs-12  service_right wow fadeInRight">
                                <div class="work_item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12 col-xs-12 text-right pull-right sm-text-center">
                                            <div class="work_item_img">
                                                <img src="/resources/assets/images/소개2.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-12 col-xs-12 text-right pull-left sm-text-center">
                                            <div class="work_item_details m-top-80 sm-m-top-20">
                                                <h4>연애인 소개 바로가기</h4>
                                                <div class="work_separator1"></div>
                                                <p class="m-top-40 sm-m-top-10" style="color:gray;">연애인은 서로의 이상형이 일치하는 사람들끼리 매칭해드립니다.
또한 커플 매니저를 통한 만남 및 연애 코칭까지 회원님들의 
마음이 따뜻해지는 그날까지!</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off work-item -->
                        </a>

                        <div class="col-md-7 col-sm-12 col-xs-12  service_left wow fadeInLeft">
                            <div class="work_item">
                                <div class="row">
                                    <c:choose>
                                        <c:when test="${empty sessionScope.member }">
                                            <li><a style="cursor: pointer" class="loginPlese">
                                                    <div class="col-md-7 col-sm-12 col-xs-12">
                                                        <div class="work_item_img sm-text-center sm-m-top-40">
                                                            <img src="/resources/assets/images/소개1.png" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-12 col-xs-12 text-left pull-left sm-text-center">
                                                        <div class="work_item_details m-top-80 sm-m-top-20">
                                                            <h4>매칭 바로가기</h4>
                                                            <div class="work_separator2"></div>
                                                            <p class="m-top-40 sm-m-top-10" style="color:gray;">나의 스타일 등록, 나의 이상형을 등록하여
나와 가장 잘 맞는 사람과의 매칭을 통한 솔로탈출!</p>
                                                        </div>
                                                    </div>
                                                </a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li><a href="/matching.do">
                                                    <div class="col-md-7 col-sm-12 col-xs-12">
                                                        <div class="work_item_img sm-text-center sm-m-top-40">
                                                            <img src="/resources/assets/images/소개1.png" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5 col-sm-12 col-xs-12 text-left pull-left sm-text-center">
                                                        <div class="work_item_details m-top-80 sm-m-top-20">
                                                            <h4>매칭 바로가기</h4>
                                                            <div class="work_separator2"></div>
                                                            <p class="m-top-40 sm-m-top-10" style="color:gray;">나의 스타일 등록, 나의 이상형을 등록하여
나와 가장 잘 맞는 사람과의 매칭을 통한 솔로탈출!</p>
                                                        </div>
                                                    </div>
                                                </a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </div>

                            </div>
                        </div><!-- End off work-item -->


                        <a href="/loveTestMain.do">
                            <div class="col-md-7 col-md-offset-5 col-sm-12 col-xs-12  service_right wow fadeInRight">
                                <div class="work_item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12 col-xs-12 text-right pull-right sm-text-center">
                                            <div class="work_item_img sm-m-top-40">
                                                <img src="/resources/assets/images/소개3.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-12 col-xs-12 text-right pull-left sm-text-center">
                                            <div class="work_item_details m-top-80 sm-m-top-20">
                                                <h4>재미로보는 심리테스트</h4>
                                                <div class="work_separator1"></div>
                                                <p class="m-top-40 sm-m-top-10" style="color:gray;">소름돋는 연애심리 테스트!<br> 스스로 어떤사람인지<br> 어떤사람을 좋아 하는지 궁금하다면!</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off work-item -->
                        </a>

                        <a href="/selectOnlyPlace.do">
                            <div class="col-md-7 col-sm-12 col-xs-12  service_left wow fadeInLeft">
                                <div class="work_item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12 col-xs-12">
                                            <div class="work_item_img sm-text-center sm-m-top-40">
                                                <img src="/resources/assets/images/소개4.png" alt="" />
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-12 col-xs-12 text-left pull-left sm-text-center">
                                            <div class="work_item_details m-top-80 sm-m-top-20">
                                                <h4>데이트코스 보러가기</h4>
                                                <div class="work_separator2"></div>
                                                <p class="m-top-40 sm-m-top-10" style="color:gray;">데이트 하고싶은데 어디로갈지 고민이시라면
지금바로 데이트코스 추천시스템을 이용해 보세요!
지역, 타입 , 가격별로 데이트코스를 추천해드립니다!</p>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div><!-- End off work-item -->
                        </a>

                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <hr />
            <br />
            <br />
            <br />

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
