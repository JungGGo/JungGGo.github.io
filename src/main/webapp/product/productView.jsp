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
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2')
		format('woff2');
	font-weight: 400;
	font-style: normal;
}

#divdiv {
	font-family: 'TheJamsil5Bold';
}

body {
	background-color: rgb(12, 12, 12);
	color: white;
}
</style>
</head>
<body>
	<div id="divdiv">
		<h1>상품 수정 페이지</h1>
		<form action="MainServlet" method="post">
			<input type="hidden" name="command" value="product_update">

			<table>
				<tr>
					<td>상품번호</td>
					<td><input name="seq" value="${product.seq}" readonly></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><input type="text" name="name" value="${product.name }"></td>
					<td>상품종류</td>
					<td><select name="kind">
							<option value="1" ${product.kind == 1 ? "selected" : ""}>상품</option>
							<option value="2" ${product.kind == 2 ? "selected" : ""}>단백질바</option>
							<option value="3" ${product.kind == 3 ? "selected" : ""}>소도구</option>
							<option value="4" ${product.kind == 4 ? "selected" : ""}>여성의류</option>
							<option value="5" ${product.kind == 5 ? "selected" : ""}>남성의류</option>
					</select></td>
				</tr>
				<tr>
					<td>원가</td>
					<td><input type="text" name="cost" value="${product.cost }"></td>
					<td>판매가</td>
					<td><input type="text" name="price" value="${product.price }"></td>
				</tr>
				<tr>
					<td>상품내용</td>
					<td colspan="5"><textarea cols="65" rows="10" name="content">${product.content }</textarea></td>
				</tr>
				<tr>
					<td>상품상세내용<br>이미지경로
					</td>
					<td><input type="text" name="content_image_path"
						value="${product.contentImagePath}" size="30"></td>

				</tr>
				<tr>
					<td>상품상세<br>이미지경로
					</td>
					<td><input type="text" name="image_path"
						value="${product.imagePath}" size="30"></td>
					<td>상품썸네일<br>이미지경로
					</td>
					<td><input type="text" name="thumb_image_path"
						value="${product.thumbImagePath}" size="30"></td>
				</tr>
				<tr>
					<td>상품사용여부</td>
					<td><label><input type="radio" name="use_yn" value="Y"
							${product.useYn == 'Y' ? 'checked' : ''}>사용</label> <label><input
							type="radio" name="use_yn" value="N"
							${product.useYn == 'N' ? 'checked' : ''}>미사용</label></td>
					<td>베스트상품여부</td>
					<td><label><input type="radio" name="best_yn"
							value="Y" ${product.bestYn == 'Y' ? 'checked' : ''}>베스트</label> <label><input
							type="radio" name="best_yn" value="N"
							${product.bestYn == 'N' ? 'checked' : ''}>일반</label></td>
				</tr>
				<tr>
					<td>등록일</td>
					<td>${product.createDate}</td>
					<td>수정일</td>
					<td>${product.updateDate}</td>
				</tr>

			</table>
			<br> <input type="submit" value="수정" class="mypage-button">
		</form>
	</div>
</body>
</html>