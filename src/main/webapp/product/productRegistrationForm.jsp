<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="body/css/main.css">
<script type="text/javascript" src="script/dowhile.js"></script>
<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

#formdiv {
font-family: 'TheJamsil5Bold';
}

body{
background-color:rgb(12,12,12);
color: white;
}

</style>
</head>
<body>
<div id="formdiv">
	<h1>상품 등록 페이지</h1>
	<form action="MainServlet" method="post" name="frm">
		<input type="hidden" name="command" value="product_registration">
		<table>
			<tr>
				<td>상품명</td>
				<td><input type="text" name="name"></td>
				<td>상품종류</td>
				<td><select name="kind">
						<option value="1">상품</option>
						<option value="2">단백질바</option>
						<option value="3">소도구</option>
						<option value="4">여성의류</option>
						<option value="5">남성의류</option>
				</select></td>
			</tr>
			<tr>
				<td>원가</td>
				<td><input type="text" name="cost"></td>
				<td>판매가</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>상품내용</td>
				<td colspan="5"><textarea cols="65" rows="10" name="content"></textarea></td>
			</tr>
			<tr>
				<td>상품상세내용이미지</td>
				<td><input type="text" name="content_image_path" value="upload/contentImagePath/" size="30"></td>
			</tr>
			<tr>
				<td>상품상세<br>이미지경로
				</td>
				<td><input type="text" name="image_path" value="upload/imagePath/" size="30"></td>
				<td>상품썸네일<br>이미지경로
				</td>
				<td><input type="text" name="thumb_image_path" value="upload/thumbImagePath/" size="30"></td>
			</tr>
			<tr>
				<td>상품사용여부</td>
				<td><label><input type="radio" name="use_yn" value="Y"
						checked>사용</label> <label><input type="radio"
						name="use_yn" value="N">미사용</label></td>
				<td>베스트상품여부</td>
				<td><label><input type="radio" name="best_yn" value="Y">베스트</label>
					<label><input type="radio" name="best_yn" value="N" checked>일반</label>
				</td>
			</tr>
		</table>
		<br> <input type="submit" value="등록" class="mypage-button">
	</form>
	</div>
</body>
</html>