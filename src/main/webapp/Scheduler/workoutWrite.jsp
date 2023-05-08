<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" >
<link rel="stylesheet" href="body/css/main.css">

<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
#writediv{
font-family: 'TheJamsil5Bold';
}

#writediv h1 {
font-size:40px;
margin-top : 130px;
margin-bottom: 20px;
}
#date {
font-size: 30px;

}

#style{
font-size: 30px;
}


#writedheader th {
font-size:30px;
margin-bottom: 200px;

}

#writediv input{
font-size:25px;
margin-top:10px;
margin-bottom:10px;
margin-left:15px;
border-radius:5px;
text-align:center;

}

#writediv select{
font-size:25px;
margin-top:2px;
margin-left:15px;
border-radius:5px;
text-align:center;
}

#contents td input{
width:70px;

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

#mypage1-button:hover {
	background-color: #f2c2f8;
color: #000;
}


</style>
</head>
<body>
<jsp:include page="/body/header.jsp"/>

	<div id="writediv" align="center">
		<h1>루틴 등록</h1>
		<form action="SchedulerServlet" method="post" name="frm">
			<input type="hidden" name="command" value="workout_write">
			<table id="writedheader">
				<tr>
					<th>날짜</th>
					<td><input type="date" id="start_date" name="selectdate" >
						<script src="script/workout.js"></script></td>
				</tr>
				<tr>
					<th id="style">운동 스타일</th><br>
					<td><select id="workout" name="exercise">
							<option value="유산소">유산소</option>
							<option value="웨이트 트레이닝">웨이트 트레이닝</option>
							<option value="맨몸 운동">맨몸 운동</option>
							<option value="필라테스 / 요가">필라테스 / 요가</option>
							<option value="5" selected style="color: gray;">운동 스타일을
								선택해주세요</option>
					</select></td>
				</tr>
				<tr id="time" style="display: none;">
					<th>운동 시간</th>
					<td><select id="times" name="time" onchange="showCustomTimeInput()">
							<option value="30분">30분</option>
							<option value="1시간">1시간</option>
							<option value="1시간 30분">1시간 30분</option>
							<option value="2시간">2시간</option>
							<option value="">직접 입력</option>
					</select></td>
					<td id="custom-time" style="display: none;">
					<input type="text" name="time"></td>
				</tr>
				<tr id="exercise-part" style="display: none;">
					<th>운동 부위</th>
					<td><select id="part" name="part">
					</select></td>
				</tr>
				<tr id="contents" style="display: none;">
					<th>운동 내용</th>
					<td><input type="button" value=추가 onclick="addDirectInput()"></td>
				</tr>
				<tbody id="new-contents"></tbody>
			</table>
			<script src="script/workout.js"></script>
			<br> 
			<input type="submit" class="mypage-button" value="저장" style="font-family: 'TheJamsil5Bold'" onclick="return Check();">
			<input type="reset" class="mypage-button" value="취소" style="font-family: 'TheJamsil5Bold'">
			<input type="button" id="mypage1-button" value="뒤로 가기" style="font-family: 'TheJamsil5Bold'" onclick="location.href='SchedulerServlet?command=workout_list'">
		</form>
	</div>
	<jsp:include page="/body/footer.jsp"/>
</body>
</html>