<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <title>신고 게시판</title>

    <style type="text/css">
        td {
            text-align: center;
            vertical-align: middle;
        }

        th {
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
        <form action="/reportSearch.do" method="get">
            <input type="hidden" name="currentPage" value=1>

            <div style="display: inline-block; float: left;">
                <select name="type" class="form-control" style="width: 180px; text-align: center;">
                    <option value="reportedId">신고된 ID로 검색</option>
                    <option value="reportId">신고한 ID로 검색</option>
                </select>
            </div>
            <div style="display: inline-block; ">
                <div class="input-group mb-3">
                    <input type="text" name="keyword" class="form-control">
                    <div class="input-group-append">
                        <input type="submit" value="검색" class="btn btn-primary">
                    </div>
                </div>
            </div>
        </form>
        <br>

        <table class="table table-hover">
            <tr>
                <th>신고자ID</th>
                <th>신고받은ID</th>
                <th>댓글 번호</th>
                <th>신고된 댓글 내용</th>
                <th>신고 사유(내용)</th>
                <th>신고날짜</th>
                <th>상태</th>
            </tr>
            <c:forEach items="${reportBoard }" var="rb">
                <tr>
                    <td>${rb.reportId }</td>
                    <td>${rb.reportedId }</td>
                    <td>${rb.commentNo }</td>
                    <td>${rb.reportedComment }</td>
                    <td>${rb.reportContent }</td>
                    <td>${rb.regDate }</td>
                    <td><button type="button" class="btn btn-danger" onclick="fn_deleteBtn('${rb.reportedId }')" style="float:right;">회원 삭제</button></td>
                </tr>

            </c:forEach>
            <tr>
                <td colspan="7">${pageNavi }</td>
            </tr>

        </table>
        <a href="/"><button type="button" class="btn btn-primary">메인으로 이동</button></a> 
    </div>
    <script>
        function fn_deleteBtn(id) {
            location.href = "/deleteMember.do?deleteMemberId="id;
        }
    </script>


</body>

</html>