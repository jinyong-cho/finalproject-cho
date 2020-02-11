<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html class="no-js" lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
 <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">
  <head>
        <meta charset="utf-8">
        <title>Pouseidon - Free HTML5 Model Agency Bootstrap Template</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Fonts link-->
        <link rel="stylesheet" href="/resources/assets/css/personalityTest.css">
        <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
   <style>
   
   div[name=loveDiv]{
   font-family: 'Nanum Gothic Coding', monospace;
   font-size : 22px;
   
   
   }
   
   </style>

    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">

<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

            <!--Home Sections-->

            <section id="hello" class="home bg-mega" style = "background-image : url('/resources/assets/images/background/3-1.png');">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="main_home text-center">
                            <div class="home_text">
                                <h1 class="text-white text-uppercase">PersonalityTest</h1>
                                <div class="separator"></div>
                            </div>
                        </div>
                    </div><!--End off row-->
                </div><!--End off container -->
            </section> <!--End off Home Sections-->


          <!--content자리--> 
         <div class="container" style="font-family: 'Poor Story', cursive;">
      <div id="selectTest" style="float:left;width:300px;margin : 0;">
      <div style="width:100%;height:16%;"></div>  
    
        <div style="width:100%;height:7%; color:gray;"><a href="/loveTestMain.do" style="width:100%;height:100%; color:gray;font-family: 'Quicksand', sans-serif;">LoveTestMain</a></div>
        <div style="width:100%;height:7%; color:gray;"><a href="/loveTest.do" style="width:100%;height:100%; color:gray;font-family: 'Quicksand', sans-serif;">Love Test</a></div>
        <div style="width:100%;height:7%; color:gray;"><a href="/funTest.do" style="width:100%;height:100%; color:gray;font-family: 'Quicksand', sans-serif;">FunTest</a></div>
   
      
      </div>    
        <div id="loveTestWrap"  style="width:1000px; margin-left:20%;">    
        <center><div style="font-family: 'Quicksand', sans-serif; font-size: 80px;">Personality Test</div>
        <hr>
        
        <div id="PTestQ1" style="width:920px; margin-left:8%; background-color : #FAEBFF" >
        <h3 style="font-family: 'Poor Story', cursive;">Q.1 당신은 회사의 친한 동료들과 작은 친목모임을 하고 있습니다.<br> 
            그런데 모임에서 여행을 갔다오자는 의견이 나왔고,<br>  
            당신에게 갈 곳을 정해보라고 합니다.<br>  
            당신은 동료들과 함께 어느 곳을 가고 싶습니까?<br> 

          </h3>
          
             <div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq1" ><br><br><br>워터파크가 있는 콘도<input type="hidden" value="lovea1"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq1" ><br><br><br>자연을 느낄 수 있는 펜션<input type="hidden" value="lovea2"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq1" ><br><br><br>해외여행<input type="hidden" value="lovea3"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq1" ><br><br><br>당일 치기로 놀이동산<input type="hidden" value="lovea4"></div>
        </div>
         <br>
 
          <div id="lovea1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">당신은 소극적인 사람! <br> 
            소극적인 성격의 당신은 직장에서 친하게 지내는 동료가 없습니다T.T<br>   하지만 그런 당신에게도 신뢰하는 동료는 있습니다.<br>  그는 어떠한 일도 척척 잘 해내고, <br> 주위사람들과의 인간관계 또한 좋은 편입니다. <br> 그런 동료에게 당신 또한 깊은 신뢰감을 가지고 있습니다. <br> 그래서 가끔 일 적인 부분이나,<br>  개인적인 일 등에 대해 기대거나 도움을 요청하곤 합니다.<br> </div>
          <div id="lovea2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">사교적인 성격의 당신은 직장에서도 동료들과 편하게 잘 지냅니다. <br> 당신에게 있어 직장동료들은 제2의 가족.<br>  그래서 동료들과도 늘 즐겁게 지내려 노력합니다. <br> 그래서일까 후배들은 당신을 잘 따르고 선배들에게는 예쁨 받는 후배입니다. <br> 직장동료들 역시 당신을 편하게 생각하고 당신과의 직장생활을 즐거워 하는 것 같습니다.<br> 
        </div>
          <div id="lovea3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">실리주의적 성격의 당신은 겉으로는 동료들과 친한 듯 보입니다만..<br>  직장동료들에 대한 진심은 없습니다.<br>  직장에서 자신이 조금 손해를 본다거나 귀찮은 일에 얽히는 건 딱 질색입니다. <br> 상대방을 위해서라기 보다는 그저 복잡한 일을 만들고 싶지 않아,<br>  적당히 상대방에게 맞춰주며 실리를 추구합니다. <br> 당신에겐 직장동료는 그저 같은 직장 안에서 같이 일하는 사람일 뿐, <br> 회사를 나가면 더 이상 볼일 없는 상관없는 사람입니다.<br> 
        </div>
          <div id="lovea4Div"name="loveDiv" style="font-family: 'Poor Story', cursive;">원만한 인간관계를 잘 만들지 못하는 당신,<br>  특히 단체 생활에 잘 적응하지 못하는 타입입니다. <br> 그런 당신의 모습에 평소 불만을 가지는 동료들도 종종 있는 것 같습니다.<br>  그래서 일까요 직장동료들은 당신을 상당히 불편하게 생각합니다. <br> 당신 역시 그러한 동료들과의 일이 즐거울리 없겠죠. <br> 일에 대한 의욕도 없고, 그래서 실수도 많은 편입니다. <br> 그러면 또 그런 당신에 대한 동료들의 불만이 생겨나는 악순환이 반복됩니다. <br> 당신에게는 이러한 직장생활은 엄청난 스트레스!!<br> 
        </div>
          <button type="button" class="btn" id="nextBtn1" style = " background-color : white; float: right;">
          <i class="fas fa-arrow-right fa-4x"></i></button>
          </div>
      


      <div id="PTestQ2"style="width:920px; margin-left:8%; background-color : #FAEBFF">
            <h3 style="font-family: 'Poor Story', cursive;">Q.2 요즘 왠지 연애 운이 없는 듯해 어느 날 점을 봤습니다.<br>  
                점쟁이가 장미꽃을 집에 장식해 두면 좋아질거라<br> 
                하여 집 거실에 장미꽃 세 송이를 장식해 두었습니다.<br> 
                하지만, 한 달이 지나도 아무런 변화가 없는 것 같습니다.<br> 
                당신은 장식해두었던 장미꽃을 어떻게 하시겠습니까?<br> 
              </h3>
              
                      <center><div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq2" ><br><br><br>장미꽃의 수를 늘려본다<input type="hidden" value="lovea1"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq2" ><br><br><br>버린다<input type="hidden" value="lovea2"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq2" ><br><br><br>장미꽃의 두는 장소를 바꿔본다<input type="hidden" value="lovea3"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq2" ><br><br><br>더 예쁘고 화려한 장미로 바꿔 장식한다<input type="hidden" value="lovea4"></div>
        </div></center>
         <br>
 
              <div id="loveq2a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">승부욕을 자극하는 상황! 사랑의 붗꽃이 피어 오른다.<br> 
                당신은 평소 자신에게 무한한 자신감을 가지고 있는 사람입니다. <br> 그래서인지 당신에게 무관심한 사람이나 호의적이지 않은 사람을 만나게 되면 <br> '어?? 뭐지??' '젠 뭔데 나 한데 이러지??'<br>  라는 생각으로 시작해서 '어디 날 안좋아 할 수 있는지 보자!'라는 마음으로 <br> 상대방이 자신을 좋아하게 만들려고 열심히 노력하는 타입입니다.<br> 
                또한 당신에게 고백을 해도 받아 주지 않았던 상대에게 호감을 표시하는 누군가가 나타나는 경우,<br>  괜한 라이벌의식이 발동해 그 동안 무관심했던 상대에 대한 관심이 생기고 <br> 동시에 상대방을 빼앗기지 않으려는 모습을 보입니다.<br> 
                </div>
              <div id="loveq2a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">이상형에 가까운 사람을 만나게 된 상황! 사랑의 불꽃이 피어 오른다.<br> 
                당신은 이성을 판단하는데 조금은 까다로워 평소 주위에서 눈이 높다는 이야기를 자주 듣습니다. <br> 그래서 일까요? 흔하지 않은 당신의 이상형에 가까운 사람을 발견하게 되면 당신의 심장을 막 뛰기 시작합니다. <br> 그래서 그 사람의 마음을 사로잡기 위해 온갖 노력을 다하게 됩니다.<br> 
                하지만 열심히 노력해 상대방에 마음을 붙잡고, <br> 상대 또한 당신을 좋아하기 시작하면 당신의 마음은 조금씩 시들어 갑니다. <br> 잡은 물고기에게는 더 이상 먹이를 주지 않는 다는 말처럼 말이죠.<br>  그런데 이러한 당신의 행동으로 상대방이 떠나게 되면 당신은 아주 크게 후회를 하게 됩니다.<br>  이상형을 만나는 것은 쉬운일이 아닌만큼, <br> 혹여 당신의 이상형에 가까운 사람을 만난다면 초심을 잃지 말고<br>  늘 변하지 않는 모습을 보여주어 오래 오래 행복하시길 바랍니다. <br>    
                </div>
              <div id="loveq2a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">친절하게 대해주는 이성을 만나게 된 상황! 사랑의 불꽃이 피어 오른다.<br> 
                당신은 약간의 도끼병이 있는 스타일입니다.<br>  그래서 남의 작은 호의에도 자주 착각을 하곤 합니다.<br>  당신에게 웃으며 친절하게 대해주는 상대가 나타나면 상대방이 <br> 나에게 호감이 있어서 그런 것이란 생각을 하게 되고 그런 상대에게 사랑을 느끼게 됩니다.<br> 
                하지만 주의하세요. <br> 사람들의 친절이 당신에 대한 호감이 아닌  사심없는 친절일 수도 있습니다.<br>  착각하여 상대방이 자신을 좋아한다는 생각에 오히려 상대방에게 고백하게 되면<br>  정말 난처한 상황에 처할 수도 있습니다. <br> 그러니 만약 상대방이 자신에게 친절하다고 느껴진다면 고백하기 전 <br> 상대방의 마음을 다시 한번 잘 확인해 보시길 바랍니다. <br>   </div>
              <div id="loveq2a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">시도때도 없이 일상생활 속에서 사랑의 불꽃이 피어 오른다.<br> 
                당신은 특정한 누군가를 향한 일반적인 사랑이 아닌, <br> 드라마를 보다 그 상황에 빠져 TV속 연예인에게 사랑에 빠지거나,<br>  우연히 신문 속 오늘에 사랑운이 대박이란 말에 뜬금없이 <br> 주위에 있는 사람에게 운명적 사랑을 느끼거나 하는.. 조금은 현실감이 떨어지는 상황 속에서 사랑의 불꽃이 피어 오릅니다.<br> 
                당신의 이러한 사랑은 언제 그랬냐는 듯  <br> 또 금방 식어 다른 곳을 향하는 조금은 장난스러운 짝사랑입니다.<br> 
                </div>
              <div id="loveNoCheck2">항목을선택해주세요</div>
               <button type="button" id="nextBtn2" class="btn" style = " background-color : white; float: right;">
               <i class="fas fa-arrow-right fa-4x"></i></button></button>
              </div>
              
              <div id="PTestQ3" style="width:920px; margin-left:8%; background-color : #FAEBFF">
              <h3 style="font-family: 'Poor Story', cursive;">Q.3 당신은 레이싱걸 입니다. <br> 
                  오늘은 새로운 의상을 입고 일을 했는데.. 기분이 썩 좋지 않습니다.<br>  
                  오늘 어떤한 일이 당신의 기분을 상하게 만들었던 걸까요?<br> 

                </h3>
                
         <center><div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq3" ><br><br><br>새로운 의상의 사이즈가 맞지 않아서<input type="hidden" value="lovea1"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq3" ><br><br><br>새로운 의상의 디자인이 마음에 들지 않아서<input type="hidden" value="lovea2"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq3" ><br><br><br>음흉한 손님이 많아서<input type="hidden" value="lovea3"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq3" ><br><br><br>고객의 반응이 별로 없어서<input type="hidden" value="lovea4"></div>
        </div></center>
         <br>
  
                <div id="loveq3a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">작고 사소한 일을 지적을 받으면 화가 난다!<br> 
                    당신은 조금 신경질적인 사람입니다. <br> 그래서 자신이 평소 듣기 싫은 말이나 별거 아니라 생각하는 것에<br>  이러쿵 저러쿵 지적을 받거나 잔소리를 듣게 되면 화를 냅니다. <br> 그래서 순간 버럭하고 상대에게 화를 내지만.. 상대방은 오히려 별것도 아닌 일에<br>  왜 화를 내냐며 당신을 이해할 수 없다는 표정으로 보곤 합니다.  <br>   
                    </div>
                <div id="loveq3a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">수치심을 느끼는 상황에 처하면 화가 난다!!<br> 
                    당신은 프라이드가 높은 사람입니다. <br> 그래서 누군가에게 업신여김을 당해 수치심을 느끼게 되면 화가 납니다.<br>  하지만 똑똑한 당신은 그 자리에서 화를 내봐야 득 될께 없다는 걸 알기에 일단 참고 넘어 갑니다.<br>  그러나 수치심은 머릿속에서 지워지질 않습니다. 언제가 될지는 모르겠지만..<br>  당신은 자신을 업신여긴 그 사람에 대한 복수를 생각하며 화를 삭힙니다.<br> </div>
                <div id="loveq3a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">정직하지 못한 사람을 대할 때면 화가 난다!!
                    당신은 정의감이 강한 사람입니다. 그래서 남을 속이거나 거짓말을 하는 것을 보면 화를 냅니다. 이러한 성격이 나쁜 것은 <br> 아니지만 자신과 관련된 일이 아닐 때도 나서기 때문에 작은 트러블을 <br> 발생시키는 경우가 종종 있어, 주위 사람들은 당신을 오히려 피곤해 하는 경우가 있는 것 갔습니다.<br>  순간 욱해도 자신의 일이 아니라면, 또 그리 심각한 것이 아니라면 주위 사람들을 위해 조금 자제할 필요도 있는 것 같습니다. <br>     </div>
                <div id="loveq3a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">무시를 당한다고 느껴지면 화가 난다!!
                    당신은 약간의 열등감을 가지고 있는 사람입니다.<br>  그래서 상대방에게 차갑게 대해진다고 느끼거나 무시를 당한다고 느껴질 때면 화를 냅니다.<br>  하지만 화를 내면 결국 자신이 열등감을 가지고 있다는 것을 남에게 보여주는 <br> 것밖에 되지 않으니 앞으로는 화가 나더라도 미소로 여유를 보여주는 것은 어떨까요? <br> 앞으로는 열등감을 갖기 보다는 자신이 부족하다 생각하는 것을 채워나가 보세요. <br> 그러면 상대방의 태도 역시 차츰 변화할거라 생각합니다.<br> 
                    </div>
                    <button type="button" class="btn" id="nextBtn3" style = " background-color : white; float: right;">
                    <i class="fas fa-arrow-right fa-4x"></i></button>
                    </button>
         </div>       
                  
                
                
                <div id="PTestQ4" style="width:920px; margin-left:8%; background-color : #FAEBFF">  
                
                <h3 style="font-family: 'Poor Story', cursive;">Q.4당신은 꽃집에서 일을하고 있습니다. <br> 
                    열심히 일하고 꾸준히 저축을 해 어느덧 자신의 가게를 가지려 하고 있습니다. 
                    당신은 어느 곳에 꽃집을 차리고 싶은가요?<br> 
                  </h3>
                  
        <center><div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:20px;">
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq4" ><br><br><br>번화가<input type="hidden" value="lovea1"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq4" ><br><br><br>교외<input type="hidden" value="lovea2"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq4" ><br><br><br>집 앞<input type="hidden" value="lovea3"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq4" ><br><br><br>백화점 등의 쇼핑몰 매장 안<input type="hidden" value="lovea4"></div>
        </div></center>
         <br>
  
                  <div id="loveq4a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">나와 잘 맞는 상대는 나를 잘 높여주는 사람<br> 
                    당신은 당신과 비슷한 가치관을 가진 사람을 만나는 것이 좋습니다.<br>  그래서 당신의 생각을 이해할 수 있고 당신의 행동을 응원해주는 사람이라면 OK!!<br> 
                    또한 칭찬받기를 좋아하는 당신에게 사소한 것들까지 칭찬해주는 사람이라면 excellent <br>    
                    </div>
                  <div id="loveq4a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">나와 잘 맞는 상대는 나를 방목하는 사람<br> 
                    당신은 아주 자유로운 영혼을 가진 소유자 입니다. <br> 집착하고 속박하는 사람은 NO! 그래서 당신에게 쿨하게 대할 수 있는 사람이라면 OK!!<br> 
                    서로가 구속하려 하지 않고 자유롭게 지낼 수만 있다면<br>  그 어떤 커플보다 즐겁고 행복한 연애생활을 할 수 있을 겁니다.<br>    
                    </div>
                  <div id="loveq4a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">나와 잘 맞는 상대는 나를 잘 챙겨주는 사람<br> 
                    당신은 외로움을 많이 타는 성격으로 누군가에게 의지하려는 성향이 강한 사람입니다.<br>  그래서 이해심이 넓고 어떠한 일도 품어줄 수 있는 사람이라면 OK!!<br> 
                    당신 곁에서 늘 당신을 소중히 여기고 잘 챙겨주는 사람이<br>  있다면 당신 또한 상대방에게 그 마음에 대한 충분한 보답을 해 줍니다.
                    </div>
                  <div id="loveq4a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">나와 잘 맞는 상대는 나와 취미가 같은 사람<br> 
                    당신의 일을 하는 시간을 제외하고는 늘 연인과 함께 하고 싶어 합니다.<br>  그래서 쉬는 시간이면 당신과 함께 취미생활을 즐길 수 있는 사람이라면 OK!!<br> 
                    함께 취미 생활을 즐기며 즐거운 시간을 보내다 보면,<br>  어느새 둘의 사랑이 더욱 크고 깊어지는 것을 확인 할 수 있을 겁니다.<br> 
                    </div>
                    <button type="button" class="btn" id="nextBtn4" style = " background-color : white; float: right;">
                   <i class="fas fa-arrow-right fa-4x"></i></button></button>
            </div>
             
         <div id="PTestQ5" style="width:920px; margin-left:8%; background-color : #FAEBFF"> 
                  <h3 style="font-family: 'Poor Story', cursive;">Q.5 친구가 허겁지겁 당신을 찾아와 보물섬을 발견했고 합니다.<br> 
                    그리고는 함께 보물을 찾으러 가자고 제안을 하네요.<br> 
                    결국 당신은 친구의 말을 믿고 함께 보물을 찾으러 보물섬으로 찾아 떠났습니다.<br> 
                    드디어 보물섬에 도착! 보물섬에 도착한 당신과 친구에겐 어떤 결말이 기다리고 있었을까요?<br> 이 테스트는 "당신에게 기회가 왔을때, 그 기회를 살리기 위해 얼마나 노력을 하는가"를<br> 알아보는 성격 심리테스트 입니다. 당신은 찾아온 기회를 얼마나 자신의 것으로 만들 수 있을까요?<br> 
                    
                    </h3>
                    
        <center><div style="width:800px; height:200px; box-sizing: border-box; color:white; font-size:18px;">
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq5" ><br><br><br>보물섬에 도착하자마자 바로 보물을 찾을 수 있었다<input type="hidden" value="lovea1"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq5" ><br><br><br>섬 이곳 저곳을 아무리 뒤져봐도 보물을 찾을 수 없었다<input type="hidden" value="lovea2"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq5" ><br><br><br>보물을 찾긴 했지만, 전혀 가치가 없는 물건들 뿐 이었다<input type="hidden" value="lovea3"></div>
        <div style="width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;" name="loveq5" ><br><br><br>보물을 찾기는 했으나, 여러 장애물들로 인해 결국 가져올 수는 없었다<input type="hidden" value="lovea4"></div>
        </div></center>
         <br>
 
                    <div id="loveq5a1Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">찬스를 살리려는 노력도 30%<br> 
                        당신은 기회가 찾아오면 처음에는 기회를 살리기 위해 열심히 노력합니다.<br> 
                        하지만 시간이 조금만 지나도 금방 귀찮아 하고 쉽게 지쳐버리는 타입입니다.<br> 
                        그래서 결국 찬스를 제대로 살리지 못하는 경우가 많습니다.<br> 
                        기회는 쉽게 찾아오는 것이 아닌 만큼,앞으로 당신에게 기회가 찾아 온다면<br> 
                        이제는 좀더 끈기를 가지고 열심히 노력하는 것이 좋을 듯 보입니다.<br> 
                        </div>
                    <div id="loveq5a2Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">찬스를 살리려는 노력도 5% <br> 당신은 기회가 찾아와도 기회가 온 건지, 그저 운이 좋은 건지..기회를 포착하는 능력이 없습니다.<br> 그래서 당신은 기회가 왔는지도 모른채 그냥 지나치는 경우가 많습니다.<br> 만약 당신에게 라이벌이 있다면,그 라이벌은 당신이 기회인지도 모르고 지나쳤던 일들을 오히려 기회로 만들어 버립니다.<br> 그리고 가장 큰 문제는 당신은 경쟁심이나 성공에 대한 욕구가 크지 않습니다.<br> 그래서 기회라는 것을 알게 된다 하더라도 크게 노력하는 모습을 보이지 않습니다.<br> 당신에게 기회란 있으나 마나한 무용지물인 것 같네요.
                    <br> </div>
                    <div id="loveq5a3Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">찬스를 살리려는 노력도 60%,<br> 당신은 기회가 찾아오면 일단은 찬스를 살리기 위해
                        노력을 하는 동시에 빠르게 계산을 시작합니다.<br> 이번 기회를 통해 내가 얻을 수 있는 것은 무엇이며,반대로 잃을 수 있는 것은 무엇인지를 꼼꼼히 따져 봅니다.<br> 
                        그래서 간혹 생각이 깊어져 우물주물 하다 기회를 날려버리는 경우도 있습니다.<br> 
                        중요한 것은 당신은 기회로 얻을 득 보다는<br> 
                        실패하였을 경우 피해를 보게 되는 실에 대해 더 많이 생각하는 타입인것 같습니다.<br> 
                        그래서 기회라 여겨지면 일단은 기회를 잡으려 노력하지만,<br> 
                        득이 아무리 커도 실패하였을 시 리스크의 정도가 생각보다 크거나,<br> 
                        득보다 실이 크다고 생각되어 진다면 언제라도 중도에 그냥 포기해버리는 타입입니다.<br> 
                        </div>
                    <div id="loveq5a4Div" name="loveDiv" style="font-family: 'Poor Story', cursive;">찬스를 살리려는 노력도 80%<br> 
                        당신은 기회가 찾아오면 그 기회를 살리기 위해 적극적인 자세로 임합니다.<br> 
                        인생에 있어 기회란 자주 오는 것이 아니라 생각하는 당신<br> 
                        자신에게 찾아온 기회를 살리기 위해 열심히 노력하여 기회를 발판 삼아 한걸음 더 전진하려 애를 씁니다.<br> 노력은 했지만 아쉽게 운이 따라주지 않아 기회를 살리지 못하는 경우는 어쩔 수 없겠으나,당신은 자신에게 찾아온 기회는 절대로 놓치지 않는 타입입니다.<br> 
                        </div>
               </div>
             </center>
                </div>
                </div>
      <script>
      
      $("#PTestQ2").hide();
      $("#PTestQ3").hide();
      $("#PTestQ4").hide();
      $("#PTestQ5").hide();
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

        $("[name=loveq1]").click(function(){
            var loveq1 = $(this).children("input").val();

          if(loveq1=="lovea1"){
            $("#lovea2Div").hide();
            $("#lovea3Div").hide();
            $("#lovea4Div").hide();
            $("#lovea1Div").show();
            $("#nextBtn1").show();
            $("#loveNoCheck1").hide();
          }else if(loveq1=="lovea2"){
            $("#lovea1Div").hide();
            $("#lovea3Div").hide();
            $("#lovea4Div").hide();
            $("#nextBtn1").show();
            $("#lovea2Div").show();
            $("#loveNoCheck1").hide();
          }else if(loveq1=="lovea3"){
            $("#lovea1Div").hide();
            $("#lovea2Div").hide();
            $("#lovea4Div").hide();
            $("#nextBtn1").show();
            $("#lovea3Div").show();
            $("#loveNoCheck1").hide();
          }else if(loveq1=="lovea4"){
            $("#lovea1Div").hide();
            $("#lovea2Div").hide();
            $("#lovea3Div").hide();
            $("#nextBtn1").show();
            $("#lovea4Div").show();
            $("#loveNoCheck1").hide();
          }else if(loveq2==false){
            $("#loveNoCheck1").show();
          }

        })
