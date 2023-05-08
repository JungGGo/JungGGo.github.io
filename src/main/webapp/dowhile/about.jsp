<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="body/css/main.css">

<title>Insert title here</title>
<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
body {
	background-color: rgb(12, 12, 12);
	color: #fff;
	
}

.main_div {
	display: grid;
	grid-template-columns: 50% 50%;
	width: 80%;
	height: 80%;
	margin: 0 auto;
	font-family: 'TheJamsil5Bold';
}

.left_div {
	padding: 50px;
}

.right_div {
	padding: 50px;
}
#abouth1 h1 {
font-family: 'TheJamsil5Bold';
}

hr {
	border: none;
	height: 2px;
	background-color: yellow; /* 변경할 색상 지정 */
}

.left_div p {
	line-height: 1.5;
	font-size: 25px;
	font-family: 'TheJamsil5Bold';
	
}

.right_div li {
	line-height: 1.5;
	font-size: 25px;
	font-family: 'TheJamsil5Bold';
}
</style>
</head>
<body>
	<jsp:include page="/body/header.jsp" />
	<br>
	<div id="abouth1">
		<h1 style="text-align: center;">Do{🔥}while(reach your goal) 소개</h1>
	</div>
	<div class="main_div">
		<div class="left_div">
			<h2>소개글</h2>
			<br>
			<hr>
			<p>
				<br> 이 프로젝트의 시작한 목적은 다이어트였다.<br> 우리 팀원들을 포함한 우리 모두의 숙제인
				다이어트.<br> <br> 살 빼야한다는 말을 입에 달고 살지만<br> 현실은 매일 이른
				아침부터 저녁 늦게까지 같은 자리에 앉아서<br> 허리가 굽고 거북목이 되도록 공부해야 하는 처지.<br>
				<br> 벌써 4월 중순을 지난 지금 다가올 여름을 대비해야 할 우리,<br> 더 이상 자신의 몸을
				이렇게 방치할 수 만은 없었다...!<br> <br> 그래서 기획한 Do{🔥}while(reach your
				goal)<br> 이 프로젝트는 제목 그대로 목표에 달성할 때 까지 계속 정진하라는 의미를 담고있다.
			</p>
		</div>
		<div class="right_div">
			<h2>기능 소개</h2>
			<br>
			<hr>
			<p><br>
			<li><b>1. 운동 스케줄링 / 식단 관리</b><br> 날짜를 선택하여 운동 루틴을 추가하면 실제로
				수행했는지 체크할 수 있고, 식단의 이미지를 업로드하고 그에 대한 설명을 추가할 수 있다.<br></li>
			<br>
			<li><b>2. 랜덤 운동 추천</b><br> 웨이트 트레이닝을 처음 시도하는 사람이나, 초보 운동인에게
				부위 별로 랜덤 운동 종목을 제공한다. 운동의 이름과 이미지로 자극 부위와 수행 방법을 안내해준다.<br></li>
			<br>
			<li><b>3. 신체 변화 기록</b><br> 마이페이지에 들어가면 신체 정보를 등록하는 기능이 있는데,<br>
				등록된 데이터를 바탕으로 신체 변화 그래프를 제공한다.<br></li> <br>
			<li><b>4. 쇼핑몰</b><br> 쇼핑몰에서는 다양한 운동 보조제와 다이어트 간식, 운동복 등을
				구매할 수 있다. 구매한 상품은 장바구니에서 주문 수정 및 조회를 할 수 있다.
				</p></li>
		</div>
	</div>
	<jsp:include page="/body/footer.jsp" />
</body>
</html>