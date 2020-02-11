<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>


    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

    <script type="text/javascript"></script>
</head>

<body>
    <c:choose>
        <c:when test="${empty sessionScope.member }">
            <script>
                $(document).ready(function() {
                    $("form").submit(function() {
                        var checks = $("[type=radio]:checked");
                        if (checks.length != 36) {
                            alert("체크란을 다시 확인해주세요.");
                            return false;
                        };
                    });
                })
            </script>
            <form action="/myTestInfo.do" method="get">
                <h1>
                    <Strong>정보 기재</Strong>
                </h1>
                <!-- 
				정보 제공 동의 : <input type="checkbox" id="checkBoxId"> <br> -->
                <br> 이름 : <input type="text" name="userName" placeholder="이름을 입력하세요."><br> <br> 생년월일 : <input type="text" name="birth" placeholder="생년월일을 입력하세요.">(주민등록
                앞7자리)<br> <br> 연락처 : <input type="text" name="userPhone" placeholder="번호를 입력하세요.">(000-0000-0000)<br> <br>
                사는 지역 : <input type="text" name="addr" placeholder="지역을 입력하세요.">(**시)<br>
                <br> <br> 이메일 : <input type="text" name="email" placeholder="이메일을 입력하세요."><br>
                <br> 성별 : <input type="radio" name="gender" value="남자">남자
                <input type="radio" name="gender" value="여자">여자 <br> <br>
                <br>

                <h1>
                    <Strong>Y or N 자가 진단 테스트</Strong>
                </h1>

                <br> <br> Q. 날씨 같은 환경 변화에 민감하다. : <input type="radio" name="yn01" value="Y">Y <input type="radio" name="yn01" value="N">N <br>
                <hr>
                <br> Q. 드라이브를 즐기는 것을 좋아한다. : <input type="radio" name="yn02" value="Y">Y <input type="radio" name="yn02" value="N">N
                <br>
                <hr>
                <br> Q. 좋은 책을 반복해서 여러 번 읽는다. : <input type="radio" name="yn03" value="Y">Y <input type="radio" name="yn03" value="N">N
                <br>
                <hr>
                <br> Q. 휴대폰이 금방 바뀌는 타입이다. : <input type="radio" name="yn04" value="Y">Y <input type="radio" name="yn04" value="N">N
                <br>
                <hr>
                <br> Q. 계획을 하지 않고 즉흥으로 하는 스타일이다. : <input type="radio" name="yn05" value="Y">Y <input type="radio" name="yn05" value="N">N <br>
                <hr>
                <br> Q. 아침에 눈을 뜨면 한번에 잘 일어난다. : <input type="radio" name="yn06" value="Y">Y <input type="radio" name="yn06" value="N">N
                <br>
                <hr>
                <br> Q. TV는 정한 프로그램만 일정 시간 시청한다. : <input type="radio" name="yn07" value="Y">Y <input type="radio" name="yn07" value="N">N <br>
                <hr>
                <br> Q. 먹고 싶은 음식은 꼭 먹어야 직성이 풀린다. : <input type="radio" name="yn08" value="Y">Y <input type="radio" name="yn08" value="N">N <br>
                <hr>
                <br> Q. 약속이 있으면 약속 시간보다 미리 나간다. : <input type="radio" name="yn09" value="Y">Y <input type="radio" name="yn09" value="N">N <br>
                <hr>
                <br> Q. 생각을 많이 하는 편이다. : <input type="radio" name="yn10" value="Y">Y <input type="radio" name="yn10" value="N">N
                <br>
                <hr>
                <br> Q. 낯을 많이 가리는 스타일이다. : <input type="radio" name="yn11" value="Y">Y <input type="radio" name="yn11" value="N">N
                <br>
                <hr>
                <br> Q. 친해지면 활발한 스타일이다. : <input type="radio" name="yn12" value="Y">Y <input type="radio" name="yn12" value="N">N
                <br>
                <hr>
                <br> Q. 처음 만나는 사람과 빨리 친해지는 편이다. : <input type="radio" name="yn13" value="Y">Y <input type="radio" name="yn13" value="N">N <br>
                <hr>
                <br> Q. 관심있는 것에 몰두하면 다른건 신경도 안쓴다. : <input type="radio" name="yn14" value="Y">Y <input type="radio" name="yn14" value="N">N <br>
                <hr>
                <br> Q. 바깥에서 일어난 안좋은 일은 가족에게 말하지 않는다. : <input type="radio" name="yn15" value="Y">Y <input type="radio" name="yn15" value="N">N <br>
                <hr>
                <br> Q. 가끔씩 우울하다. : <input type="radio" name="yn16" value="Y">Y
                <input type="radio" name="yn16" value="N">N <br>
                <hr>
                <br> Q. 주변 사람들에게 조언을 많이 하는 편이다. : <input type="radio" name="yn17" value="Y">Y <input type="radio" name="yn17" value="N">N <br>
                <hr>
                <br> Q. 나는 누군가와 같이 운동을 하는 것을 좋아한다. : <input type="radio" name="yn18" value="Y">Y <input type="radio" name="yn18" value="N">N <br>
                <hr>
                <br> Q. 이야기를 하다보면 가끔 내가 무슨 소리를 하는 지 모르겠다. : <input type="radio" name="yn19" value="Y">Y <input type="radio" name="yn19" value="N">N <br>
                <hr>
                <br> Q. 나 자신은 쓸모 있는 사람이라고 생각한다. : <input type="radio" name="yn20" value="Y">Y <input type="radio" name="yn20" value="N">N <br>
                <hr>
                <br> Q. 첫눈에 반하는 스타일이다. : <input type="radio" name="yn21" value="Y">Y <input type="radio" name="yn21" value="N">N
                <br>
                <hr>
                <br> Q. 스트레스를 받으면 예민해 진다. : <input type="radio" name="yn22" value="Y">Y <input type="radio" name="yn22" value="N">N
                <br>
                <hr>
                <br> Q. 이유없이 웃을 때가 있다. : <input type="radio" name="yn23" value="Y">Y <input type="radio" name="yn23" value="N">N
                <br>
                <hr>
                <br> Q. 스킨쉽도 사랑의 표현이라고 생각한다. : <input type="radio" name="yn24" value="Y">Y <input type="radio" name="yn24" value="N">N
                <br>
                <hr>
                <br> Q. 동시에 여러 명을 사랑할 수 있다. : <input type="radio" name="yn25" value="Y">Y <input type="radio" name="yn25" value="N">N
                <br>
                <hr>
                <br> Q. 나는 내 말이 곧 법이다. : <input type="radio" name="yn26" value="Y">Y <input type="radio" name="yn26" value="N">N
                <br>
                <hr>
                <br> Q. 나는 이성과 술을 마시는게 더 즐겁다. : <input type="radio" name="yn27" value="Y">Y <input type="radio" name="yn27" value="N">N
                <br>
                <hr>
                <br> Q. 상대방의 의상을 보고 그 사람을 판단한다. : <input type="radio" name="yn28" value="Y">Y <input type="radio" name="yn28" value="N">N <br>
                <hr>
                <br> Q. 이성이 흡연 하는 것이 싫다. : <input type="radio" name="yn29" value="Y">Y <input type="radio" name="yn29" value="N">N
                <br>
                <hr>
                <br> Q. 이성 또는 친구와 의견 충돌이 있으면 대부분 양보한다. : <input type="radio" name="yn30" value="Y">Y <input type="radio" name="yn30" value="N">N <br>
                <hr>
                <br> Q. 나는 먼저 고백하는 스타일이다. : <input type="radio" name="yn31" value="Y">Y <input type="radio" name="yn31" value="N">N
                <br>
                <hr>
                <br> Q. 나는 성욕이 강하다. : <input type="radio" name="yn32" value="Y">Y
                <input type="radio" name="yn32" value="N">N <br>
                <hr>
                <br> Q. 나는 화가나면 폭력적이다. : <input type="radio" name="yn33" value="Y">Y <input type="radio" name="yn33" value="N">N
                <br>
                <hr>
                <br> Q. 나는 거짓말을 자주하는 편이다. : <input type="radio" name="yn34" value="Y">Y <input type="radio" name="yn34" value="N">N
                <br>
                <hr>
                <br> Q. 나는 유흥이 좋다. : <input type="radio" name="yn35" value="Y">Y
                <input type="radio" name="yn35" value="N">N <br>
                <hr>
                <br> <input type="submit" value="제출">
            </form>
        </c:when>
        <c:otherwise>
            <script>
                $(document).ready(function() {
                    $("form").submit(function() {
                        var checks = $("[type=radio]:checked");
                        if (checks.length != 35) {
                            alert("체크란을 다시 확인해주세요.");
                            return false;
                        };
                    });
                })
            </script>
            <form action="/myTestInfo.do" method="get">
                <input type="hidden" name="userName" value="${sessionScope.member.memberName }"> <input type="hidden" name="birth" value="${sessionScope.member.memberBirth }"> <input type="hidden" name="userPhone" value="${sessionScope.member.memberPhone }"> <input type="hidden" name="addr" value="${sessionScope.member.memberAddr }">
                <input type="hidden" name="email" value="${sessionScope.member.memberEmail }"> <input type="hidden" name="gender" value="${sessionScope.member.memberGender }"> <br>

                <h1>
                    <Strong>Y or N 자가 진단 테스트</Strong>
                </h1>

                <br> <br> Q. 날씨 같은 환경 변화에 민감하다. : <input type="radio" name="yn01" value="Y">Y <input type="radio" name="yn01" value="N">N <br>
                <hr>
                <br> Q. 드라이브를 즐기는 것을 좋아한다. : <input type="radio" name="yn02" value="Y">Y <input type="radio" name="yn02" value="N">N
                <br>
                <hr>
                <br> Q. 좋은 책을 반복해서 여러 번 읽는다. : <input type="radio" name="yn03" value="Y">Y <input type="radio" name="yn03" value="N">N
                <br>
                <hr>
                <br> Q. 휴대폰이 금방 바뀌는 타입이다. : <input type="radio" name="yn04" value="Y">Y <input type="radio" name="yn04" value="N">N
                <br>
                <hr>
                <br> Q. 계획을 하지 않고 즉흥으로 하는 스타일이다. : <input type="radio" name="yn05" value="Y">Y <input type="radio" name="yn05" value="N">N <br>
                <hr>
                <br> Q. 아침에 눈을 뜨면 한번에 잘 일어난다. : <input type="radio" name="yn06" value="Y">Y <input type="radio" name="yn06" value="N">N
                <br>
                <hr>
                <br> Q. TV는 정한 프로그램만 일정 시간 시청한다. : <input type="radio" name="yn07" value="Y">Y <input type="radio" name="yn07" value="N">N <br>
                <hr>
                <br> Q. 먹고 싶은 음식은 꼭 먹어야 직성이 풀린다. : <input type="radio" name="yn08" value="Y">Y <input type="radio" name="yn08" value="N">N <br>
                <hr>
                <br> Q. 약속이 있으면 약속 시간보다 미리 나간다. : <input type="radio" name="yn09" value="Y">Y <input type="radio" name="yn09" value="N">N <br>
                <hr>
                <br> Q. 생각을 많이 하는 편이다. : <input type="radio" name="yn10" value="Y">Y <input type="radio" name="yn10" value="N">N
                <br>
                <hr>
                <br> Q. 낯을 많이 가리는 스타일이다. : <input type="radio" name="yn11" value="Y">Y <input type="radio" name="yn11" value="N">N
                <br>
                <hr>
                <br> Q. 친해지면 활발한 스타일이다. : <input type="radio" name="yn12" value="Y">Y <input type="radio" name="yn12" value="N">N
                <br>
                <hr>
                <br> Q. 처음 만나는 사람과 빨리 친해지는 편이다. : <input type="radio" name="yn13" value="Y">Y <input type="radio" name="yn13" value="N">N <br>
                <hr>
                <br> Q. 관심있는 것에 몰두하면 다른건 신경도 안쓴다. : <input type="radio" name="yn14" value="Y">Y <input type="radio" name="yn14" value="N">N <br>
                <hr>
                <br> Q. 바깥에서 일어난 안좋은 일은 가족에게 말하지 않는다. : <input type="radio" name="yn15" value="Y">Y <input type="radio" name="yn15" value="N">N <br>
                <hr>
                <br> Q. 가끔씩 우울하다. : <input type="radio" name="yn16" value="Y">Y
                <input type="radio" name="yn16" value="N">N <br>
                <hr>
                <br> Q. 주변 사람들에게 조언을 많이 하는 편이다. : <input type="radio" name="yn17" value="Y">Y <input type="radio" name="yn17" value="N">N <br>
                <hr>
                <br> Q. 나는 누군가와 같이 운동을 하는 것을 좋아한다. : <input type="radio" name="yn18" value="Y">Y <input type="radio" name="yn18" value="N">N <br>
                <hr>
                <br> Q. 이야기를 하다보면 가끔 내가 무슨 소리를 하는 지 모르겠다. : <input type="radio" name="yn19" value="Y">Y <input type="radio" name="yn19" value="N">N <br>
                <hr>
                <br> Q. 나 자신은 쓸모 있는 사람이라고 생각한다. : <input type="radio" name="yn20" value="Y">Y <input type="radio" name="yn20" value="N">N <br>
                <hr>
                <br> Q. 첫눈에 반하는 스타일이다. : <input type="radio" name="yn21" value="Y">Y <input type="radio" name="yn21" value="N">N
                <br>
                <hr>
                <br> Q. 스트레스를 받으면 예민해 진다. : <input type="radio" name="yn22" value="Y">Y <input type="radio" name="yn22" value="N">N
                <br>
                <hr>
                <br> Q. 이유없이 웃을 때가 있다. : <input type="radio" name="yn23" value="Y">Y <input type="radio" name="yn23" value="N">N
                <br>
                <hr>
                <br> Q. 스킨쉽도 사랑의 표현이라고 생각한다. : <input type="radio" name="yn24" value="Y">Y <input type="radio" name="yn24" value="N">N
                <br>
                <hr>
                <br> Q. 동시에 여러 명을 사랑할 수 있다. : <input type="radio" name="yn25" value="Y">Y <input type="radio" name="yn25" value="N">N
                <br>
                <hr>
                <br> Q. 나는 내 말이 곧 법이다. : <input type="radio" name="yn26" value="Y">Y <input type="radio" name="yn26" value="N">N
                <br>
                <hr>
                <br> Q. 나는 이성과 술을 마시는게 더 즐겁다. : <input type="radio" name="yn27" value="Y">Y <input type="radio" name="yn27" value="N">N
                <br>
                <hr>
                <br> Q. 상대방의 의상을 보고 그 사람을 판단한다. : <input type="radio" name="yn28" value="Y">Y <input type="radio" name="yn28" value="N">N <br>
                <hr>
                <br> Q. 이성이 흡연 하는 것이 싫다. : <input type="radio" name="yn29" value="Y">Y <input type="radio" name="yn29" value="N">N
                <br>
                <hr>
                <br> Q. 이성 또는 친구와 의견 충돌이 있으면 대부분 양보한다. : <input type="radio" name="yn30" value="Y">Y <input type="radio" name="yn30" value="N">N <br>
                <hr>
                <br> Q. 나는 먼저 고백하는 스타일이다. : <input type="radio" name="yn31" value="Y">Y <input type="radio" name="yn31" value="N">N
                <br>
                <hr>
                <br> Q. 나는 성욕이 강하다. : <input type="radio" name="yn32" value="Y">Y
                <input type="radio" name="yn32" value="N">N <br>
                <hr>
                <br> Q. 나는 화가나면 폭력적이다. : <input type="radio" name="yn33" value="Y">Y <input type="radio" name="yn33" value="N">N
                <br>
                <hr>
                <br> Q. 나는 거짓말을 자주하는 편이다. : <input type="radio" name="yn34" value="Y">Y <input type="radio" name="yn34" value="N">N
                <br>
                <hr>
                <br> Q. 나는 유흥이 좋다. : <input type="radio" name="yn35" value="Y">Y
                <input type="radio" name="yn35" value="N">N <br>
                <hr>
                <br> <input type="submit" value="제출">

            </form>
        </c:otherwise>
    </c:choose>
</body>

</html>