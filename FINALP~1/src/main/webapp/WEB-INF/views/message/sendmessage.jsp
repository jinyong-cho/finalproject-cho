<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
        .modal-backdrop {

            z-index: -1;
        }

    </style>
</head>

<body>
    <input type="hidden" readonly value="${sessionScope.member.memberId }" id="writerSendMemberId">
    <br>
    <div style="width: 20px; margin-left:550px;"><button type="button" class="close" data-dismiss="modal">&times;</button></div>
    <div style="text-align: center; font-size: 40px; margin-left: 40px;">쪽지보내기</div>
    <form action="/send.do" method="post" id="sendFrm">
        <table class="table" style="margin-left:4%; width: 550px;">
            <tr>
                <th style="width:100px;vertical-align: middle;text-align: center;">발신자</th>
                <td colspan="2"><input type="text" class="form-control" name="sendId" readonly value="${sessionScope.member.memberId}" size="10" style="background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; "></td>
            </tr>
            <tr>
                <th style="vertical-align: middle;text-align: center;">수신자</th>
                <c:choose>
                	<c:when test="${not empty requestScope.reciveId }">
                		<td colspan="2"><input type="text" class="form-control" name="reciveId" readonly value="${requestScope.reciveId}" size="10" style="background-color:white; border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; "></td>
                	</c:when>
                	<c:otherwise>
                		<td colspan="2"><input type="text" class="form-control" required name="reciveId" size="10"></td>
                	</c:otherwise>
                </c:choose>
            </tr>
            <tr>
                <th style="vertical-align: middle;text-align: center;">내용</th>
                <td colspan="2"><textarea class="form-control" style="width: 434px;resize : none; height: 180px;" required name="content"></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <div style="float: right;">
                        <input type="reset" class="btn" value="초기화">
                        <input type="button" id="sendBtn" class="btn" value="전송">
                    </div>
                </td>
            </tr>
        </table>
    </form>
    <br>
    <br>
    <script>
        $("#sendBtn").click(function() {
            var reciveMemberId = $("[name=reciveId]").val().trim();
            var commentContent = $("[name=content]").val().trim();
            var writerSendMemberId = $("#writerSendMemberId").val().trim();

            if (reciveMemberId == "" && reciveMemberId.length == 0) {
                alert("받을 사람 아이디를 입력해주세요!");
            } else if (reciveMemberId == writerSendMemberId) {
                alert("받는 사람이 보내는 사람과 같습니다!");
            } else if (commentContent == "" && commentContent.length == 0) {
                alert("내용을 입력해주세요!");
            } else {
                $.ajax({
                    url: "/idCheck.do",
                    data: "memberId=" + reciveMemberId,
                    dataType: "json",
                    success: function(data) {
                        if (data.result == 1) {
                            alert("전송이 완료되었습니다.");
                            $("#sendFrm").submit();
                        } else {
                            alert("받는사람을 확인해주세요!");
                        }
                    }
                });
            }
        });
    </script>
</body>
</html>
