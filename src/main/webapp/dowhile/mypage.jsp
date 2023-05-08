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
	background-image: url("body/img/mypage.jpg"); 
	background-repeat: no-repeat;
	background-size: cover; /* 이미지를 화면에 꽉 채우도록 설정 */
	overflow: hidden;
	background-position: center center;
}
.mychange-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-55%, -170%);
        z-index: 1;
        font-size: 4rem;
        color: white;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
    }
    
#leftdiv{
    font-family: 'TheJamsil5Bold';   
}

#rightdiv{
    font-family: 'TheJamsil5Bold';    
}
#mypage1-button{
  background-color: #eedede; /* 배경색 */
  border: none; /* 테두리 제거 */
  color: black; /* 글자색 */
  padding: 10px 24px; /* 내부 여백 */
  text-align: center; /* 가운데 정렬 */
  text-decoration: none; /* 밑줄 제거 */
  display: inline-block;
  font-size: 20px; /* 글자크기 */
  border-radius: 5px; /* 모서리 둥글게 */
  cursor: pointer; /* 마우스 커서 모양 변경 */
  font-weight:bold;
  width: 200px;
}

#mypage1-button:hover{
background-color: #000099;
color: white;
}

</style>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
	<jsp:include page="/body/header.jsp" />

	<form action="MainServlet" method="post" name="frm">
		<input type="hidden" name="command" value="user_spec">

		<div id="leftdiv" style="float: left; width: 10%; padding-top: 137px;">
			<table id="lefttd">

				<input type="submit" value="신체 정보 입력" id="mypage1-button" style="font-family: 'TheJamsil5Bold';">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<input type="button" value="회원 정보 수정 " class="mypage-button" style="font-family: 'TheJamsil5Bold';"
					onclick="location.href='MainServlet?command=user_change' ">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<input type="button" value="장바구니" class="mypage-button" style="font-family: 'TheJamsil5Bold';"
					onclick="location.href='DowhileServlet?command=cart_list&id=${id}'">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

			</table>
		</div>
		
		<div class="mychange-text">
            <b>Do{🔥}while</b>
             
        </div>


		<div id="rightdiv"
			style="float: right; width: 30%; margin-right: 35%; margin-top: 20%; padding-left:2px; padding-right:2px; padding-bottom:2px; padding-top:2px; display: flex; justify-content: center; align-items: center;">

			<table id="righttd" text-align="center"
				style="width: 100%; padding-left: 10px; padding-bottom: 10px; padding-top: 10px">

				<tr>
					<td>환영합니다. ${id}님</td>
				</tr>
				<br>
				<tr>
					<td>${id}님의 신체입력 정보입니다.</td>
				</tr>
				<br>

				<%
        request.setAttribute("user_spec", true);
        %>
				<c:if test="${user_spec}">
					<tr>
						<td>등록 날짜 :</td>
						<td>${physical.physicaldate}</td>
					</tr>
					<tr>
						<td>몸무게 :</td>
						<td>${physical.weight}kg</td>
					</tr>
					<tr>
						<td>키 :</td>
						<td>${physical.height}cm</td>
					</tr>
					<tr>
						<td>체지방률 :</td>
						<td>${physical.fat}%</td>
					</tr>
					<tr>
						<td>골격근량 :</td>
						<td>${physical.muscle}kg</td>
					</tr>
				</c:if>
			</table>

		</div>
	</form>

	<jsp:include page="/body/footer.jsp" />
</body>
</html>