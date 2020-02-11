<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>Insert title here</title>
</head>
<body>
		<form action="/insertReport.do" method="post">
		<!--신고 받는 아이디 값을 가져와야함 즉, 댓글을쓴 writeId값을 하나 가져와야함 -->
		신고자 : <input type="text" value="${sessionScope.member.memberId }" name="reportId" readonly><br>
		댓글번호:<input type="text" value="${commentNo }" name="commentNo" readonly><br>
		신고된 ID :<input type="text" value="${writerId }" name="reportedId" readonly><br>
		신고된 댓글 :<input type="text" value=" ${commentContent }" name="reportedComment" readonly><br>
		<textarea rows="10" cols="30" name="reportContent" placeholder="신고사유를 적어주세요"></textarea><br>
		<input type="hidden" value="1" name="reportCount">
		<input type="submit" value="제출">
		</form>
		<input type="button" value="취소" onclick="goBack();">
		<!--***값을 넘길때 name 으로 넘긴다..  -->
		
		
		<script>
		function goBack(){
			window.history.back();
		}
		
		
		</script>
</body>
</html>