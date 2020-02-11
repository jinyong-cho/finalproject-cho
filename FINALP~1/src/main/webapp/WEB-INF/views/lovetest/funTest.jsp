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
    <link rel="stylesheet" href="/resources/assets/css/funTest.css">
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

    <section id="hello" class="home bg-mega" style="background-image : url('/resources/assets/images/background/3-1.png');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="main_home text-center">
                    <div class="home_text">
                        <h1 class="text-white text-uppercase">FunTest</h1>
                        <div class="separator"></div>
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
        <div id="selectTest"  style="float:left;width:300px;margin : 0;">
            <div style="width:100%;height:16%;"></div>
            <div style="width:100%;height:10%;">
                <a href="/loveTestMain.do" style="width:100%;height:100%; color:gray; font-family: 'Quicksand', sans-serif;">LoveTestMain</a>
            </div>
            <div style="width:100%;height:10%;">
                <a href="/personalityTest.do" style="width:100%;height:100%; color:gray; font-family: 'Quicksand', sans-serif;">PersonalityTest</a>
            </div>
            <div style="width:100%;height:10%;">
                <a href="/loveTest.do" style="width:100%;height:100%; color:gray; font-family: 'Quicksand', sans-serif;">LoveTest</a>
            </div>
        </div>
        <div id="loveTestWrap" style="width:1000px; margin-left:20%; text-align: center; margin-bottom: 5%;">
            <center>
                <div style="font-family: 'Quicksand', sans-serif; font-size: 80px;">Fun Test</div>
                <hr>

                <div id="FunTestQ1" style="width:920px; margin-left:8%; text-align:center;background-color : #D4F4FA; font-family: 'Poor Story', cursive;">
                    <h3 style="font-family: 'Poor Story', cursive;">Q.1 당신은 어느날 갑자기 회사에서 짤리게 되었습니다.<br>
                        하루종일 아무일도 안하고 그저 멍하니 창밖만 바라보다..<br>
                        문득 '집 앞 마당에 식물이라도 심어볼까?' 라는 생각이 들었습니다.<br>
                        당신은 다음 중 어떤 식물을 심고 싶습니까?<br>
                        이 테스트는 "당신이 금전적으로 쪼들릴 때 어떠한 심리를 나타내는가"를<br>
                        알아보는 무의식심리테스트 입니다.<br>
                        당신은 돈에 대한 여유가 없다 느껴진다면 어떤 모습을 보이게 될까요?<br>

                    </h3>

                    <center>
                        <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq1"><br><br><br>야채<input type="hidden" value="lovea1"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq1"><br><br><br>딸기<input type="hidden" value="lovea2"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq1"><br><br><br>장미꽃<input type="hidden" value="lovea3"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq1"><br><br><br>나무<input type="hidden" value="lovea4"></div>
                        </div>
                    </center>
                    <br>


                    <div id="lovea1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">나에겐 비상금이 당분간은 문제 없어!<br>
                        당신은 성실하고 계획적인 사람으로 평소 미래를 대비하여 <br>늘 여유자금을 미리미리 저축해둡니다.<br>
                        당신은 금전적인 계획을 확실히 세우는 타입이므로,<br>
                        아마도 금전적으로 곤란한 상황이 당신에게 찾아오는 일은 거의 없을 듯 합니다.<br>
                        하지만 부득이하게 금전적 곤란을 겪게 된다 해도<br>
                        상황을 빠르게 해결할 수 있게 노력하기 때문에 이 또한 큰 걱정은 없을 듯 보여지네요.<br></div>
                    <div id="lovea2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        돈이 전부는 아니잖아? <br>
                        당신은 무한 긍정의 소유자로 특별히 삶에 있어 돈이 전부가 아니라는 생각을 가진 사람입니다.<br>
                        '돈은 있다가도 없고, 또 없다가도 있는 거니까..' 라는 생각을 가지고 있어<br>
                        금전적 여유가 없다고 축 쳐지거나 비관하지 않고<br>
                        현재 자신의 환경에 만족하며 긍정적인 마음가짐으로 노력하는 타입입니다.<br>
                        긍정적인 마인드가 강해서 일까요? 금전적 어려움에도 늘 밝고 즐겁게 생활합니다.<br>
                        당신은 정신적인 기쁨을 추구하는 타입으로<br>
                        삶에 있어 돈은 꼭 필요한 것이지만 그렇다고 당신에 있어 돈이 행복의 척도가 될 수는 없는 것 같습니다.<br>
                    </div>
                    <div id="lovea3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        돈 없어? 그럼 카드로 사면 되잖아? <br>
                        당신은 금전적 감각이 전혀 없는 사람으로 금전적인 곤란에 처해도 그 상황을 제대로 파악하지 못하는 사람입니다.<br>
                        당신은 아마도 부유한 환경에서 생활했을 가능성이 높습니다.<br> 그래서 돈에 대한 개념이 없습니다.<br>
                        혹시, 지금 자신이 버는 것보다 더 많은 돈을 쓰고 있지는 않은가요??<br>
                        당신은 금전적으로 곤란한 상황이 처해도 그저 평소 하던 행동 그대로 계속 생활을 합니다.<br>
                        결국, 가세가 기울어 지금의 씀씀이가 불가능해진다 해도 자신이 노력해 극복하기 보다는<br>
                        부모 또는 배우자를 탓하며 신세타령만 할 사람입니다.<br>
                    </div>
                    <div id="lovea4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        어떻게든 되겠지.. 설마 죽기야 하겠어?<br>
                        당신은 삶에 대한 의욕이 없는, 그저 되는 대로 사는 타입으로<br>
                        좋게 말해 한가로운 사람, 나쁘게 말하면 별 생각이 없이 사는 사람입니다.<br>
                        그래서 금전적으로 곤란한 상황에 처해도 걱정을 하거나 조바심을 내지 않고<br>
                        '어떻게는 되겠지. 뭐 안 되도 할 수 없는 거고..'라는 생각을 합니다.<br>
                        그래서 결국, 금전적인 곤란을 주위사람들의 도움으로 벗어 나는 경우가 많습니다.<br>
                        당신은 돈을 절약한다거나, 많은 돈을 벌겠다거나 하는 의지 자체가 부족 하기 때문에<br>
                        설령 금전적 어려움을 겪지 않는다 하더라도 부자가 되기는 힘들 듯 보입니다.<br>
                    </div>
                    <div id="loveNoCheck1">항목을선택해주세요</div>
                    <button type="button" id="nextBtn1" class="btn" style=" background-color : white; float: right;">
                    <i class="fas fa-arrow-right fa-4x"></i>
                    </button>

                </div>

                <div id="FunTestQ2" style="width:920px; margin-left:8%; text-align:center;background-color : #D4F4FA; font-family: 'Poor Story', cursive;">
                    <h3 style="font-family: 'Poor Story', cursive;">Q.2 사내 볼링대회가 개최됐습니다.<br>
                        당신은 볼링은 누구에게도 지지 않을 자신이 있습니다.<br>
                        그래서 대회에 출전을 했으나..<br>
                        당신과 붙게 된 동료의 실력이 생각보다 뛰어 납니다.<br>
                        상대는 당신보다 8점을 리드하고 경기를 마쳤습니다.<br>
                        이제, 당신의 마지막 프레임만이 남았습니다.<br>
                        당신은 이 마지막 프레임에서 몇 핀을 쓰러트렸을까요?<br>
                        이 테스트는 "정말 싫어하는 사람과 어쩔수 없이 함께해야 하는 <br>
                        상황에 당신의 태도"를 알아 보는 대인관계 심리테스트 입니다.<br>
                        당신은 이러한 상황에 놓인다면에게 과연 어떤 태도를 보이게 될까요?<br>
                        대인관계 심리테스트 결과를 확인해 보세요<br>



                    </h3>
                    <center>
                        <div style="width:800px; height:200px;  box-sizing: border-box; color:white; font-size:20px;">
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq2"><br><br><br>스트라이크<input type="hidden" value="lovea1"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq2"><br><br><br>9핀<input type="hidden" value="lovea2"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq2"><br><br><br>8핀<input type="hidden" value="lovea3"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq2"><br><br><br>7핀<input type="hidden" value="lovea4"></div>
                        </div>
                    </center>
                    <br>

                    <div id="loveq2a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">아무도 없는데, 어디서 헛소리가 들리네?? <br>
                        당신은 같은 공간에 있는 것이 너무나도 싫은 사람과 함께 있게 되면,<br>
                        아무렇지도 않게 그냥 상대를 없는 사람 취급합니다.<br>
                        상대방이 당신에게 웃으며 말을 하던, 비꼬며 시비를 걸던,<br> 어떤 액션을 취해도 대답도 하지 않고 그저 투명인간 취급을 합니다.<br>
                        몇 차례 상대방이 이런 당신의 태도를 경험하게 되면 상대방 역시 당신에게 같은 태도를 보이게 됩니다.<br>
                        결국 둘은 더 이상 보지 않는 사이가 됩니다만,<br>
                        어쩔 수 없이 봐야 하는 사이라면 서로 이렇게 계속해서 불편한 상태로 지내게 됩니다.<br></div>
                    <div id="loveq2a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        불괘해!!<br>
                        당신은 같은 공간에 있는 것이 너무나도 싫은 사람과 함께 있게 되면,<br>
                        자신의 감정을 숨기지 않고 팍팍~ 티를 내며 상당히 불쾌한 태도를 취합니다.<br>
                        이때 상대방이 당신에게 듣기 싫은 소리를 한다거나, <br>상대방 역시 당신에게 불쾌한 태도를 취하게 되면
                        당신은 상대방을 사정없이 공격을 합니다.<br>
                        당신은 안보면 말았지 싫은 사람이 마음에 안 드는 행동을 하는 꼴은 절대로 못 보는 타입입니다. <br>
                    </div>
                    <div id="loveq2a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        헤헤~ ^^<br>
                        당신은 같은 공간에 있는 것이 너무나도 싫은 사람과 함께 있게 되면,<br>
                        오히려 상대방과 친한 척을 하며 거짓된 웃음을 보입니다.<br>
                        하지만 마음과는 다르게 친한 척을 해야 하기 때문일까.. 조금은 억지스러운 모습입니다.<br>
                        당신은 마음이 약하고 소심한 성격을 가지고 있어 싫어도 싫은 티를 내지 못합니다.<br>
                        그렇다고 상대방에게 복수를 하겠다는 마음도 가지지 못합니다.<br>
                        왠지 티를 내면 불이익을 받을 것도 같고, 그렇다고 자리를 피하지도 못하고, 그냥 속으로만 참기만 하네요. T.T<br>
                    </div>
                    <div id="loveq2a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">언젠가 밟아 주겠어!<br>
                        당신은 같은 공간에 있는 것이 너무나도 싫은 사람과 함께 있게 되어도<br>
                        겉으로는 전혀 아무렇지도 않은 표정을 합니다만..<br>
                        속으로는 언젠간 큰 코 다치게 해주겠다는 생각을 늘 가지고 있습니다.<br>
                        당신은 상대방에게 큰 망신을 줄 수 있는 기회라든가,<br> 치명적인 타격을 줄 수 있는 기회가 생기기만을 기다리네요.<br>
                        그래서 그런 타이밍이 오면 숨기고 있던 칼을 꺼내는 타입입니다.<br>
                        그 전까지는 아무렇지도 않게 자신의 마음을 숨기고 있습니다.<br></div>
                    <div id="loveNoCheck2">항목을선택해주세요</div>
                    <button type="button" id="nextBtn2" class="btn" style=" background-color : white; float: right;">
                    <i class="fas fa-arrow-right fa-4x"></i>
                    </button>
                </div>


                <div id="FunTestQ3" style="width:920px; margin-left:8%; text-align:center;background-color : #D4F4FA; font-family: 'Poor Story', cursive;">
                    <h3 style="font-family: 'Poor Story', cursive;">Q.3 어느날, 당신은 너무나도 마음에 드는 핸드폰 케이스를 선물받게 되었습니다.<br>
                        그래서 바로 핸드폰에 케이스를 끼워 사용하기 시작했습니다.<br>
                        그런데 이상하게도 핸드폰 케이스를 사용한 후부터 좋은 일이 많이 생기는 것 같은 느낌이 듭니다.<br>
                        그러던 어느 날, 슬프게도 핸드폰을 떨어트려 핸드폰 케이스에 금이 가버렸습니다.<br>
                        당신이라면 핸드폰 케이스를 어떻게 하겠습니까?<br>
                    </h3>


                    <center>
                        <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq3"><br><br><br>같은 새 제품을 다시 사서 사용한다<input type="hidden" value="lovea1"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq3"><br><br><br>금이 간곳을 티 안나게 잘 붙여 계속 사용한다<input type="hidden" value="lovea2"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq3"><br><br><br>다른 핸드폰 케이스를 사서 사용한다<input type="hidden" value="lovea3"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq3"><br><br><br>할 수 없으니 그냥 케이스 없이 사용한다<input type="hidden" value="lovea4"></div>
                        </div>
                    </center>
                    <br>

                    <div id="loveq3a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">열번 찍어 안넘어 가는 사람 없지!<br>
                        당신은 짝사랑하는 사람에게 고백을 해서 거절을 당한다 해도 좌절하지 않고 계속해서 도전을 하는 타입입니다.<br>
                        당신은 집념이 강한 사람입니다.<br> 그래서 좋아한다 고백해서 거절을 당하면 '그래~ 처음부터 OK 하면 재미없지~' 라는 마음으로<br>
                        시간이 아무리 오래 걸린다 해도 자신의 마음을 받아줄 때까지 계속해서 상대방에 대쉬하는 사람입니다.<br>
                        단, 너무 과한 행동은 오히려 스토커로 몰릴 수 있으니 주의하시기 바랍니다.^^ <br></div>
                    <div id="loveq3a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        내 마음을 전했으니 그걸로 된거야.. <br>
                        당신은 짝사랑하는 사람에게 고백을 해서 거절을 당하면<br>
                        더 이상 상대방에게 부담을 주지 않기 위해 더 이상 표현하지는 않는 타입입니다.<br>
                        당신은 정이 깊은 사람으로 설령 상대방이 내 사랑을 받아 주지 않았다 하더라도<br>
                        지금것 그래왔던 것처럼 늘 상대방을 짝사랑하며 생활 합니다.<br>
                        '내 마음을 받아주지 않아도 괜찮아.. 그저 친구로서 옆에 있기만 할께'라며<br>
                        친구사이를 유지하며 늘 상대에게 좋은 친구가 되어주려 합니다.<br>
                        짝사랑 상대가 다른사람과의 사랑이 시작된다면 겉으론 축하해 주지만,<br>
                        속으로 마음 아파하고 눈물을 흘리고 계실 듯 보이네요.<br>
                    </div>
                    <div id="loveq3a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">
                        되면 좋고, 아님 말고<br>
                        당신은 짝사랑 하는 사람에게 고백을 해서 거절을 당하면<br>
                        '우린 인연이 아닌가 봐~' 라고 생각하고 깨끗하게 포기하고 다른 상대를 찾는 타입입니다.<br>
                        당신은 금사빠 타입으로 좋아하는 사람이 자주 생깁니다.<br>
                        그래서 고백해서 퇴짜를 맞아도 금새 다른 좋아하는 사람이 생겨 실연으로 마음이 아플 겨를도 없습니다.<br>
                        여기도 찔러보고 저기도 찔러보고.. 되면 고맙고, 안돼도 할 수 없고.. 라는 생각을 하고 계시지는 않은지?<br>
                        당신은 사랑을 갈구하긴 하나, 소위 말해 사랑에 목숨을 거는 스타일은 아닌 듯 보이네요.<br>
                    </div>
                    <div id="loveq3a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">당신은 짝사랑하는 사람에게 고백을 해서 거절을 당하면<br>
                        더 이상의 아무런 행동도 없이 그냥 포기하는 잊어버리는 타입입니다.<br>
                        평소 자신에게 자신감이 없어 '역시.. 무리였어'라는 생각을 갖습니다.<br>
                        그리고 성격 역시 느긋하여 상대방에 마음을 얻고자 하는 조급함을 찾아 볼 수 없습니다.<br>
                        그저 멍하니.. '내 팔자에 사랑은 무슨..' 이런 헛된 기분을 가지고 생활하기 하지는 않으신가요?<br>
                        그래서 혹시 거절당할 것이 두려워 처음부터 상대방의 마음을 얻기 위한 노력을 안 하는 것은 아닌지?<br>
                        그러면 영원히 당신의 짝을 찾을 수 없습니다.<br> 자신감을 갖고 도전해 보세요.<br>
                        어딘가 당신을 기다리는 짝이 분명 있을 테니까요.<br></div>
                    <button type="button" id="nextBtn3" class="btn" style=" background-color : white; float: right;">
                    <i class="fas fa-arrow-right fa-4x"></i></button>
                </div>


                <div id="FunTestQ4" style="width:920px; margin-left:8%; text-align:center;background-color : #D4F4FA; font-family: 'Poor Story', cursive;">
                    <h3 style="font-family: 'Poor Story', cursive;">Q.4당신은 애인과 함께 저녁식사를 하기 위해 분위기 있는 레스토랑을 갔습니다.<br>
                        저녁을 맛있게 먹는 중 안쪽에서 시끄러운 소리가 들려왔습니다.<br>
                        한 직원이 꾸지람을 듣고 있는 듯 보였습니다.<br>
                        식사를 마치고 계산을 하며 아까 소란스러웠던 것이 떠올라 물었습니다.<br>
                        직원은 무엇 때문에 야단을 맞았던 걸까요?<br>
                        이 테스트는 "당신이 위기 상황에(실수나 실패) 어떻게 대처하는가"를 알아 보는 행동 심리테스트 입니다.<br>
                        당신은 위기상황을 어떻게 극복해 나갈까요?<br>
                        행동 심리테스트 결과를 확인해 보세요<br>
                    </h3>
                    <center>
                        <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq4"><br><br><br>손님에게 화를 내서<input type="hidden" value="lovea1"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq4"><br><br><br>요리에 실수가 있어서<input type="hidden" value="lovea2"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq4"><br><br><br>손님을 대하는 표정이 좋지 못해서<input type="hidden" value="lovea3"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq4"><br><br><br>주문을 잘못 받아서<input type="hidden" value="lovea4"></div>
                        </div>
                    </center>
                    <br>

                    <div id="loveq4a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">이건 나 때문이 아니야!!<br>
                        당신은 실수나 실패로 인해 위기 상황에 처해지면 눈 속임 등으로 회피하려는 타입!<br>
                        당신이 실수나 실패를 했을 때, 자신이 아닌 누군가에게 책임을 전가하거나<br>
                        그러한 일이 불가능 하다면 이런 저런 핑계로 상황을 회피하려 합니다.<br>
                        이러한 상황을 벗어 날 수 있다면 타인에게 피해를 주더라도 일단은 상황을 벗어나려 하네요.<br></div>
                    <div id="loveq4a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">뭐? 그런일이 있었어?<br>
                        당신은 실수나 실패로 인해 위기 상황에 처해지면 철저히 숨기려 하는 타입!<br>
                        당신이 실수나 실패를 하면 가능하다면 완전히 없었던 일처럼 숨기려는 경향이 강한 스타일 입니다.<br>
                        그리고는 아무 일도 없었던 거처럼 행동합니다.<br>
                        하지만 맘속으로는 언제 들킬지 모른다는 생각에 늘 마음이 무겁습니다.<br>
                        그냥 솔직하게 털어놓고 인정하고 마음에 짐을 더는 것이 정신건강에는 더 좋을 듯 싶네요.<br></div>
                    <div id="loveq4a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">모두 다 내 책임이야!<br>
                        당신은 실수나 실패로 인해 위기 상황에 처해지면 자신의 행동을 인정하고 책임을 지는 타입!<br>
                        당신은 실수나 실패를 했을 때 변명이나 핑계를 대지 않고 깨끗이 인정하고<br>
                        자신의 행동에 책임을 지는 스타일 입니다.<br>
                        일에 대한 책임에서 그치지 않고 다시는 같은 과오를 반복하지 않기 위해<br>
                        실패한 일에 대한 원인에 과정에 대해 생각해 보고 잘못된 것이 있다면 고쳐나가려는 미래지향적인 사람이네요.<br></div>
                    <div id="loveq4a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">일단은 미안해!<br>
                        당신은 실수나 실패로 인해 위기 상황에 처해지면 앞뒤 보지 않고 우선은 무조건 사과하는 타입!<br>
                        당신이 실수나 실패를 했을 때, 변명이나 핑계를 대지 않고 무조건 사과하고 반성하는 스타일입니다.<br>
                        하지만 실수나 실패의 원인을 운이 없어 생겼다고 생각하는 경향이 강합니다.<br>
                        자신은 잘 했지만 어쩔 수 없었다고 생각하기에 비슷한 실수와 실패를 반복할 가능성이 있네요.<br></div>
                    <button type="button" id="nextBtn4" class="btn" style=" background-color : white; float: right;">
                    <i class="fas fa-arrow-right fa-4x"></i></button>
                </div>

                <div id="FunTestQ5" style="width:920px; margin-left:8%; text-align:center;background-color : #D4F4FA; font-family: 'Poor Story', cursive;">
                    <h3 style="font-family: 'Poor Story', cursive;">Q.5 당신은 아주 소문난 유명한 점쟁이 입니다.<br>
                        어느날 한 손님이 찾아왔습니다.<br>
                        그 손님은 짝사랑 하는 사람과 결혼을 하고 싶다며<br>
                        방법이 알려달라 당신에게 조언을 구했습니다.<br>
                        당신은 너무나 간절해 보이는 그 손님에게 도와주고자 비책을 알려주었습니다.<br>
                        얼마 뒤 그 손님은 바라는대로 결혼식을 하게 되었다며 <br>
                        당신에게 감사의 뜻으로 선물을 보내왔습니다.<br>
                        당신은 어떠한 선물을 받았나요?<br>

                    </h3>

                    <center>
                        <div style="width:800px; height:200px;  box-sizing: border-box; color:white; font-size:20px;">
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq5"><br><br><br>청첩장<input type="hidden" value="lovea1"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq5"><br><br><br>감사의 마음이 가득 담긴 편지<input type="hidden" value="lovea2"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq5"><br><br><br>관상용 화분<input type="hidden" value="lovea3"></div>
                            <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;" name="loveq5"><br><br><br>상품권<input type="hidden" value="lovea4"></div>
                        </div>
                    </center>
                    <br>

                    <div id="loveq5a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">당신은 인생에 있어 "인간관계"를 가장 중요하게 생각합니다.<br>
                        당신에겐 당신 주위의 좋은 사람들이 가장 큰 재산입니다.<br>
                        더욱이 당신은 친화력이 매우 좋아 그 누구와도 쉽게 친해지는 장점을 가지고 있어<br>
                        더 많은 좋은 사람들을 만나고 또 좋은 관계를 유지하고 싶어 합니다.<br>
                        하지만 이러한 생각이 때론 지나쳐<br>
                        너무 상대방에게 자기 자신을 맞출때도 많습니다.<br>
                        그래서 때론 혼자 상처를 받기도 하죠.<br>
                        하지만 역시 믿을건 좋은 사람들 뿐이라는 생각엔 변함이 없는 것 같습니다.<br>
                        그런 당신에게 인생에 있어 가장 필요하고 또 중요한 것은<br>
                        언제나 당신의 편이 되어 줄수 있는 좋은 사람들과 좋은 관계를 형성하는 것 입니다.<br></div>
                    <div id="loveq5a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">당신은 인생에 있어 "충실한 생활"을 가장 중요하게 생각합니다.<br>
                        당신은 늘 열심히 노력하며 바쁘게 살아가는 아주 성실한 사람입니다.<br>
                        워커홀릭인 당신의 이런 성격은 장점인 동시에 단점이기도 하죠.<br>
                        당신이 모든일에 열심히인 것이
                        꼭 무엇인가를 이루기 위해서 아닙니다.<br>
                        하루하루 충실하게 바쁘게 사는 것이
                        그저 당신에겐 보람되고 행복할 뿐입니다.<br>
                        편안하게 쉬고 있는 시간이 오히려 어색하고 불안하시죠?<br>
                        그래서 잠시라도 무엇인가를 하려 하고,
                        또 그래야 불안안 마음을 떨칠 수 있지 않으신가요?<br>
                        바쁘고 성실한 삶도 좋지만 그런 삶을 계속 유지하기 위해서
                        꼭 필요한 것이 바로 충분한 휴식 입니다.<br>
                        휴식이 꼭 필요하다는거 잊지 마시고,<br>
                        앞으로는 쉬는것도 열심히 하시길~<br></div>
                    <div id="loveq5a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">당신은 인생에 있어 "건강"을 가장 중요하게 생각합니다.<br>
                        당신은 주위 사람들에게 배풀 줄 알고, 나눌 줄 아는 착한 사람입니다.<br>
                        그리고 다른 많은 사람들이 탐내는 돈, 권력 등에 대한 욕심 또한 없습니다.<br>
                        주위 사람들과 함께 나누며 사는 그런 삶이 당신에게 행복을 가져다 줍니다.<br>
                        그래서 당신의 주위 사람들과 걱정없이 오래 오래 행복하게 살고 싶은게
                        당신의 목표라면 목표!<br>
                        하지만 욕심없는 당신에게도 걱정거리가 하나 있습니다.<br>
                        그것은 바로 '건강'<br>
                        건강하지 못하면 결국엔 아무 것도 할 수 없을 거란 생각에<br>
                        건강에 대해서는 예민할 정도로 신경을 많이 쓰는 것 같습니다.<br>
                        너무 걱정만 하지 말고
                        좋은 거 많이 많이 먹고, 열심히 운동도 하며 지내보세요.<br>
                        당신의 행복한 삶이 오래도록 지속될 수 있도록 말이죠.<br></div>
                    <div id="loveq5a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">당신은 인생에 있어 "돈"을 가장 중요하게 생각합니다.<br>
                        당신은 아주 욕심이 많은 사람입니다.<br>
                        그 중에서도 특히 재물에 대한 욕심이 무척강합니다.<br>
                        돈이면 이 세상에서 못할게 없다고 생각하시죠?<br>
                        하고 싶은것도 많고 갖고 싶은 것도 많은 당신에겐<br>
                        그래서 돈에 대한 욕구가 강할 수 밖에 없는 것 같습니다.<br>
                        가끔은 자기도 모르게 너무 계산적인 자신을 발견하게 되진 않나요?<br>
                        세상엔 공짜가 없듯이 무엇인가를 얻는 대신, 반대로 분명 잃는 무언가도 있기 마련입니다.<br>
                        그래서 너무 돈을 따라가면 자기도 모르는 사이에 많은 걸 잃을 수도 있답니다.<br>
                        이 세상엔 돈으로도 살수 없는 값진 것들도 많이 있다는 거 잊지 마세요<br></div>
                    <div id="loveNoCheck5">항목을선택해주세요</div>
                </div>
            </center>
        </div>
    </div>

            <!--Our Work Section-->

        </section>
        <!--End off About section -->


        <!--Company section-->

         <script>
        $("#FunTestQ2").hide();
        $("#FunTestQ3").hide();
        $("#FunTestQ4").hide();
        $("#FunTestQ5").hide();
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
                $("#nextBtn1").show();
                $("#loveNoCheck1").hide();
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
                $("#nextBtn1").show();
                $("#lovea3Div").show();
                $("#loveNoCheck1").hide();
            } else if (loveq1 == "lovea4") {
                $("#lovea1Div").hide();
                $("#lovea2Div").hide();
                $("#lovea3Div").hide();
                $("#nextBtn1").show();
                $("#lovea4Div").show();
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
                $("#nextBtn3").show();
                $("#loveq3a2Div").show();
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
                $("#loveq3a4Div").show();
                $("#nextBtn3").show();
                $("#loveNoCheck3").hide();
            } else if (loveq2 == false) {
                $("#loveNoCheck3").show();
            }

        })

        // 4-------------------------------------------------------------------------------------
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
                $("#loveq4a2Div").show();
                $("#nextBtn4").show();
                $("#loveNoCheck4").hide();
            } else if (loveq1 == "lovea3") {
                $("#loveq4a1Div").hide();
                $("#loveq4a2Div").hide();
                $("#loveq4a4Div").hide();
                $("#nextBtn4").show();
                $("#loveq4a3Div").show();
                $("#loveNoCheck4").hide();
            } else if (loveq1 == "lovea4") {
                $("#loveq4a1Div").hide();
                $("#loveq4a2Div").hide();
                $("#loveq4a3Div").hide();
                $("#nextBtn4").show();
                $("#loveq4a4Div").show();
                $("#loveNoCheck4").hide();
            } else if (loveq2 == false) {
                $("#loveNoCheck4").show();
            }

        })
        // 5-------------------------------------------------------------------------------------      
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
            $("#FunTestQ1").hide();
            $("#FunTestQ2").show();
            $("#nextBtn1").hide();
        })
        $("#nextBtn2").click(function() {
            $("#FunTestQ1").hide();
            $("#FunTestQ2").hide();
            $("#FunTestQ3").show();
            $("#nextBtn2").hide();
        })
        $("#nextBtn3").click(function() {
            $("#FunTestQ1").hide();
            $("#FunTestQ2").hide();
            $("#FunTestQ3").hide();
            $("#FunTestQ4").show();
            $("#nextBtn3").hide();
        })
        $("#nextBtn4").click(function() {
            $("#FunTestQ1").hide();
            $("#FunTestQ2").hide();
            $("#FunTestQ3").hide();
            $("#FunTestQ4").hide();
            $("#FunTestQ5").show();
            $("#nextBtn4").hide();
        })

        $("[name=loveq1]").hover(function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #38ADC1; border-radius:50%;")

        }, function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;")

        });

        $("[name=loveq2]").hover(function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #38ADC1; border-radius:50%;")

        }, function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;")

        });

        $("[name=loveq3]").hover(function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #38ADC1; border-radius:50%;")

        }, function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;")

        });

        $("[name=loveq4]").hover(function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #38ADC1; border-radius:50%;")

        }, function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;")

        });

        $("[name=loveq5]").hover(function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #38ADC1; border-radius:50%;")

        }, function() {

            $(this).attr("style", "width:25%; height:100%; border:1px solid white; float:left; background-color: #5CD1E5; border-radius:50%;")

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