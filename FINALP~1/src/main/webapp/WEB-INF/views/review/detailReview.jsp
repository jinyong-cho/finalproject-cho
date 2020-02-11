<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <title>Insert title here</title>
    <meta name="description" content="">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="/smartEditor2/js/HuskyEZCreator.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Courgette|Gamja+Flower|Sunflower:300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Courgette|Sunflower:300&display=swap" rel="stylesheet">
    <style type="text/css">
        #aaaa {
            color: gray;
        }

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
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; font-size:7em;">ReView</h1>
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

            <div class="container" style="font-family: 'Gamja Flower', cursive;">
                <div style="width: 300px; margin:2% auto; font-family: fantasy; font-size: 50px;font-family: 'Gamja Flower', cursive; font-size: 60px;"> 연애인 후기 </div>

                <table class="table" style="width: 1170px; margin: auto;">
                    <tr>
                        <td style="width: 100px; text-align: center; border: none;font-size:17px;font-family: 'Sunflower', sans-serif;">제목 :</td>
                        <td colspan="3" style="border:none;font-size: 17px;font-family: 'Sunflower', sans-serif;">${review.reviewTitle } </td>
                    </tr>
                    <tr>
                        <td style="width: 100px; text-align: center; font-size: 17px;font-family: 'Sunflower', sans-serif;">작성자 :</td>
                        <td colspan="3" style="font-size: 17px;font-family: 'Sunflower', sans-serif;">${review.writerId }</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <div style="width: 300px; height: 300px; text-align: center;">
                                <img id="img-viewer" width="100%" height="100%" src="/resources/upload/photo/${review.reviewReFileName}">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" style="font-size: 20px; border: none;font-family: 'Sunflower', sans-serif;">
                            ${review.reviewContent }
                        </td>
                    </tr>


                </table>



                <!-- 댓글등록 -->
                <div style="width: 1170px; margin:;">

                    <div style="display: inline-block; font-size: 15px;">
                        좋아요 : <span id="reviewLikeSpan"> ${review.reviewLikes } </span>
                        <c:choose>
                            <c:when test="${empty sessionScope.member }">
                                <button type="button" class="loginPlese btn" style="background-color: white; color:black;">
                                    <i class="fas fa-heart fa-2x"></i></button>
                            </c:when>
                            <c:otherwise>
                                <button type="button" id="reviewLike" class="btn" style="background-color: white; padding:0; color:black;">
                                    <i class="fas fa-heart"></i></button>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div style="display: inline-block; font-size: 15px;">　조회수 : ${review.reviewViews }</div>
                    <div style="display: inline-block;  width: 150px; margin-left: 2%;">
                       
                           <a href="" data-toggle="modal" data-target="#myModal5" style="color:gray;">
                             <button type="button" class="btn" style="background-color: rgba(255, 0, 0, 0.37);">신고</button></a>
                      
                               <div class="modal" id="myModal5">
                               <div class="modal-dialog" style="z-index: 1050; width: 450px;">
                               <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header">
                                 <button type="button" class="close" id="closeBtn" data-dismiss="modal">&times;</button>
                                  <h4 class="modal-title">신고하기</h4>
                        </div>
                                <!-- Modal body -->
                                 <div class="modal-body">
                                  <form action="/insertReviewReport.do" method="post">
                                  <table>
                                      <tr>
                                       <td style="width: 150px; text-align: center; font-size: 20px; font-weight: 600">신고자</td>
                                       <td><input type="text" class="form-control" 
                                            value="${sessionScope.member.memberId }"readonly style="background-color: rgba(0,0,0,0); border: none; font-size: 20px;"></td>
                                      </tr>
                                      <tr>
                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">글번호</td>
                                        <td><input type="text" class="form-control" 
                                             value="${review.reviewNo }" name="reviewNo" readonly style="background-color: rgba(0,0,0,0); border: none;font-size: 20px;"></td>
                                      </tr>
                                      <tr>
                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">신고된 ID</td>
                                        <td><input type="text" class="form-control" 
                                              value="${review.writerId }" name="reviewWriterId" readonly style="background-color: rgba(0,0,0,0); border: none;font-size: 20px;"></td>
                                      </tr>
                                       <tr>
                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">신고사유</td>
                                        <td><textarea rows="10" cols="30" name="reportContent" style="resize: none; width: 280px;" placeholder="신고사유를 적어주세요"></textarea></td>
                                         </tr>
                                       <tr>
                                          <td colspan="2">
                                            <input type="button" class="btn" onclick="fn_close();" value="취소" style="margin-left: 180px;">
                                             <input type="submit" class="btn" value="제출">
                                          </td>
                                        </tr>
                                    </table>
                                  </form>

                           </div>
                       </div>
                    </div>
                  </div>
               </div>
                    
                    <table>
                        <tr>
                            <td>
                                <form action="/insertComment.do" method="post" id="commentInsertFrm">
                                    <div style="font-family: fantasy; font-size: 28px; margin-bottom:2%; margin-top: 7%; ">Comment</div>
                                    <input type="hidden" value="${review.reviewNo }" name="reviewNo">
                                    <input type="hidden" name="reviewNo" value="${review.reviewNo }">
                                    <input type="hidden" name="writerId" id="memberId" value="${sessionScope.member.memberId}">
                                    <div class="input-group">
                                        <c:choose>
                                            <c:when test="${empty sessionScope.member }">
                                                <input type="text" class="loginPlese form-control" style="width: 500px;border-top-left-radius: 7px;border-bottom-left-radius: 7px;" name="commentContent">
                                            </c:when>
                                            <c:otherwise>
                                                <input type="text" class="form-control" style="width: 500px;border-top-left-radius: 7px;border-bottom-left-radius: 7px;" name="commentContent" id="commentContent">
                                            </c:otherwise>
                                        </c:choose>

                                        <div class="input-group-append" style="width: 0;">
                                            <c:choose>
                                                <c:when test="${empty sessionScope.member }">
                                                    <button type="button" class="loginPlese btn" style="border-top-right-radius: 7px;border-bottom-right-radius: 7px; width: 110px;">등록</button>
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="button" class="btn" style="border-top-right-radius: 7px;border-bottom-right-radius: 7px; width: 110px;" value="등록" id="commentInsertBtn">
                                                </c:otherwise>
                                            </c:choose>

                                        </div>
                                    </div>
                                </form>
                            </td>
                        </tr>
                    </table>
                    <table class="table-borderless table-hover" style="margin-top:30px; ">
                        <c:if test="${not empty comment }">
                            <c:forEach items="${comment }" var="c">
                                <tr>
                                    <td style="width: 100px; font-size: 17px; font-size: 27px; color:rgb(0, 108, 255);">${c.writerId } </td>
                                    <td colspan="3" style="width: 400px; font-size:18px;font-family: 'Sunflower', sans-serif;">${c.commentContent }</td>
                                    <td>${c.commentRegDate }</td>
                                    <td>
                                        <form action="/deleteComment.do" method="post">
                                            <input type="hidden" value="${c.commentNo }" name="commentNo">
                                            <input type="hidden" value="${review.reviewNo }" name="reviewNo">
                                            <c:if test="${sessionScope.member.memberId eq c.writerId || sessionScope.member.memberId eq 'admin'}">
                                                <input type="submit" value="삭제" class="btn" style="margin-left:10px; background-color:rgba(0,0,0,0);" id="subBtn">
                                            </c:if>
                                        </form>
                                    </td>
                                    <!-- 댓글 신고버튼 -->
                                    <td>
                                        <c:if test="${sessionScope.member.memberId ne c.writerId }">
                                            <a href="/reportMember.do?writerId=${c.writerId }&commentContent=${c.commentContent }
                                            &commentNo=${c.commentNo}
                                            &memberId=${member.memberId }
                                            &reviewNo=${review.reviewNo }" data-toggle="modal" data-target="#myModal4" style="color:gray;">
                                                <button type="button" class="btn" style="background-color: rgba(255, 0, 0, 0.37);">신고</button></a>
                                            <div class="modal" id="myModal4">
                                                <div class="modal-dialog" style="z-index: 1050; width: 450px;">
                                                    <div class="modal-content">
                                                        <!-- Modal Header -->
                                                        <div class="modal-header">
                                                            <button type="button" class="close" id="closeBtn2" data-dismiss="modal">&times;</button>
                                                            <h4 class="modal-title">신고하기</h4>

                                                        </div>
                                                        <!-- Modal body -->
                                                        <div class="modal-body">
                                                            <form action="/insertReport.do" method="post">
                                                                <input type="hidden" value="1" name="reportCount">
                                                                <table>
                                                                    <tr>
                                                                        <td style="width: 150px; text-align: center; font-size: 20px; font-weight: 600">신고자</td>
                                                                        <td><input type="text" class="form-control" value="${sessionScope.member.memberId }" name="reportId" readonly style="background-color: rgba(0,0,0,0); border: none; font-size: 20px;"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">댓글번호</td>
                                                                        <td><input type="text" class="form-control" value="${c.commentNo }" name="commentNo" readonly style="background-color: rgba(0,0,0,0); border: none;font-size: 20px;"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">신고된 ID</td>
                                                                        <td><input type="text" class="form-control" value="${c.writerId }" name="reportedId" readonly style="background-color: rgba(0,0,0,0); border: none;font-size: 20px;"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">신고된 댓글 </td>
                                                                        <td><input type="text" class="form-control" value=" ${c.commentContent }" name="reportedComment" readonly style="background-color: rgba(0,0,0,0); border: none;font-size: 20px;"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="width: 150px; text-align: center; font-size: 20px;font-weight: 600">신고사유</td>
                                                                        <td><textarea rows="10" cols="30" name="reportContent" style="resize: none; width: 280px;" placeholder="신고사유를 적어주세요"></textarea></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2">
                                                                            <input type="button" class="btn" onclick="fn_close2()" value="취소" style="margin-left: 180px;">
                                                                            <input type="submit" class="btn" value="제출">
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </form>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:if>

                    </table>
                </div>
               




                <div style="width:1170px; margin-top:5%; margin-bottom:5%;">


                    <table class="table">
                        <tr>
                            <td style="border:none;">
                                <c:if test="${review.countNo ne 1}">
                                    <a href="/preReview.do?countNo1=${review.countNo }&countNo2=1" id="pre" style="font-size: 14px; color:black;">
                                        <span style="font-weight:800">이전글</span>
                                        <span style="font-size: 14px;font-family: 'Sunflower', sans-serif;">　${preReview.reviewTitle }</span></a>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <c:if test="${review.countNo ne max}">
                                    <a href="/nextReview.do?countNo1=${review.countNo }&countNo2=1" style="font-size: 14px; color:black;">
                                        <span style="font-weight:800">다음글</span> <span style="font-size: 14px;font-family: 'Sunflower', sans-serif;">　${neReview.reviewTitle }</span></a>
                                </c:if>
                            </td>
                        </tr>
                    </table>
                    <a href="/reviewList.do?currentPage=1" style="color:gray; font-size: 19px;font-family: 'Sunflower', sans-serif;">목록으로 돌아가기</a>

                    <div style="float:right;">
                        <c:if test="${sessionScope.member.memberId eq 'admin' || sessionScope.member.memberId eq review.writerId}">
                            <a href="/updateDetailReview.do?reviewNo=${review.reviewNo }" style="color:gray; font-size: 20px;font-family: 'Sunflower', sans-serif;">
                                <button class="btn">글 수정</button> </a>
                            <a href="/deleteReview.do?reviewNo=${review.reviewNo }" id="aaaa" style="color:gary; font-size: 20px;font-family: 'Sunflower', sans-serif;">
                                <button class="btn">글 삭제</button></a>
                        </c:if>
                    </div>
                </div>

               <script type="text/javascript">
                       
                    function fn_close() {
                  $("#closeBtn").click();
               }
                    function fn_close2() {
                  $("#closeBtn2").click();
               }
                    </script>
                    


                <script>
                    $("#commentInsertBtn").click(function() {
                        var commentValue = $("#commentContent").val().trim();
                        if (commentValue == "" && commentValue.length == 0) {
                            alert("댓글 내용을 작성해주세요.");
                        } else {
                            $("#commentInsertFrm").submit();
                        }
                    });

                    $("#reviewLike").click(function() {
                        var param = {
                            memberId: $("#memberId").val(),
                            reviewNo: $("[name=reviewNo]").val()
                        }
                        $.ajax({
                            url: "/reviewUpdateLike.do",
                            type: "post",
                            data: param,
                            dataType: "json",
                            success: function(data) {
                                $("#reviewLikeSpan").html(data.likeValue);
                                if (data.result == 1) {
                                    $("#reviewLike").css("color", "pink");
                                } else {
                                    $("#reviewLike").css("color", "black");
                                }
                            }
                        });
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