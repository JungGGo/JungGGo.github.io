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
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

.logindiv h1 {
  color: white;
  font-size: 2em;
  font-weight: bold;
  text-align: center;
  font-family: 'ImcreSoojin';
}

.logindiv table {
  border-collapse: collapse;
  margin: 0 auto;
  max-width: 500px;
  width: 100%;
  font-family: 'ImcreSoojin';
}

.logindiv th,
.logindiv td {
  padding: 0.5em;
  text-align: center;
  border-radius: 5px;
  font-family: 'ImcreSoojin';
}

.logindiv th {
  background-color: #eedede;;
  color: black;
  font-family: 'ImcreSoojin';
}

.logindiv input[type="text"],
.logindiv input[type="password"] {
  border: 1px solid black;
  font-size: 1em;
  padding: 0.5em;
  width: 100%;
  border-radius: 5px;
  font-family: 'ImcreSoojin';
}
</style>


<%
String message = (String) request.getAttribute("message");
if (message != null) {
%>
<script>
    alert("<%=message%>");
</script>
<%
}
%>
</head>
<body>
<script type="text/javascript" src="script/dowhile.js"></script>
	<jsp:include page="/body/header3.jsp" />
	
	<div class="logindiv" style="margin-top: 100px;">
	<h1>로그인 페이지</h1>
	<form action="MainServlet" method="post" name="frm">
		<input type="hidden" name="command" value="login">
		<table>
		<br>
			<tr>
				<th><font size="4px"><b>아이디:</b></font></th>
				<td><input type="text" name="id" placeholder="아이디"></td>
			</tr>
			<tr>
  <td colspan="2"></td>
</tr>
			
			<tr>
				<th><font size="4px"><b>비밀번호:</b></font></th>
				<td><input type="password" name="pass" placeholder="비밀번호"></td>
			</tr>
			<tr>
  <td colspan="2"></td>
</tr>
			
			<tr>
				<td><input type="submit" value="로그인" class="mypage-button" onclick="return loginCheck()" style="font-family: 'ImcreSoojin';"></td>
				<td><input type="reset" value="취소" class="mypage-button" style="font-family: 'ImcreSoojin';"></td>
				<td><input type="button" value="뒤로" class="mypage-button" onclick="location.href='MainServlet?command=main'" style="font-family: 'ImcreSoojin';"></td>
		</table>

	</form>
	
	</div>
	<jsp:include page="/body/footer.jsp" />
</body>
</html>