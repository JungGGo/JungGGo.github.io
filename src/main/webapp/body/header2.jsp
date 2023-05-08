<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@600&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
  /* 모든 요소의 padding, margin을 0으로 설정 */
  * {
    padding: 0;
    margin: 0;
  }
  
  /* header 요소를 가로 방향으로 정렬 */
  header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    background-color: rgb(12,12,12);
    color: #fff;
  }
  
  /* header 요소 안의 table 요소를 가로 방향으로 정렬 */
  header table {
    display: flex;
    justify-content: flex-start;
    align-items: center;
  }
  
  a {
  text-decoration: none;
}
  
  /* header 요소 안의 table 요소의 td 요소들 사이의 간격을 조정 */
  header td {
    margin-right: 100px;
  }
  
  /* 로그인, 회원가입 버튼 사이의 간격을 조정 */
  header input[type="button"] {
    margin-right: 20px;
  }
  
  /* logo 이미지의 크기를 조정 */
  header img {
    height: 40px;
  }
  a:hover {
    text-decoration: underline;
  }
  input[type="button"]:hover {
    background-color: #f2c2f8;
    color: rgb(12,12,12);
    cursor: pointer;
  }
</style>
</head>
<body>
 
<style>
  body {
    background-color: rgb(12,12,12);
    color: #fff; /* 글자 색상을 흰색으로 변경 */
    font-family: 'Exo 2', sans-serif;
  }
</style>
<header class="header">
<div align="left">
<table>

<tr>
  <td style="padding: 0;">
    <a href="MainServlet?command=main" onclick="goToPage()">
      <img src="body/img/logo.png" alt="Logo" style="display: block;">
    </a></td>
    <td>
    <p><b>Do{🔥}while</b><br><font size="0.5em"><b>(reach your goal)</b></font></p>
  </td>
  </tr>
  
  </table>
  </div>
  
  <div align="center">
<table>
<tr>
  <td><a href="MainServlet?command=admin" style="margin-right: 70px; color:white;"><font size="5em"><b>AdminPage</b></font></a></td>
  <td><a href="MainServlet?command=manage_user" style="margin-right: 70px; color:white;"><font size="5em"><b>Member<br>Management</b></font></a></td>
  <td><a href="MainServlet?command=manage_product" style="margin-right: 70px; color:white;"><font size="5em"><b>Product<br>Management</b></font></a></td>
 
  </tr>
  </table>
  </div>
  
  <div align="right">
  <table>
  <tr>
  <td>
    <% if (session.getAttribute("id") != null) { %>
      <input type="button" value="Logout" class="log-button" onclick="location.href='MainServlet?command=logout'" style="margin-right 150px;">
    <% } else { %>
      <input type="button" value="Login" class="log-button" onclick="location.href='MainServlet?command=login_form'">
    <% } %>
    <% if(session.getAttribute("id") == null) { %>
      <input type="button" value="Join" class="log-button" onclick="location.href='MainServlet?command=join_form'">
    <% } %>
  </td>
</tr>


</table>
</div>

</header>

</body>
</html>