//2 -------------------------------------------------------------------------------------
        $("#loveq2a1Div").hide();
        $("#loveq2a2Div").hide();
        $("#loveq2a3Div").hide();
        $("#loveq2a4Div").hide();
        $("#loveNoCheck2").hide();

        $("[name=loveq2]").click(function(){
            var loveq1 = $(this).children("input").val();
          if(loveq1=="lovea1"){
            $("#loveq2a2Div").hide();
            $("#loveq2a3Div").hide();
            $("#loveq2a4Div").hide();
            $("#loveq2a1Div").show();
            $("#nextBtn2").show();
            $("#loveNoCheck2").hide();
          }else if(loveq1=="lovea2"){
            $("#loveq2a1Div").hide();
            $("#loveq2a3Div").hide();
            $("#loveq2a4Div").hide();
            $("#loveq2a2Div").show();
            $("#nextBtn2").show();
            $("#loveNoCheck2").hide();
          }else if(loveq1=="lovea3"){
            $("#loveq2a1Div").hide();
            $("#loveq2a2Div").hide();
            $("#loveq2a4Div").hide();
            $("#loveq2a3Div").show();
            $("#nextBtn2").show();
            $("#loveNoCheck2").hide();
          }else if(loveq1=="lovea4"){
            $("#loveq2a1Div").hide();
            $("#loveq2a2Div").hide();
            $("#loveq2a3Div").hide();
            $("#loveq2a4Div").show();
            $("#nextBtn2").show();
            $("#loveNoCheck2").hide();
          }else if(loveq2==false){
            $("#loveNoCheck2").show();
          }

        })

 //3 -------------------------------------------------------------------------------------       
        $("#loveq3a1Div").hide();
        $("#loveq3a2Div").hide();
        $("#loveq3a3Div").hide();
        $("#loveq3a4Div").hide();
        $("#loveNoCheck3").hide();

        $("[name=loveq3]").click(function(){
           var loveq1 = $(this).children("input").val(); 
          if(loveq1=="lovea1"){
            $("#loveq3a2Div").hide();
            $("#loveq3a3Div").hide();
            $("#loveq3a4Div").hide();
            $("#loveq3a1Div").show();
            $("#nextBtn3").show();
            $("#loveNoCheck3").hide();
          }else if(loveq1=="lovea2"){
            $("#loveq3a1Div").hide();
            $("#loveq3a3Div").hide();
            $("#loveq3a4Div").hide();
            $("#loveq3a2Div").show();
            $("#nextBtn3").show();
            $("#loveNoCheck3").hide();
          }else if(loveq1=="lovea3"){
            $("#loveq3a1Div").hide();
            $("#loveq3a2Div").hide();
            $("#loveq3a4Div").hide();
            $("#loveq3a3Div").show();
            $("#nextBtn3").show();
            $("#loveNoCheck3").hide();
          }else if(loveq1=="lovea4"){
            $("#loveq3a1Div").hide();
            $("#loveq3a2Div").hide();
            $("#loveq3a3Div").hide();
            $("#loveq3a4Div").show();
            $("#nextBtn3").show();
            $("#loveNoCheck3").hide();
          }else if(loveq2==false){
            $("#loveNoCheck3").show();
          }

        })

