<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<title>후기게시글 신고 내역</title>
<style type="text/css">
        td {
            text-align: center;
            vertical-align: middle;
        }

        .table th {
            text-align: center;
        }

        .table td {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</head>
<body>
    <h1 style="text-align: center; margin: 5%;">신고 게시판</h1>

<div class="container">
<table class="table table-hover">
         <tr>
                <th>신고자ID</th>
                <th>신고받은ID</th>
                <th>신고 사유(내용)</th>
                <th>신고날짜</th>
                <th>글번호</th>
                <th>상태</th>
            </tr>

   <c:forEach items="${rList }" var="r">
      <tr>
         <td>${r.reportId }</td>
         <td>${r.reviewWriterId }</td>
         <td>${r.reportComment }</td>
         <td>${r.regDate }</td>
         <td>${r.reviewNo}</td>
         <td><button type="button" class="btn btn-danger" onclick="fn_deleteBtn('${r.reviewWriterId }')" style="float:right;">회원 삭제</button></td>
      </tr>
   </c:forEach>
</table>
<a href="/"><button type="button" class="btn btn-primary">메인으로 이동</button></a> 
</div>

 <script>
        function fn_deleteBtn(id) {
            location.href = "/deleteMember.do?deleteMemberId="+id;
        }
</script>
   
</body>
</html>