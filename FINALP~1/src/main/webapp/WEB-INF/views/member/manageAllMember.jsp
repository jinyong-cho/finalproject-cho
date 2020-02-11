<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <title>회원 관리 페이지</title>
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
    <div class="container">
        <h1 style="text-align: center; margin: 5%;">전체 회원 조회</h1>

        <table class="table table-hover">
            <tr style="text-align: center;">
                <th>회원 ID</th>
                <th>회원 닉네임</th>
                <th>회원 주소</th>
                <th>회원 메일</th>
                <th>회원 전화번호</th>
                <th>회원 생년월일</th>
                <th>성별</th>
                <th>회원 등급</th>
                <th>변경</th>
            </tr>
            <c:forEach items="${manageAllMember }" var="m">
                <c:if test="${m.memberId ne 'admin' }">
                <tr class="table1">
                    <td>${m.memberId }</td>
                    <td>${m.memberNickName }</td>
                    <td>${m.memberAddr }</td>
                    <td>${m.memberEmail }</td>
                    <td>${m.memberPhone }</td>
                    <td>${m.memberBirth }</td>
                    <td>${m.memberGender }</td>
                    <td><select class="form-control">
                            <option value="일반회원" <c:if test="${m.memberType eq '일반회원' }">selected</c:if>>일반회원</option>
                            <option value="매니저" <c:if test="${m.memberType eq '매니저' }">selected</c:if>>매니저</option>
                        </select></td>
                    <td><button type="button" class="btn btn-primary" onclick="modifyType('${m.memberId}',this)">변경</button></td>
                    <!-- forEach가 돌아가면서 가장 첫번째값과 첫번째 변경 버튼만 jquery가 실행된다 -->
                </tr>
                </c:if>
            </c:forEach>
            <tr>
                <td colspan="9">${pageNavi }</td>
            </tr>
        </table>
        <a href="/"><button type="button" class="btn btn-primary">메인으로 이동</button></a> 
    </div>
</body>
<script>
    function modifyType(memberId, obj) {
        var btn = $(obj);

        if (confirm("등급을 변경 하시겠습니까?") == true) {
            var type = btn.parent().prev().children('select').children('option:selected').val();
            alert(type);
            alert(memberId);
            $.ajax({
                url: "/modifyManager.do",
                data: {
                    memberType: type,
                    memberId: memberId
                },
                type: "post",
                dataType: "json",
                success: function(data) {

                    if (data > 0) {
                        alert("변경되었습니다");
                    } else {
                        alert("변경실패");
                    }
                }
            });
        } else {
            return;
        }
    }
</script>

</html>