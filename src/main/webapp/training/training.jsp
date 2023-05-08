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
	background-image: url("body/img/training.jpg"); 
	background-repeat: no-repeat;
	background-size: cover; /* 이미지를 화면에 꽉 채우도록 설정 */
	overflow: hidden;
}

#1div div{
font-family: 'TheJamsil5Bold';
}

.exercise-container {
	display: flex;
	flex-wrap: nowrap;
	justify-content: space-between;
font-family: 'TheJamsil5Bold';
}

.exercise-item {
	margin: 0 10px;
	text-align: center;
}

.exercise-item img {
  border-radius: 10px;
}

select {
  font-size: 20px; /* 원하는 글자 크기 설정 */
  font-weight: bold;
  font-family: 'TheJamsil5Bold';
  border-radius: 10px;
}

</style>
</head>
<body>
	<jsp:include page="/body/header.jsp" />
	<form action="MainServlet" method="post">
		<input type="hidden" name="command" value="exercise_recommend">
		<div id="1div" align="center" style="margin-top: 30px; font-family: 'TheJamsil5Bold';">
		<table>
		<font size="40px;"><b>🏃‍♀️오늘의 운동🏃‍♂️</b></font>
			<tr>
				<td><select name="part" style="width:100px;height: 50px;">
						<option value="가슴" ${param.part == "가슴" ? "selected" : ""}>가슴</option>
						<option value="등" ${param.part == "등" ? "selected" : ""}>등</option>
						<option value="하체" ${param.part == "하체" ? "selected" : ""}>하체</option>
						<option value="어깨" ${param.part == "어깨" ? "selected" : ""}>어깨</option>
						<option value="팔" ${param.part == "팔" ? "selected" : ""}>팔</option>
				</select></td>
				<td><input type="submit" value="운동 추천" style="width:100px;height: 50px; font-weight: bold; font-size: 20px; border-radius: 10px; "></td><br><br>
			</tr>
		</table>
		</div>
		<br><br><br><br><br><br><br><br><br>
		<div class="exercise-container">
			<c:forEach var="exercise" items="${rlist}">
				<div class="exercise-item" style="font-weight: bold; font-size: 25px; ">
					<p>${exercise.kind}</p><br>
					<img src="exImages/${exercise.posture}" width="250" height="250">
				</div>
			</c:forEach>
		</div>
	</form>
<jsp:include page="/body/footer.jsp" />
</body>
</html>




