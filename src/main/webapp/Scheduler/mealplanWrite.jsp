	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
#mealdiv {
font-family: 'TheJamsil5Bold';
margin-top: 130px;
}

#mealdiv table{
font-size: 30px;
}

 #mealdiv h1 {
font-size:40px;
margin-top : 150px;
margin-bottom: 20px;
} 


mealdiv table th{
font-size:30px;
}

input{
font-size:30px;
/* margin-top:15px;
margin-left:15px; */
border-radius:5px;
text-align:center;

}
#table1{
display: flex;
justify-content: center;
/*  */text-align:left;
/*  */magin-right:10px;
}
#table1 .box1 {
width: 330px;
margin-bottom:10px;

}
#table1 .box1:nth-child(2) {
margin: 0 100px;
margin-bottom:50px;
}

#table1 .box1 input {
margin-bottom:10px;
}

#table1 .box1 h2 {
margin-bottom:10px;
font-size: 30px;
}

input[type="file"] {
  display: none; /* 파일 선택 창 숨기기 */
}

label.upload-file {
  display: inline-block;
  padding: 10px 15px;
  background-color: #f0f0f0;
  color: #333;
  border-radius: 5px;
  cursor: pointer;
  margin-bottom: 10px;
  width:338px;
  text-align: center;
  
}

label.upload-file:hover {
  background-color: #f2c2f8;
}

.box1 h2{
	text-align: center;
	padding-left: 35px;
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

#mypage2-button{
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

#mypage2-button:hover {
	background-color: #f2c2f8;
color: #000;
}


</style>
</head>
<body>
<jsp:include page="/body/header.jsp"/>

	<div id="mealdiv" align="center">
		<h1>🥗식단 등록🥦</h1><br><br>
		<form action="SchedulerServlet" method="post" name="frm" enctype="multipart/form-data">
			<table id="table1">
				<th>날짜</th>
				<td><input type="date" id="start_date" name="selectdate">
					<script src="script/workout.js"></script></td>
			</table>
			<br>
			
			<div id="table1">
				<div class="box1">
					<h2>아침</h2>
					<input type="text" name="breakfast" id="breakfast">
					<label class="upload-file">파일 선택
					<input type="file" name="breakfastimage" id="breakfastimage" style="font-family: 'TheJamsil5Bold';"></label>
					<textarea cols="50" rows="10" name="breakfastmemo"></textarea>
				</div>
				<div class="box1">
					<h2>점심</h2>
					<input type="text" name="lunch" id="lunch">
					<label class="upload-file">파일 선택
					<input type="file" name="lunchimage" id="lunchimage" style="font-family: 'TheJamsil5Bold';"></label>
					<textarea cols="50" rows="10" name="lunchmemo"></textarea>
				</div>
				<div class="box1">
					<h2>저녁</h2>
					<input type="text" name="dinner" id="dinner">
					<label class="upload-file">파일 선택
					<input type="file" name="dinnerimage" id="dinnerimage" style="font-family: 'TheJamsil5Bold';"></label>
					<textarea cols="50" rows="10" name="dinnermemo"></textarea>
				</div>
				</div>
			<div>
				<input id="mypage2-button" type="button" value="저장" style="font-family: 'TheJamsil5Bold';" onclick="if(Check2()) go_list();">
				<input type="reset" class="mypage-button" value="다시 작성" style="font-family: 'TheJamsil5Bold';">
				<input type="button" id="mypage1-button"
				value="뒤로 가기" style="font-family: 'TheJamsil5Bold';"
				onclick="location.href='SchedulerServlet?command=workout_list'">
			</div>

			<script>
			function Check2() {
			    
			    // 식단을 등록하지 않은 경우 경고창을 띄우고 저장을 중단합니다.
			    if (breakfast.value === '' && lunch.value === '' && dinner.value === '') {
			        alert('식단을 등록해주세요.');
			        return false;
			    }
			    
			    return true;
			}
			
			function go_list(){
				var theForm = document.frm
				theForm.action = "SchedulerServlet?command=mealplan_write";
				theForm.submit();
			}
			</script>
		</form>
	</div>
	<jsp:include page="/body/footer.jsp"/>
</body>
</html>