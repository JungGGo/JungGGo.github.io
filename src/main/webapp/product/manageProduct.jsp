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
<script type="text/javascript" src="script/dowhile.js"></script>

<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}


#productdiv {
font-family: 'TheJamsil5Bold';
}
#productdiv td{
text-align: center;
}

#productdiv select {
	width: 130px;
	height: 40px;
}


</style>
</head>

<body>
<jsp:include page="/body/header2.jsp"/>
<div id="productdiv">
	<h1>상품 리스트</h1><br>

	<form action="MainServlet" method="post" name="frm" >
		<input type="hidden" name="command" value="product_search">
		<table>
			<tr>
				<td><a href="#"
					onclick="open_Window('MainServlet?command=product_registration_form','registration')" class="mypage-button"
					style="width: 100px; text-decoration: none;" >상품등록</a></td>
			</tr>
			<tr>
				<td><select name="kind" style="font-family: 'TheJamsil5Bold'">
						<option value="">전체</option>
						<option value="1" ${param.kind == '1' ? 'selected' : ''}>상품</option>
						<option value="2" ${param.kind == '2' ? 'selected' : ''}>단백질바</option>
						<option value="3" ${param.kind == '3' ? 'selected' : ''}>소도구</option>
						<option value="4" ${param.kind == '4' ? 'selected' : ''}>여성의류</option>
						<option value="5" ${param.kind == '5' ? 'selected' : ''}>남성의류</option>
				</select></td>
				<td><input type="submit" value="조회"  class="mypage-button" style="width: 130px; height: 40px; font-family: 'TheJamsil5Bold'"></td>
			</tr>
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>상품종류</th>
				<th>원가</th>
				<th>판매가</th>
				<th>상품내용</th>
				<th>상품내용<br>이미지경로</th>
				<th>상품상세<br>이미지경로</th>
				<th>상품썸네일<br>이미지경로</th>
				<th>상품사용<br>여부</th>
				<th>베스트상품<br>여부</th>
				<th>등록일</th>
				<th>수정일</th>
				<th>수정자</th>
				<th>등록자</th>
			</tr>
			<div id="productadmin">
			<c:forEach items="${plist}" var="product">
				<tr>
					<td>${product.seq}</td>
					<td>${product.name }</td>
					<td>${product.kind}</td>
					<td>${product.cost}</td>
					<td>${product.price}</td>
					<td>${product.content}</td>
					<td><c:choose>
                     <c:when test="${empty product.contentImagePath}">
                        <img src="images/noimage.jpeg" width="100">
                     </c:when>
                     <c:otherwise>
                        <img src="${product.contentImagePath}" width="100" height="100">
                     </c:otherwise>
                  </c:choose></td>
					<td><c:choose>
                     <c:when test="${empty product.imagePath}">
                        <img src="images/noimage.jpeg" width="100">
                     </c:when>
                     <c:otherwise>
                        <img src="${product.imagePath}" width="100" height="100">
                     </c:otherwise>
                  </c:choose></td>
					<td><c:choose>
                     <c:when test="${empty product.thumbImagePath}">
                        <img src="images/noimage.jpeg" width="100">
                     </c:when>
                     <c:otherwise>
                        <img src="${product.thumbImagePath}" width="100" height="100">
                     </c:otherwise>
                  </c:choose></td>
					<td>${product.useYn}</td>
					<td>${product.bestYn}</td>
					<td>${product.createDate}</td>
					<td>${product.updateDate}</td>
					<td>${product.updateBy}</td>
					<td>${product.createBy}</td>
					<td><input type="button" value="수정"
						onclick="open_Window('MainServlet?command=product_view&seq=${product.seq}','product_update')"></td>
					<td><input type="button" value="삭제"
						onclick="if(confirm('삭제하시겠습니까?')) location.href='MainServlet?command=product_delete&seq=${product.seq}'">
					</td>
				</tr>
			</c:forEach>
			</div>
		</table>
	</form>
	</div>
</body>
</html>