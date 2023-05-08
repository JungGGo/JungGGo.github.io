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

}
table {
  border-radius: 10px;
  overflow: hidden; /* 모서리 부분이 내용을 가리는 것을 방지하기 위해 overflow 속성을 적용합니다. */
}

#changediv{
font-family: 'TheJamsil5Bold';
}

.mychange-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-55%, -170%);
        z-index: 1;
        font-size: 4rem;
        color: rgb(12,12,12);
        text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
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
</head>
<body>
	<jsp:include page="/body/header.jsp" />


	<form name="frm" method="post" action="MainServlet">
		<input type="hidden" name="command" value="update_mypageuser">
		
		<div class="mychange-text">
            <b>Do{🔥}while</b>
             
        </div>
		
		<div id="changediv" style="display: flex; justify-content: center; float: left; width: 100%; padding-top: 395px;">
			
			
			<table style="background-color: rgb(12,12,12); color:white; padding-left: 10px; padding-bottom: 10px; padding-top: 10px; padding-right: 10px;">
				<tr>
					<th>아이디:</th>
					<td><input type="text" name="id" value="${id}" readonly></td>
				</tr>
				<tr>
					<th>비밀번호:</th>
					<td><input type="text" name="pass" value="${member.pass}"></td>
				</tr>
				<tr>
					<th>이름:</th>
					<td><input type="text" name="name" value="${member.name}"></td>
				</tr>
				<tr>
					<th>주소:</th>
					<td><input type="text" name	="address"
						value="${member.address}"></td>
				</tr>
				<tr>
					<th>전화번호:</th>
					<td><input type="text" name="phone" value="${member.phone}"></td>
				</tr>
				<tr>
					<th>가입일:</th>
					<td>${member.joindate}</td>
				</tr>
				<tr>
					<td><input type="submit" value="수정" class="mypage-button" style="font-family: 'TheJamsil5Bold';"></td>
					<td><input type="button" value="탈퇴" id="mypage1-button" style="font-family: 'TheJamsil5Bold';"
						onclick="if(confirm('탈퇴하시겠습니까?'))location.href='MainServlet?command=delete_mypageuser&id=${member.id}'"></td>
					<td><input type="button" value="뒤로" id="mypage1-button" style="font-family: 'TheJamsil5Bold';"
						onclick="location.href='MainServlet?command=mypage'"></td>
				</tr>
			</table>
			<br>
		</div>
	</form>
	<br>

	<jsp:include page="/body/footer.jsp" />
</body>
</html>