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

#managediv {
font-family: 'TheJamsil5Bold';
}
#managediv th {
    padding: 50px;
    font-size: 30px;
  }

#managediv td{
text-align: center;
}  

</style>
</head>
<body>
<jsp:include page="/body/header2.jsp"/>
<div id="managediv" align="center" style="margin-top: 120px;">
	<table>
	<font size="30px;">회원 리스트</font><br><br>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>주소</th>
			<th>전화번호</th>
			<th>가입일</th>
		</tr>

		<c:forEach items="${mlist}" var="member">
			<tr>
				<td>${member.num }</td>
				<td>${member.id }</td>
				<td>${member.name }</td>
				<td>${member.address }</td>
				<td>${member.phone }</td>
				<td><fmt:formatDate value="${member.joindate}" pattern="yyyy/MM/dd"/></td>
				<td><input type="button" value="수정" style="font-family: 'TheJamsil5Bold'; width:50px; height: 30px;" onclick="openWindow('MainServlet?command=user_view&id=${member.id}','update')"></td>
				<td><input type="button" value="삭제" style="font-family: 'TheJamsil5Bold'; width:50px; height: 30px;" onclick="if(confirm('삭제하시겠습니까?'))location.href='MainServlet?command=delete_user&id=${member.id}'"></td>
			</tr>
		</c:forEach>
	</table>
	</div>
<jsp:include page="/body/footer.jsp"/>
<script type="text/javascript" src="script/dowhile.js"></script>
</body>
</html>