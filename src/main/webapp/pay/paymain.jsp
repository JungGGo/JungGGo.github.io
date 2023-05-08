<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/body/header.jsp" />
     <link rel="stylesheet" href="../css/cart.css">
     <link rel="stylesheet" href="body/css/main.css">
<br>


<!--  
<body>
<form action="결제 처리 페이지 URL" method="POST">

<div style="display: flex; flex-direction: column; align-items: center;">
  <form>
    <label>결제 수단:</label>
    <select name="payment-method">
      <option value="credit-card">신용카드</option>
      <option value="bank-transfer">계좌이체</option>
      <option value="phone-bill">휴대폰 결제</option>
    </select>
    <label>결제 금액:</label>
    <input type="text" name="payment-amount">
    <input type="submit" value="결제하기">
  </form>
  <br>
  <br>
  <br>
  <form action="결제 요청 URL" method="POST" style="display: flex; flex-direction: column; align-items: center;">
    <label for="card-number">카드 번호:</label>
    <input type="text" id="card-number" name="card-number" required>
    <label for="card-expiration">만료일:</label>
    <input type="text" id="card-expiration" name="card-expiration" required>
    <label for="card-cvc">CVC:</label>
    <input type="text" id="card-cvc" name="card-cvc" required>
    <label for="card-holder-name">카드 소지자 이름:</label>
    <input type="text" id="card-holder-name" name="card-holder-name" required>
    <label for="amount">결제 금액:</label>
    <input type="text" id="amount" name="amount" required>
    <button type="submit">결제하기</button>
  </form>
  <br>
  <br>
  <br>
  <form action="결제 요청 URL" method="POST" style="display: flex; flex-direction: column; align-items: center;">
    <label for="name">입금자명:</label>
    <input type="text" id="name" name="name" required>
    <label for="account-number">입금 계좌번호:</label>
    <input type="text" id="account-number" name="account-number" required>
    <label for="amount">입금 금액:</label>
    <input type="text" id="amount" name="amount" required>
    <button type="submit">결제하기</button>
  </form>
  <br>
  <br>
  <br>
  <div style="display: flex; justify-content: center;">
    <button id="payment-button">핸드폰 결제하기</button>
  </div>
</div>
-->
<!-- 일단 이곳은 잠시 보류 하겠음요 ========================-->
<!-- 결제창 아래에 장바구니 페이지를 연결하는 것은??좋오타=========-->

<!-- PC결제창 호출함수 예시 -->
<html> 
<head> 
 <meta http-equiv="Content-Type" content="text/html; charset=euc-kr"/> 
 <script type="text/javascript" src="https://testpay.kcp.co.kr/plugin/payplus_web.jsp"></script> 
<script type="text/javascript">   
 /* 표준웹 실행 */
function jsf__pay( form ){
	try{KCP_Pay_Execute( form );
	}catch(e){/* IE 에서 결제 정상종료시 throw로 스크립트 종료 */}
	}</script>
	</head>
	 
	<body onload="jsf__pay( document.order_info )">  
	
 <form name="order_info">    
 <input type="hidden" name="ordr_idxx" value="주문번호"/>     
<input type="hidden" name="good_name" value="상품이름"/>  

 <input type="hidden" name="good_mny" value="105555"/> 
<!-- 1004에 total금액을 가져와야함 -->    
 <input type="hidden" name="pay_method" value="100000000000"/> 
<!-- 결제수단(신용카드) --> 
 <input type="hidden" name="site_cd" value="T0000"/>  
<input type="hidden" name="site_key" value="3grptw1.zW0GSo4PQdaGvsF__"/>   
  </form> 

</body> 
</html>


<!-- 푸터 왜이래?시버ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ -->
<%@ include file="/footer.jsp"%>