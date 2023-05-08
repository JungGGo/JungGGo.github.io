<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="body/css/main.css">
<script>
let message = "${message}";
    </script>
<title>Insert title here</title>

<style>

@font-face {
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

#joindiv h1 {
  color: white;
  font-size: 2em;
  font-weight: bold;
  text-align: center;
  font-family: 'ImcreSoojin';
}

#joindiv table {
  border-collapse: collapse;
  margin: 0 auto;
  max-width: 500px;
  width: 100%;
  font-family: 'ImcreSoojin';
}

#joindiv th {
font-weight:bold;
  padding: 0.5em;
  text-align: center;
  border-radius: 5px;
  font-family: 'ImcreSoojin';
}

#joindiv td {
font-weight:bold;
  padding: 0.5em;
  text-align: center;
  border-radius: 5px;
  font-family: 'ImcreSoojin';  
}

#joindiv th {
font-weight:bold;
  background-color: #eedede;;
  color: black;
  font-family: 'ImcreSoojin';
}

#joindiv input[type="text"] {
  border: 1px solid black;
  font-size: 1em;
  padding: 0.5em;
  width: 100%;
  border-radius: 5px;
  font-family: 'ImcreSoojin';
}

#joindiv input[type="password"] {
  border: 1px solid black;
  font-size: 1em;
  padding: 0.5em;
  width: 100%;
  border-radius: 5px;
  font-family: 'ImcreSoojin';
}
</style>

</head>
<body>

<jsp:include page="/body/header3.jsp"/>

<div id="joindiv" style="margin-top: 100px;">
<h1>회원가입 페이지</h1>
<form action="MainServlet" method="post" name="frm">
<input type="hidden" name="command" value="join">

<table>
<tr><br>
<th>아이디:</th>
<td><input type="text" name="id" value="${id }"><br>
${message }</td>
<td style="text-align:left; padding-left:17px;"><input type="button" value="중복확인" style="width:100px; height:37px; border-radius:5px; font-family: 'ImcreSoojin'; font-size:20px; " class="check-button" onclick="location.href='MainServlet?command=id_check&id=' + document.getElementsByName('id')[0].value;"></td>
</tr>
<tr>
  <td colspan="1"></td>
</tr>
<tr>
<th>비밀번호:</th>
<td><input type="password" name="pass"></td>
</tr>
<tr>
  <td colspan="1"></td>
</tr>
<tr>
<th>비밀번호 확인:</th>
<td><input type="password" name="pass_chk"></td>
</tr>
<tr>
  <td colspan="1"></td>
</tr>
<tr>
<th>이름:</th>
<td><input type="text" name="name"></td>
</tr>
<tr>
  <td colspan="1"></td>
</tr>
<tr>
<th>주소:</th>
<td><input type="text" name="address"></td>
</tr>
<tr>
  <td colspan="1"></td>
</tr>
<tr>
<th>전화번호:</th>
<td><input type="text" name="phone"></td>
</tr>
<tr>
  <td colspan="1"></td>
</tr>
<tr>
<td><input type="submit" value="회원가입" class="mypage-button" style="font-family: 'ImcreSoojin';" onclick="return joinCheck()"></td>
<td><input type="reset" value="다시 작성" class="mypage-button" style="font-family: 'ImcreSoojin';"></td>
<td><input type="button" value="뒤로" class="mypage-button" style="font-family: 'ImcreSoojin';" onclick="location.href='MainServlet?command=main'"></td>
</tr>
</table>
<br>
</form>
</div>
<jsp:include page="/body/footer.jsp"/>
<script type="text/javascript" src="script/dowhile.js"></script>

</body>
</html>