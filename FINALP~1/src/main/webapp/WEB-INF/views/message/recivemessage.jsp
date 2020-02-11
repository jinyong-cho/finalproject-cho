<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Acme|Courgette|Sunflower:300&display=swap" rel="stylesheet">
    <style>
        .form-control {
            background-color: transparent
        }

        .in {
            display: none;
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
            <div style="width:400px;text-align:center; margin: auto; font-size: 50px;font-family: 'Courgette', cursive;">Receive Message</div>
            <br>
            <div class="container">
                <table style="width:1200px" class="table">
                    <tr>
                       <th style= " display: none">글 번호 </th>
                        <th style="width:130px;text-align: center;border: none;">발신자</th>
                        <th style="width:130px;text-align: center;border: none;">수신자 </th>
                        <th style="text-align: center;border: none;" colspan="4">내용</th>
                    </tr>

                    <c:forEach var="rm" items="${rm}">
                       
                          
                       
                        <tr>
                           <td style= "display: none;"> 
                              <input type="hidden" class="form-control rno" name="reciveNo" readonly value="${rm.reciveNo}" style="background-color:white; ">
                           </td>
                            <td>
                                <input type="text" class="form-control" name="sendId" readonly value="${rm.sendId}" style="background-color:white;text-align: center;border:none;">
                            </td>
                            <td>
                                <input type="text" class="form-control" name="reciveId" readonly value="${rm.reciveId}" style="background-color:white;text-align: center;vertical-align:middle; border:none;">
                            </td>
                            <td colspan="3">
                                <div style="height: 32px; padding: 7px;"><a href="#myMat" name="atag" data-toggle="modal" style="color:skyblue;">${rm.content }
                                <input type="hidden" name="content" value="${rm.content}"></a></div>
                            </td>
                            <td style="width: 100px;">
                                <button type="button" class="btn rebtn" data-toggle="modal" data-target="#myMon">답장하기</button>
                            </td>
                        </tr>
                    </c:forEach>
                    <tr style="width: 1200px;">
                        <td colspan="6" style="text-align: center;width: 1200px;">${page }</td>
                    </tr>

                </table>
            </div>





            <!-- 답장하기 모달 -->
            <div class="modal fade" id="myMon">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">답장하기</h4>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="/sendrecive.do" method="post">
                                <table class="table">
                                    <tr>
                                        <th style="width:100px;vertical-align: middle; border: none;text-align:center;">발신자</th>
                                        <th style="border: none;"><input type="text" class="form-control" name="sendId" readonly value="${member.memberId}" size="10" style=" width:150px; background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; "></th>
                                    </tr>
                                    <tr>
                                        <th style="vertical-align: middle; text-align:center;">수신자</th>
                                        <td><input type="text" class="form-control" name="reciveIdd" readonly size="10" style=" width:150px; background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; "></td>
                                    </tr>
                                    <tr>
                                        <th style="vertical-align: middle;text-align:center;">내용</th>
                                        <td><textarea class="form-control" required style="width:450px; height: 180px;resize : none;" name="content"></textarea></td>
                                    </tr>
                                    <tr>
                                        <th style="border: none;"><input type="reset" class="btn" value="초기화"></th>
                                        <th style="float: right; border: none;"><input type="submit" class="btn" value="메세지전송"></th>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>








            <!--  받은메세지 내용클릭시 보여지는 모달 -->
            <div class="modal fade" id="myMat">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">받은메세지</h4>

                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="/deleteMessage.do" method="post">
                                <table class="table">

                                    <tr>
                                        <th style=" display: none; width:100px">글 번호</th>
                                        <td style="display: none">
                                        <input type="text" name="reciveNo" class="form-control" readonly style=" width:150px; background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    </tr>
                                    <tr>
                                        <th style="width:100px;vertical-align: middle; border: none;">보낸이 </th>
                                        <td style="border: none;">
                                        <input type="text" name="sendId" class="form-control" readonly style=" width:150px; background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    </tr>
                                    <tr>
                                        <th style="width:100px;vertical-align: middle;">받은이 </th>
                                        <td><input type="text" name="reciveId" class="form-control" readonly value="${member.memberId}" style=" width:150px; background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    </tr>
                                    <tr>
                                        <th style="width:100px;vertical-align: middle;">내용 </th>
                                        <td><input type="text" name="content" class="form-control" readonly style=" width:450px;height: 200px; background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" align="right"><input type="submit" class="btn" value="삭제하기"></td>
                                    </tr>

                                </table>
                            </form>
                        </div>
                        <!-- Modal footer -->

                    </div>
                </div>
            </div>



            <!--Our Work Section-->

        </section>
        <!--End off About section -->


        <!--Company section-->
        <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

    </div>
    <script type="text/javascript">
        $(".rebtn").click(function() {
            var receiveId = $(this).parent().parent().children().eq(1).children().val();
            $('[name=reciveIdd]').last().val(receiveId);
        });



        $('[name=atag]').click(function() {
           var atag = $(this).parent().parent().parent().children().eq(1).children().val();
         var receiveNo = $(this).parent().parent().parent().children().eq(0).children().val();
         var atagcontent = $(this).parent().parent().parent().children().children().eq(3).children().children().val();
            $('[name=sendId]').last().val(atag);
            $('[name=content]').last().val(atagcontent);
            $('[name=reciveNo]').last().val(receiveNo);
        });
    </script>
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