// 4-------------------------------------------------------------------------------------
    $("#loveq4a1Div").hide();
        $("#loveq4a2Div").hide();
        $("#loveq4a3Div").hide();
        $("#loveq4a4Div").hide();
        $("#loveNoCheck4").hide();

        $("[name=loveq4]").click(function(){
            var loveq1 = $(this).children("input").val(); 
          if(loveq1=="lovea1"){
            $("#loveq4a2Div").hide();
            $("#loveq4a3Div").hide();
            $("#loveq4a4Div").hide();
            $("#loveq4a1Div").show();
            $("#nextBtn4").show();
            $("#loveNoCheck4").hide();
          }else if(loveq1=="lovea2"){
            $("#loveq4a1Div").hide();
            $("#loveq4a3Div").hide();
            $("#loveq4a4Div").hide();
            $("#loveq4a2Div").show();
            $("#nextBtn4").show();
            $("#loveNoCheck4").hide();
          }else if(loveq1=="lovea3"){
            $("#loveq4a1Div").hide();
            $("#loveq4a2Div").hide();
            $("#loveq4a4Div").hide();
            $("#loveq4a3Div").show();
            $("#nextBtn4").show();
            $("#loveNoCheck4").hide();
          }else if(loveq1=="lovea4"){
            $("#loveq4a1Div").hide();
            $("#loveq4a2Div").hide();
            $("#loveq4a3Div").hide();
            $("#loveq4a4Div").show();
            $("#nextBtn4").show();
            $("#loveNoCheck4").hide();
          }else if(loveq2==false){
            $("#loveNoCheck4").show();
          }

        })    
