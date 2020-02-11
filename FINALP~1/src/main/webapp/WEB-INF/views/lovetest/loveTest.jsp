<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html class="no-js" lang="ko">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript"></script>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/assets/css/loveTest.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

    <style>
        div[name=loveDiv] {
            font-family: 'Nanum Gothic Coding', monospace;
            font-size: 22px;
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
                            <h1 class="text-white text-uppercase" style="font-family: 'Nanum Pen Script', cursive; 

font-size:7em;">Love Test</h1>
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

            <div class="container">
                <div id="selectTest" style="float:left;width:300px;margin : 0;">
                    <div style="width:100%;height:16%;"></div>
                    <div style="width:100%;height:10%;">
                        <a href="/loveTestMain.do" style="width:100%;height:100%; color:gray;font-family: 'Quicksand', sans-serif;">LoveTestMain</a>
                    </div>
                    <div style="width:100%;height:10%;">
                        <a href="/personalityTest.do" style="width:100%;height:100%; color:gray;font-family: 'Quicksand', sans-serif;">PersonalityTest</a>
                    </div>
                    <div style="width:100%;height:10%;">
                        <a href="/funTest.do" style="width:100%;height:100%; color:gray;font-family: 'Quicksand', sans-serif;">FunTest</a>
                    </div>
                </div>

                <div id="loveTestWrap" style="width:1000px; margin-left:20%; text-align: center;">
                        <div style="font-family: 'Quicksand', sans-serif; font-size: 80px; font-size: 80px;">Love Test</div>
                        <hr>

                        <div id="loveTestQ1" style="width:920px; margin-left:8%; text-align:center; background-color : #FFEFEF">
                            <h3 style="font-family: 'Poor Story', cursive; text-align: center;">
                            <br>Q.1 당신은 친구에게 파티 초대를 받았습니다. <br>초대 당일 평소 아주 마음에 들어하는 가방을 가지고
                            	<br> 파티장소에 갔는데..친구가 문득 당신의 가방을 보고
                            	 <br>"그 가방 너무 낡은 거 아니야?좀 오래 쓴거 같은데.."
                          	     <br>라는 말을 꺼내는 겁니다.
                                 <br>당신은 집으로 돌아와 그 가방을 어떻게 하겠습니까?<br><br>
                            </h3>
                            <center>
                                <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
                                    <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq1"><br><br><br>버린다<input type="hidden" value="lovea1"></div>
                                    <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq1"><br><br><br>신경 쓰지 않고 그냥 사용한다<input type="hidden" value="lovea2"></div>
                                    <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq1"><br><br><br>장바구니 등의 다른 용도로 사용한다.<input type="hidden" value="lovea3"></div>
                                    <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq1"><br><br><br>사용하진 않더라도 그냥 집에 둔다.<input type="hidden" value="lovea4"></div>
                                </div>
                            </center>
                            <br>
                            <!-- <input type="button" name="loveq1" value="lovea1">
          <input type="button" name="loveq1" value="lovea2">
          <input type="button" name="loveq1" value="lovea3">
          <input type="button" name="loveq1" value="lovea4"> 
          <br>
          <button type="button" id="loveq1Btn">확인</button>-->
                            <div id="lovea1Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">내가 버릴지언정 먼저 버려질 수는 없지!<br>
                                당신은 연인에게 헤어지자는 말을 듣게 되면애써 강한 척을 하는 타입입니다.<br>
                                오히려 상대방의 이야기를 반기는 듯 쿨한 태도를 보이기도 합니다.<br>
                                그리고는 바로 "나도 너랑 헤어지고 싶던 차에 잘 됐다."<br>
                                라는 식으로 맞대응을 합니다.</div>
                            <div id="lovea2Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">니가 어떻게 나에게 이래? 너 부셔버릴거야~ <br>
                                당신은 연인에게 헤어지자는 말을 듣게 되면 오히려 상대방에게 분노하는 타입입니다.<br>
                                순간 부글부글 분노에 가득차 안절부절 못하는 태도를 보이다, <br> 결국 화를 참지 못하고 상대방을 악담을 퍼붓습니다.<br>
                                그리고 철처하게 복수를 다짐하고 <br> 이별 후에도 상대방에게 늘 저주를 퍼붓는 타입입니다<br> </div>
                            <div id="lovea3Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">그래.. 난 너에게 어울리는 사람이 아니야 T.T <br>
                                당신은 연인에게 헤어지자는 말을 듣게 되면 <br> 그저 고개를 푹 숙인 채 아무 말도 못하는 태도를 보입니다.<br>
                                이렇게 헤어지게 되는 건,<br> 결국 자신이 못나서 그렇게 된 거라는 생각을 지울 수가 없습니다.<br>
                                그래서 이별로 인해 마음은 슬프지만<br> 차마 상대방을 잡을 용기 조차 가질 수 없는 소심한 사람입니다.<br>
                                당신은 이별 후 아무런 말도 행동도 하지 않고,<br> 그저 어두운 방안에 틀어박혀<br>
                                훌쩍 훌쩍 혼자 눈물을 훔치며 상대방을 그리워 할 타입 입니다.<br>
                            </div>
                            <div id="lovea4Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">그동안 나 같은 사람 만나느라 고생했어. 꼭 좋은 사람 만나 행복해~<br>
                                당신은 연인에게 헤어지자는 말을 듣게 되면<br> 애써 태연한 척 밝은 모습을 보여주려는 태도를 보입니다.<br>
                                당신에게 이별은 무척이나 마음 아픈 일이지만 <br> 그것을 겉으로는 표현하지 않고<br>
                                애써 쿨한 태도를 보이며 오히려 상대가 미안해 하지 않게 웃으며 상대를 보내줍니다.<br>
                                당신은 마지막까지 상대방에게 멋진 연인이고 싶어하는 타입의 사람입니다<br>
                            </div>
                            <button type="button" class="btn" id="nextBtn1" style=" background-color : white; float: right;">
                            <i class="fas fa-arrow-right fa-4x"></i>
                            </button>

                        </div>

                        <div id="loveTestQ2" style="width:920px; margin-left:8%; background-color : #FFEFEF">
                            <h3 style="font-family: 'Poor Story', cursive;">Q.2 오늘은 왠지 꿀꿀한 날..<br>
                                퇴근길에 기분 전환도 할겸 상점에 들러 맛있어 보이는<br>
                                초콜릿을 하나 샀습니다.<br>
                                집으로 돌아와 쉬던 중 오늘 사온 초콜릿이 떠올라 먹으려고 보니,<br>
                                이런 벌써 유통기한이 3일이나 지나 있었습니다. <br>
                                당신은 어떻게 대처하시겠습니까?<br>
                            </h3>

                            <center>
                                <div style="width:800px; height:200px;  box-sizing: border-box; color:white; font-size:20px;">
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq2"><br><br><br>상점에 찾아가 화풀이를 하고 환불한다<input type="hidden" value="lovea1"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq2"><br><br><br>상점을 찾아가 차분하게 교환한다<input type="hidden" value="lovea2"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq2"><br><br><br>신경 쓰지 않고 먹는다<input type="hidden" value="lovea3"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq2"><br><br><br>찝찝해 그냥 버린다<input type="hidden" value="lovea4"></div>
                                </div>
                            </center>
                            <br>
                            <!--  <input type="radio" name="loveq2" value="lovea1">1.상점에 찾아가 화풀이를 하고 환불한다.
              <input type="radio" name="loveq2" value="lovea2">2.상점을 찾아가 차분하게 교환한다.
              <input type="radio" name="loveq2" value="lovea3">3.신경 쓰지 않고 먹는다.
              <input type="radio" name="loveq2" value="lovea4">4.찝찝해 그냥 버린다.
              <br>
              <button type="button" id="loveq2Btn">확인</button> -->
                            <div id="loveq2a1Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">실연에 대한 당신의 쿨함은 제로!!'내가 뭘 잘못했어?<br>
                                그런 넌 얼마나 잘했는데??'<br>
                                당신은 실연을 당하면 이별의 슬픔보다는 화를 내며 결과를 납득하지 못합니다.<br>
                                화를 참지 못한 당신은 결국 상대방을 찾아가 잘잘못을 따지며 심하게 싸우고,<br>
                                급기야 상대방에게 준 선물을 다시 돌려 받습니다.<br>
                                그래도 화가 풀리지 않아 헤어진 연인에 대한 뒷담화를 여기저기에 늘어 놓고 다니는군요.<br>
                            </div>
                            <div id="loveq2a2Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">실연에 대한 당신의 쿨함은 30%<br>
                                당신은 실연을 당하면 떠난 상대를 그리워하며, <br>
                                심하게 슬퍼하고 우울해하며 때론 상대방에게 울고불고 매달리기도 합니다. <br>
                                하지만 계속적인 매달림에도 상대방이 자신의 <br>
                                마음을 받아주지 않게 되면 당신은 그 사람의 주변을 맴돌기 시작합니다. <br>
                                SNS를 통해 상대방의 근황을 지켜보는 것은 물론, <br>
                                상대의 집앞에서 몰래 지켜보는 일 또한 빈번합니다.<br>
                                자칫 잘못하면 스토커가 될 수도 있으니 주의가 필요합니다.<br>
                            </div>
                            <div id="loveq2a3Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">실연에 대한 당신의 쿨함은 70%<br>
                                당신은 실연을 당하면 망연자실 어쩔줄 몰라하며 <br>
                                아무것도 못하고 그저 슬프고 우울하기만 합니다.<br>
                                그렇다고 다시 매달릴 용기도 없고, 그저 속만 태우고 있습니다.<br>
                                이 또한 금방 지나갈거야..<br> 시간이 모든 걸 해결 해 주겠지..<br>
                                하면서 아픔을 견디며 홀로 지내고 있네요.<br>
                            </div>
                            <div id="loveq2a4Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">실연에 대한 당신의 쿨함은 90%<br>
                                당신은 실연을 당해도 연애 또한 하나의 인간관계일 뿐이라 생각하며<br>
                                특별한 큰 변화를 보이지 않습니다.<br>
                                만남이 있으면 당연히 헤어짐도 있는 법.. <br>
                                그렇게 담담하게 대처합니다.<br> 어쩌면 당신은
                                딱 아프지 않을 만큼만<br> 상대방을 사랑했게 아닐까요?<br>
                            </div>
                            <button type="button" class="btn" id="nextBtn2" style=" background-color : white; float: right;">
                            <i class="fas fa-arrow-right fa-4x"></i></button>
                        </div>


                        <div id="loveTestQ3" style="width:920px; margin-left:8%; background-color : #FFEFEF">
                            <h3 style="font-family: 'Poor Story', cursive;">Q.3 어느날 쇼핑을 하던 중 이벤트에 응모를 했는데,<br>
                                이런! 당첨이 되었네요.<br>
                                그런데 솔로인 당신에게 담첨된 것은 바로 해외여행 커플 티켓!<br>
                                순간 같이 가고 싶은 이성친구가 떠올랐습니다.<br>
                                그 이성친구와 당신은 어느나라로 여행을 가고 싶으신가요?<br>
                            </h3>
                            <center>
                                <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq3"><br><br><br>일본<input type="hidden" value="lovea1"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq3"><br><br><br>스위스<input type="hidden" value="lovea2"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq3"><br><br><br>인도<input type="hidden" value="lovea3"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq3"><br><br><br>프랑스<input type="hidden" value="lovea4"></div>
                                </div>
                            </center>

                            <!--  <input type="radio" name="loveq3"  value="lovea1">1.일본
                <input type="radio" name="loveq3"  value="lovea2">2.스위스
                <input type="radio" name="loveq3"  value="lovea3">3.인도
                <input type="radio" name="loveq3"  value="lovea4">4.프랑스
                <br>
                <button type="button" id="loveq3Btn">확인</button> -->
                            <div id="loveq3a1Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 신경을 끄는 이성친구는 「결혼하고 싶은 사람!」<br>
                                지금 당신의 신경을 끄는 이성친구는 신경이 쓰인다기 보다는 <br> 함께 있으면 편안함을 느끼시지 않나요?<br> 무슨 일에 있더라도 제일 먼저 떠오르지 않습니까?<br>
                                이런 저런 생각이 들다 가도 결국 당신의 <br> 마음속 깊은 곳에 자리잡게 되는 사람은 바로 이 사람입니다.<br> 이미 당신은 할 수만 있다면 인생을 함께 걸어가고 싶다<br> 생각하고 있는지도 모릅니다.<br>
                                솔직하게 자신의 마음을 표현해 보세요.<br> 그래야 상대도 당신의 마음에 답해 줍니다. <br> 유혹을 하려거나, 잘 보이려 하지 않아도 괜찮습니다. <br> 급격하고 뜨겁게 어필하는 것이 아니라, 천천히 또 차분하게 다가가 보세요.<br>
                            </div>
                            <div id="loveq3a2Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 신경을 끄는 이성친구는 「성별을 뛰어 넘어 속 깊은 이야기를 나누고 싶은 사람!」<br>
                                당신에게 있어 뭐든 다 이야기할 수 있는<br> 최고의 친구로 이성이라는 조건을 넘어 연애 상담도<br> 가족처럼 편하게 할 수 있는 마치 남매와 같은 느낌을 가질 수는 사람입니다.<br> 당신은 친구를 이성으로서 특별하게 의식하지 않지만, <br> 둘의 관계를 주위에서는 아주 특별하게 보는 것 같습니다.<br> 당신은 잘 모를 수도 있지만,<br> 당신의 친구는 다른 이성들에게 꽤나 인기가 많은 사람입니다. <br> 때문에 다른 사람들에게 질투의 대상이 될수 있으니,<br> 이런 점에있어 오해가 없도록 주의할 필요가 있어 보이네요.<br>
                            </div>
                            <div id="loveq3a3Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 신경을 끄는 이성친구는 「닮고 싶은 동경의 대상!」 <br>
                                인간적으로 당신의 흥미를 끄는 사람으로<br> 연애 감정이라기 보다는 존경하고 동경하는 사람입니다.<br> 당신이 하기 어려운 일들도 척척 잘 해내며,<br> 머리도 좋고, 주위 사람들에 대한 배려심도 깊습니다.<br> 당신에게는 여러 가지 면에서 닮고 싶은,<br>이정표 역할을 해주는 사람인 것 같습니다. <br> 굳이 말로 이야기 하지 않아도 정신적으로<br> 당신을 자극 시켜주고 또한 당신을 도와 줍니다.<br> 참고로 언제나 장난만 치는 듯한 친구들 중에 <br> 의외로 이러한 존재가 있을 수 있으니 한번 잘 찾아 보시는 것도 좋을 것 같네요.<br>
                            </div>
                            <div id="loveq3a4Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 신경을 끄는 이성친구는 「잠자리를 하고 싶은 사람!」<br>
                                지금 어떤 의미로는 가장 신경이 많이 쓰이는<br> 이성 친구로 당신의 성적 관심을 자극하고 있습니다. <br> 상대의 내면을 알고 싶다거나 감정을 알고 싶다거나 하는 것이 아닌,<br> 단지 성적인 페로몬을 느끼는 상대입니다.<br> 또한 당신의 친구는 함께하는 모임이나 파티 등에서 <br> 당신의 기분을 업 시켜주고 당신을 빛나게 해줄 수 있는 사람입니다.<br> 너무 성급하게 다가가지 말고 적당한 거리를 유지 하면서<br> 당신의 매력을 조금씩 어필해 보세요. <br> 조금씩 서로에 매력에 이끌려 좋은 관계가 될 수 있을지도 모릅니다.<br>
                            </div>
                            <button type="button" id="nextBtn3" class="btn" style=" background-color : white; float: right;">
                            <i class="fas fa-arrow-right fa-4x"></i></button>
                        </div>

                        <div id="loveTestQ4" style="width:920px; margin-left:8%; background-color : #FFEFEF">
                            <h3 style="font-family: 'Poor Story', cursive;">Q.4당신은 결혼 박람회에 갔습니다. <br>
                                입구에 들어서자 주위에서 폭죽을 터트리며 당신을 축하해 주는게 아니겠어요?<br>
                                알고 보니 당신은 박람회의 입장 만 번째 입장객!<br>
                                박람회 측으로부터 축하 선물을 받았습니다.<br>
                                당신은 어떤 선물을 받았나요?<br>
                            </h3>
                            <center>
                                <div style="width:800px; height:200px;  box-sizing: border-box; color:white; font-size:20px;">
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq4"><br><br><br>꽃다발<input type="hidden" value="lovea1"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq4"><br><br><br>현금<input type="hidden" value="lovea2"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq4"><br><br><br>시계<input type="hidden" value="lovea3"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq4"><br><br><br>귀금속<input type="hidden" value="lovea4"></div>
                                </div>
                            </center>
                            <!-- <input type="radio" name="loveq4" value="lovea1">1.꽃다발
                  <input type="radio" name="loveq4" value="lovea2">2.현금
                  <input type="radio" name="loveq4" value="lovea3">3.시계
                  <input type="radio" name="loveq4" value="lovea4">4.귀금속
                  <br>
                  <button type="button" id="loveq4Btn">확인</button> -->
                            <div id="loveq4a1Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 결혼 상대자가 꼭 가지고 있어야 하는 것은 「꿈꾸는 긍정적 마인드!!」<br>
                                당신은 외적인 모습 보다는 내면을 가꾸고<br> 자신의 꿈을 향해 늘 긍정적인 생각으로 열심히 자신의 꿈을 이루려 노력하는 사람을 <br> 배우자 감으로 생각하고 있습니다.<br> 꿈이 꼭 원대하고 커야 하는 것은 아닙니다. <br> 남들이 볼 때 보잘 것 없는 작은 꿈일지라도 <br> 현재의 상황에 안주하지 않고 보다 발전하기 위해 <br> 구체적으로 꿈을 이루려 행동하고 희망적으로 <br> 꾸준히 노력하는 사람이라면 괜찮습니다. <br> 더불어 상대방의 가치관이 당신과도 맞는다면 당신에겐 최고의 결혼 상대자가 될 것 같습니다.<br>
                            </div>
                            <div id="loveq4a2Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 결혼 상대자가 꼭 가지고 있어야 하는 것은 「재력!!」<br> 당신은 초라하고 보잘 것 없어 보이는 사람을 싫어 합니다.<br> 특히 당신은 돈에 민감한 사람으로 돈에 인색한 사람,<br> 즉 한마디로 가난한 사람은 절대 NO!외모,<br> 성격은 크게 상관하지 않습니다. <br> 하지만 재력은 무조건 있어야 합니다. <br> 상대방의 집안이 부유한 것은 기본이고 스스로 돈을 버는 능력이 <br> 뛰어난 사람이라면 당신에겐 최고의 결혼 상대자가 될것 같습니다.<br>
                            </div>
                            <div id="loveq4a3Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 결혼 상대자가 꼭 가지고 있어야 하는 것은 「성실함!!」<br> 당신은 배우자에 대한 특별한 욕심은 없습니다. <br> 다만, 평범한 사람이라도 괜찮으나 개으른 사람만은 절대로 No! <br> 상대방이 내세울 만게 없고, 자랑 할 만한 게 없다 해도<br> 성실함만 하나만 있다면 그것으로 당신에게 충분 합니다.<br> 성실함이 있다면 앞으로 함께 모든것을 만들어 나갈 수 있을테니까요.<br> </div>
                            <div id="loveq4a4Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신의 결혼 상대자가 꼭 가지고 있어야 하는 것은 「빛나는 외모!!」<br> 당신은 누가 뭐라 해도 외모만 출중하다면 OK!<br> 상대방의 학벌, 성격, 재력 등등.. <br> 좋으면 좋겠지만 아니어도 크게 상관 없습니다.<br> 평소 자신을 가꾸고 꾸미기를 좋아하는 당신에겐 <br> 배우자의 외모는 무척이나 중요한 요소가 됩니다.<br> 나와 어울릴 수 있는 또 나를 돋보이게 해줄 멋진 외모의 상대자여야만 합니다. <br> 어쩌면 당신은 결혼 상대자를 자신의 악세사리로 생각하고 있는지도 모르겠네요 ^^;<br>
                            </div>
                            <button type="button" id="nextBtn4" class="btn" style=" background-color : white; float: right;">
                            <i class="fas fa-arrow-right fa-4x"></i></button>
                        </div>


                        <div id="loveTestQ5" style="width:920px; margin-left:8%; background-color : #FFEFEF">
                            <h3 style="font-family: 'Poor Story', cursive;">Q.5 당신은 탐험가 입니다.<br>
                                이번 탐험의 주제는 딱 한가지 물건만 가지고 가기 입니다.<br>
                                꽤나 힘든 여정이 될 것 같네요.<br>
                                당신은 다음 중 어떠한 물건을 가지고 가시겠습니까?
                            </h3>
                            <center>
                                <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq5"><br><br><br>뭐든지 가능한 마법의 도구<input type="hidden" value="lovea1"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq5"><br><br><br>지도<input type="hidden" value="lovea2"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq5"><br><br><br>돈<input type="hidden" value="lovea3"></div>
                                    <div style="width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;" name="loveq5"><br><br><br>무기<input type="hidden" value="lovea4"></div>
                                </div>
                            </center>
                            <!-- <input type="radio" name="loveq5" value="lovea1">1.뭐든지 가능한 마법의 도구
                    <input type="radio" name="loveq5" value="lovea2">2.지도
                    <input type="radio" name="loveq5" value="lovea3">3.돈
                    <input type="radio" name="loveq5" value="lovea4">4.무기
                    <br>
                    <button type="button" id="loveq5Btn">확인</button> -->
                            <div id="loveq5a1Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신은 연인에게 나쁜 문제가 생겼다 해도<br> '아무것도 해주지 않는 타입!!'<br> 당신은 일단 표면적으로는 자신의 일 처럼 상대방을 걱정해줍니다만.. <br> 속 마음은 다릅니다.<br> 당신은 상대방의 트러블에 같이 얽히고 싶은 마음이 애초부터 없습니다. <br> 오히려 이런 상황이 불편하고 짜증스럽기만 합니다.<br> 그래도 연인인데 못본 척 하기도 그렇고.. <br> 일단 걱정하는 척 연기는 하지만 속으로는 <br> '짜증나니까 자꾸 나한테 기대지 말고 니 일은 니가 알아서 좀 해결 해라!'<br> 라는 생각을 갖고 있어 이런 상황이 싫기만 합니다.<br> 당신은 연인을 향해 걱정하는 얼굴은 하고 있으나.. <br> 결국은 아무것도 해주지 않습니다.<br>
                            </div>
                            <div id="loveq5a2Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신은 연인에게 나쁜 문제가 생겼을 때<br> '우선 해결책을 냉정히 생각한 후 행동하는 타입!!'<br>
                                당신은 침착하고 냉철한 사고를 가지고 있는 사람입니다. 당신의 연인에게 안좋은 일이 생겼다고 바로 행동 하지는 않습니다. 오히려 연인에게 생긴 문제가 어떠한 유형의 일인지? 또 그 해결책으로는 무엇이 있을지를 우선적으로 꼼꼼히 생각하고 판단해 봅니다. 그리고 나름의 해결책을 가지고 연인에게 달려가 도움을 주는 타입입니다.당신은 연인에게 정확한 조언을 해주어 연인을 좋지 않은 상황에서 구해주는 포용력을 가진 믿음직한 사람입니다.
                            </div>
                            <div id="loveq5a3Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신은 연인에게 나쁜 문제가 생겼을 때<br> '자신의 손익을 따져 본 후 행동하는 타입!!'<br>
                                당신은 상당히 계산적인 사람으로<br> 연인의 문제를 해결 하는데 있어 자신이 입을 손해가 있는지를 우선적으로 생각합니다.<br> 그리고 연인의 문제를 해결해 주었을 때 <br> 당신에게 생기는 이득이 얼마나 되는지를 따져본 후 손해보다 얻는 득이 크다면 <br> 무슨 수를 써서라도 연인의 문제를 해결해 주려 합니다.<br> 하지만 득보다 실이 크다 판단된다면 적당한 핑계를 대고 이러저리 피해다니며 <br> 시간이 지나 해결되기까지 그저 관망하는 사람입니다. <br> 꼭 연인의 일 뿐 아니라 모든 인간관계가 달면 삼키고 쓰면 뱉는 경우가 대부분인 것 같습니다.<br>
                            </div>
                            <div id="loveq5a4Div" name="loveDiv" style="width:800px; font-family: 'Poor Story', cursive;">당신은 연인에게 나쁜 문제가 생겼을 때<br> '일단 상대에게 달려간 후 대응하는 타입!!<br>
                                '당신은 연인에게 문제가 발생하면 <br> 일단 자신이 하던 일을 멈추고 곧바로 애인이 있는 곳으로 달려갑니다.<br> 당신이 해결 할 수 없는 일이라 할지라도 연인을 도와주기 위해 <br> 적극적으로 대응하는 자세를 취합니다.<br> 만약 연인 문제를 당신이 해결해 주지 못했다 하더라도<br> 연인에게 있어 당신은 큰 위로가 되어주는 사람입니다.<br>
                            </div>
                        </div>
                </div>
                <input type="hidden" name="memberGender" value="${sessionScope.member.memberGender }">

                <hr>

                </form>
            </div>

            <!--Our Work Section-->

        </section>
        <!--End off About section -->


        <!--Company section-->

        <script type="text/javascript">
            $("#loveTestQ2").hide();
            $("#loveTestQ3").hide();
            $("#loveTestQ4").hide();
            $("#loveTestQ5").hide();
            $("#nextBtn1").hide();
            $("#nextBtn2").hide();
            $("#nextBtn3").hide();
            $("#nextBtn4").hide();



            // 1-------------------------------------------------------------------------------------        
            $("#lovea1Div").hide();
            $("#lovea2Div").hide();
            $("#lovea3Div").hide();
            $("#lovea4Div").hide();
            $("#loveNoCheck1").hide();

            $("[name=loveq1]").click(function() {
                var loveq1 = $(this).children("input").val();




                if (loveq1 == "lovea1") {
                    $("#lovea2Div").hide();
                    $("#lovea3Div").hide();
                    $("#lovea4Div").hide();
                    $("#lovea1Div").show();
                    $("#loveNoCheck1").hide();
                    $("#nextBtn1").show();
                } else if (loveq1 == "lovea2") {
                    $("#lovea1Div").hide();
                    $("#lovea3Div").hide();
                    $("#lovea4Div").hide();
                    $("#lovea2Div").show();
                    $("#nextBtn1").show();
                    $("#loveNoCheck1").hide();
                } else if (loveq1 == "lovea3") {
                    $("#lovea1Div").hide();
                    $("#lovea2Div").hide();
                    $("#lovea4Div").hide();
                    $("#lovea3Div").show();
                    $("#nextBtn1").show();
                    $("#loveNoCheck1").hide();
                } else if (loveq1 == "lovea4") {
                    $("#lovea1Div").hide();
                    $("#lovea2Div").hide();
                    $("#lovea3Div").hide();
                    $("#lovea4Div").show();
                    $("#nextBtn1").show();
                    $("#loveNoCheck1").hide();
                } else if (loveq2 == false) {
                    $("#loveNoCheck1").show();
                }

            })
            //2 -------------------------------------------------------------------------------------
            $("#loveq2a1Div").hide();
            $("#loveq2a2Div").hide();
            $("#loveq2a3Div").hide();
            $("#loveq2a4Div").hide();
            $("#loveNoCheck2").hide();

            $("[name=loveq2]").click(function() {
                var loveq1 = $(this).children("input").val();
                if (loveq1 == "lovea1") {
                    $("#loveq2a2Div").hide();
                    $("#loveq2a3Div").hide();
                    $("#loveq2a4Div").hide();
                    $("#loveq2a1Div").show();
                    $("#nextBtn2").show();
                    $("#loveNoCheck2").hide();
                } else if (loveq1 == "lovea2") {
                    $("#loveq2a1Div").hide();
                    $("#loveq2a3Div").hide();
                    $("#loveq2a4Div").hide();
                    $("#loveq2a2Div").show();
                    $("#nextBtn2").show();
                    $("#loveNoCheck2").hide();
                } else if (loveq1 == "lovea3") {
                    $("#loveq2a1Div").hide();
                    $("#loveq2a2Div").hide();
                    $("#loveq2a4Div").hide();
                    $("#loveq2a3Div").show();
                    $("#nextBtn2").show();
                    $("#loveNoCheck2").hide();
                } else if (loveq1 == "lovea4") {
                    $("#loveq2a1Div").hide();
                    $("#loveq2a2Div").hide();
                    $("#loveq2a3Div").hide();
                    $("#loveq2a4Div").show();
                    $("#nextBtn2").show();
                    $("#loveNoCheck2").hide();
                } else if (loveq2 == false) {
                    $("#loveNoCheck2").show();
                }

            })

            //3 -------------------------------------------------------------------------------------       
            $("#loveq3a1Div").hide();
            $("#loveq3a2Div").hide();
            $("#loveq3a3Div").hide();
            $("#loveq3a4Div").hide();
            $("#loveNoCheck3").hide();

            $("[name=loveq3]").click(function() {
                var loveq1 = $(this).children("input").val();

                if (loveq1 == "lovea1") {
                    $("#loveq3a2Div").hide();
                    $("#loveq3a3Div").hide();
                    $("#loveq3a4Div").hide();
                    $("#loveq3a1Div").show();
                    $("#nextBtn3").show();
                    $("#loveNoCheck3").hide();
                } else if (loveq1 == "lovea2") {
                    $("#loveq3a1Div").hide();
                    $("#loveq3a3Div").hide();
                    $("#loveq3a4Div").hide();
                    $("#loveq3a2Div").show();
                    $("#nextBtn3").show();
                    $("#loveNoCheck3").hide();
                } else if (loveq1 == "lovea3") {
                    $("#loveq3a1Div").hide();
                    $("#loveq3a2Div").hide();
                    $("#loveq3a4Div").hide();
                    $("#nextBtn3").show();
                    $("#loveq3a3Div").show();
                    $("#loveNoCheck3").hide();
                } else if (loveq1 == "lovea4") {
                    $("#loveq3a1Div").hide();
                    $("#loveq3a2Div").hide();
                    $("#loveq3a3Div").hide();
                    $("#nextBtn3").show();
                    $("#loveq3a4Div").show();
                    $("#loveNoCheck3").hide();
                } else if (loveq2 == false) {
                    $("#loveNoCheck3").show();
                }

            })

            //4-------------------------------------------------------------------------------------
            $("#loveq4a1Div").hide();
            $("#loveq4a2Div").hide();
            $("#loveq4a3Div").hide();
            $("#loveq4a4Div").hide();
            $("#loveNoCheck4").hide();

            $("[name=loveq4]").click(function() {
                var loveq1 = $(this).children("input").val();

                if (loveq1 == "lovea1") {
                    $("#loveq4a2Div").hide();
                    $("#loveq4a3Div").hide();
                    $("#loveq4a4Div").hide();
                    $("#loveq4a1Div").show();
                    $("#nextBtn4").show();
                    $("#loveNoCheck4").hide();
                } else if (loveq1 == "lovea2") {
                    $("#loveq4a1Div").hide();
                    $("#loveq4a3Div").hide();
                    $("#loveq4a4Div").hide();
                    $("#nextBtn4").show();
                    $("#loveq4a2Div").show();
                    $("#loveNoCheck4").hide();
                } else if (loveq1 == "lovea3") {
                    $("#loveq4a1Div").hide();
                    $("#loveq4a2Div").hide();
                    $("#loveq4a4Div").hide();
                    $("#loveq4a3Div").show();
                    $("#nextBtn4").show();
                    $("#loveNoCheck4").hide();
                } else if (loveq1 == "lovea4") {
                    $("#loveq4a1Div").hide();
                    $("#loveq4a2Div").hide();
                    $("#loveq4a3Div").hide();
                    $("#loveq4a4Div").show();
                    $("#nextBtn4").show();
                    $("#loveNoCheck4").hide();
                } else if (loveq2 == false) {
                    $("#loveNoCheck4").show();
                }

            })
            //5-------------------------------------------------------------------------------------      
            $("#loveq5a1Div").hide();
            $("#loveq5a2Div").hide();
            $("#loveq5a3Div").hide();
            $("#loveq5a4Div").hide();
            $("#loveNoCheck5").hide();

            $("[name=loveq5]").click(function() {
                var loveq1 = $(this).children("input").val();

                if (loveq1 == "lovea1") {
                    $("#loveq5a2Div").hide();
                    $("#loveq5a3Div").hide();
                    $("#loveq5a4Div").hide();
                    $("#loveq5a1Div").show();
                    $("#loveNoCheck5").hide();
                } else if (loveq1 == "lovea2") {
                    $("#loveq5a1Div").hide();
                    $("#loveq5a3Div").hide();
                    $("#loveq5a4Div").hide();
                    $("#loveq5a2Div").show();
                    $("#loveNoCheck5").hide();
                } else if (loveq1 == "lovea3") {
                    $("#loveq5a1Div").hide();
                    $("#loveq5a2Div").hide();
                    $("#loveq5a4Div").hide();
                    $("#loveq5a3Div").show();
                    $("#loveNoCheck5").hide();
                } else if (loveq1 == "lovea4") {
                    $("#loveq5a1Div").hide();
                    $("#loveq5a2Div").hide();
                    $("#loveq5a3Div").hide();
                    $("#loveq5a4Div").show();
                    $("#loveNoCheck5").hide();
                } else if (loveq2 == false) {
                    $("#loveNoCheck5").show();
                }

            })

            $("#nextBtn1").click(function() {
                $("#loveTestQ1").hide();
                $("#loveTestQ2").show();
                $("#nextBtn1").hide();
            })
            $("#nextBtn2").click(function() {
                $("#loveTestQ1").hide();
                $("#loveTestQ2").hide();
                $("#loveTestQ3").show();
                $("#nextBtn2").hide();
            })
            $("#nextBtn3").click(function() {
                $("#loveTestQ1").hide();
                $("#loveTestQ2").hide();
                $("#loveTestQ3").hide();
                $("#loveTestQ4").show();
                $("#nextBtn3").hide();
            })
            $("#nextBtn4").click(function() {
                $("#loveTestQ1").hide();
                $("#loveTestQ2").hide();
                $("#loveTestQ3").hide();
                $("#loveTestQ4").hide();
                $("#loveTestQ5").show();
                $("#nextBtn4").hide();
            });


            $("[name=loveq1]").hover(function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #F361A6; border-radius:50%;")

            }, function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;")

            });

            $("[name=loveq2]").hover(function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #F361A6; border-radius:50%;")

            }, function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;")

            });

            $("[name=loveq3]").hover(function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #F361A6; border-radius:50%;")

            }, function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;")

            });

            $("[name=loveq4]").hover(function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #F361A6; border-radius:50%;")

            }, function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;")

            });

            $("[name=loveq5]").hover(function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #F361A6; border-radius:50%;")

            }, function() {

                $(this).attr("style", "width:25%; height:100%;  float:left; background-color: #FFB4B4; border-radius:50%;")

            });
        </script>

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