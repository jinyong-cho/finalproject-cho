<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>검색된 신고게시판</title>
<style>
</style>
</head>


<body>
<h1>신고 게시판</h1>
	<form action="/reportSearch.do" method="get">
		<input type="hidden" name="currentPage" value=1> <select
			name="type">
			<option value="reportedId">신고된 ID로 검색</option>
			<option value="reportId">신고한 ID로 검색</option>

		</select> <input type="text" name="keyword" value="${keyword }"> 
		<input type="submit" value="검색">
	</form>
	<br>


	<table border="1">
		<tr>
			<th>신고한ID</th>
			<th>신고받은ID</th>
			<th>댓글 번호</th>
			<th>신고된 댓글 내용</th>
			<th>신고 사유(내용)</th>
			<th>신고날짜</th>

		</tr>
		<c:forEach items="${reportBoard }" var="rb">
			<tr>
				<td>${rb.reportId }</td>
				<td><span>${rb.reportedId }</span></td>
				<td>${rb.commentNo }</td>
				<td>${rb.reportedComment }</td>
				<td>${rb.reportContent }</td>
				<td>${rb.regDate }</td>
			</tr>

		</c:forEach>
		<tr>
			<td colspan="6">${pageNavi }</td>
		</tr>


	</table>



</body>
</html>