// 5-------------------------------------------------------------------------------------      
      $("#loveq5a1Div").hide();
        $("#loveq5a2Div").hide();
        $("#loveq5a3Div").hide();
        $("#loveq5a4Div").hide();
        $("#loveNoCheck5").hide();

        $("[name=loveq5]").click(function(){
            var loveq1 = $(this).children("input").val(); 
          if(loveq1=="lovea1"){
            $("#loveq5a2Div").hide();
            $("#loveq5a3Div").hide();
            $("#loveq5a4Div").hide();
            $("#loveq5a1Div").show();
            $("#loveNoCheck5").hide();
          }else if(loveq1=="lovea2"){
            $("#loveq5a1Div").hide();
            $("#loveq5a3Div").hide();
            $("#loveq5a4Div").hide();
            $("#loveq5a2Div").show();
            $("#loveNoCheck5").hide();
          }else if(loveq1=="lovea3"){
            $("#loveq5a1Div").hide();
            $("#loveq5a2Div").hide();
            $("#loveq5a4Div").hide();
            $("#loveq5a3Div").show();
            $("#loveNoCheck5").hide();
          }else if(loveq1=="lovea4"){
            $("#loveq5a1Div").hide();
            $("#loveq5a2Div").hide();
            $("#loveq5a3Div").hide();
            $("#loveq5a4Div").show();
            $("#loveNoCheck5").hide();
          }else if(loveq2==false){
            $("#loveNoCheck5").show();
          }

        })    

      $("#nextBtn1").click(function(){
        $("#PTestQ1").hide();
        $("#PTestQ2").show();
        $("#nextBtn1").hide();
     })
      $("#nextBtn2").click(function(){
        $("#PTestQ1").hide();
        $("#PTestQ2").hide();
        $("#PTestQ3").show();
        $("#nextBtn2").hide();
     })
      $("#nextBtn3").click(function(){
        $("#PTestQ1").hide();
        $("#PTestQ2").hide();
        $("#PTestQ3").hide();
        $("#PTestQ4").show();
        $("#nextBtn3").hide();
     })
      $("#nextBtn4").click(function(){
        $("#PTestQ1").hide();
        $("#PTestQ2").hide();
        $("#PTestQ3").hide();
        $("#PTestQ4").hide();
        $("#PTestQ5").show();
        $("#nextBtn4").hide();
     })
     
     
      $("[name=loveq1]").hover(function(){
       
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #9B7CC9; border-radius:50%;" )
        
     },function(){
        
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;")
        
     });
     
       $("[name=loveq2]").hover(function(){
       
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #9B7CC9; border-radius:50%;" )
        
     },function(){
        
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;")
        
     });
     
       $("[name=loveq3]").hover(function(){
       
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #9B7CC9; border-radius:50%;" )
        
     },function(){
        
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;")
        
     });
     
       $("[name=loveq4]").hover(function(){
       
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #9B7CC9; border-radius:50%;" )
        
     },function(){
        
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;")
        
     });
     
       $("[name=loveq5]").hover(function(){
       
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #9B7CC9; border-radius:50%;" )
        
     },function(){
        
        $(this).attr("style","width:25%; height:100%; border:1px solid white; float:left; background-color: #D6C7ED; border-radius:50%;")
        
     });

      </script>
        <!-- content자리끝 -->

            <!--Company section-->

            <jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>



 

        <!-- JS includes -->

        <script src="/resources/assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="/resources/assets/js/vendor/bootstrap.min.js"></script>

        <script src="/resources/assets/js/isotope.min.js"></script>
        <script src="/resources/assets/js/jquery.magnific-popup.js"></script>
        <script src="/resources/assets/js/jquery.easing.1.3.js"></script>
        <script src="/resources/assets/js/slick.min.js"></script>
        <script src="/resources/assets/js/jquery.collapse.js"></script>
        <script src="/resources/assets/js/bootsnav.js"></script>



        <script src="/resources/assets/js/plugins.js"></script>
        <script src="/resources/assets/js/main.js"></script>

    </body>
</html>