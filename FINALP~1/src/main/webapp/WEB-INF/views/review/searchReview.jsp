<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>공지사항</h2>
	<form action="/searchReview.do" method="post">
	<select name="select">
		<option>작성자</option>
		<option>내용</option>
	</select>
	
	<input type="text" name="search" placeholder="검색할 내용을 입력하세요" value="search">
	<input type="submit" value="검색">
	<form>
	
	<table>
		<form action="/writeFrm.do" method="post">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:forEach items="${list }" var="n" varStatus="i">
				<tr>
					<td>${i.count }</td>
					<td><a href="/detailReview.do?reviewNo=${n.reviewNo}">${n.reviewTitle }</a></td>
					<td>${n.writerId }</td>
					<td>${n.reviewRegDate }</td>
				</tr>
		</c:forEach>
		
		</form>
	</table>
	<a href="/writeFrm.do">글 작성</a>
	<div>
	${pageNavi }
	</div>
</body>
</html>