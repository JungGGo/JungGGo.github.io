<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
#viewdiv {
font-family: 'TheJamsil5Bold';
}

body{
background-color: rgb(12,12,12);
color: white;
}
</style>
</head>
<body>
<div id="viewdiv" align="center">
<h1>회원 정보 페이지</h1>
<form action="MainServlet" method="post" name="frm">
<input type="hidden" name="command" value="update_user">
<table>
<tr>
<th>아이디:</th>
<td><input type="text" name="id" value="${member.id}"/></td>
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
<td><input type="text" name="address" value="${member.address}"></td>
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
<th>권한:</th>
<td>${member.lev}</td>
</tr>
</table>
<br>
<input type="submit" class="mypage-button" value="수정" onclick="return updateCheck()">

</form>

</div>
</body>
</html>