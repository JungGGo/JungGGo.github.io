<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	background-size: cover;
	background-position: center center; /* 배경 이미지를 상단 중앙에 위치시킴 */
	overflow: hidden;
	font-family: 'Noto Sans KR', sans-serif;
}
table {
  border-radius: 10px;
  overflow: hidden; /* 모서리 부분이 내용을 가리는 것을 방지하기 위해 overflow 속성을 적용합니다. */
}
.myspec-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-55%, -170%);
        z-index: 1;
        font-size: 4rem;
        color: black;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
    }
    
#specdiv{
    font-family: 'TheJamsil5Bold';
}

#mypage1-button {
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
<link rel="stylesheet" href="body/css/main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>
<jsp:include page="/body/header.jsp"/>
<script>
  $(document).ready(function() {
    $("#datepicker").datepicker();
  });
</script>

<form action="MainServlet" method="post" name="frm">
<input type="hidden" name="command" value="insert_spec">

<div class="myspec-text">
            <b>Do{🔥}while</b>
            
            
        </div>

<div id="specdiv" style="display: flex; justify-content: center; float: left; width: 100%; padding-top: 417px;">
<table style="background-color: rgb(12,12,12); color:white; padding-left: 10px; padding-bottom: 10px; padding-top: 10px; padding-right: 10px;">
<tr>
<td>날짜</td><td><input type="text" id="datepicker" name="physicaldate" autocomplete="off"></td>
</tr><br><br>
<tr>
<td>몸무게</td><td><input type="text" name="weight" autocomplete="off"> kg</td>
</tr>
<tr>
<td>키</td><td><input type="text" name="height" autocomplete="off"> cm</td>
</tr>
<tr>
<td>체지방률</td><td><input type="text" name="fat" autocomplete="off"> %</td>
</tr>
<tr>
<td>골격근량</td><td><input type="text" name="muscle" autocomplete="off"> kg</td>
</tr>
<tr>
<td><input type="submit" value="입력"  class="mypage-button" style="font-family: 'TheJamsil5Bold';"></td>
<td><input type="reset" value="초기화"  class="mypage-button" style="font-family: 'TheJamsil5Bold';"></td>
<td><input type="button" value="뒤로"  id="mypage1-button" style="font-family: 'TheJamsil5Bold';"
						onclick="location.href='MainServlet?command=mypage'"></td>
						</tr>
</table></div><br><br>

</form>
<jsp:include page="/body/footer.jsp"/>
</body>
</html>