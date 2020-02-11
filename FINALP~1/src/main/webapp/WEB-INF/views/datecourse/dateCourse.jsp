<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="/selectOnlyPlace.do">데이트코스추천</a>
	<c:if test="${sessionScope.member.memberId eq 'admin' }">
	<a href="/dateCourseInsert.do">데이트코스 등록</a> <!-- 관리자만가능  -->
	<a href="/dateCourseList.do?currentPage=1">데이트코스 목록조회/관리자</a> <!-- 관리자만가능  -->
	</c:if>
</body>
</html>