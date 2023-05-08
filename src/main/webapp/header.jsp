<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<title>두와일</title>
<meta charset="utf-8">
<link rel="stylesheet" href="body/css/shopcss.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
rel="stylesheet">

<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}
</style>

</head>


<body  style="background-color: white;">
<jsp:include page="/body/header.jsp" />
   <div class="navbar">

<li><a href="MainServlet?command=mall_main"><b>DO{}WHILE.MALL</b></a></li>


      <ul id="menu">
          <li><input type="button" value="Cart" class="mypage-button" onclick="location.href='DowhileServlet?command=cart_list&id=${id}'"></li>
      </ul>
   </div>


   <br>
   
   
 
	<div class="products">

		<div class="product-list">

			<a href="products?kind=1" class="product"> <img
				src="image/kind1.png" width="50" height="50px">
				<div class="product-name" style="font-family: 'TheJamsil5Bold';">단백질 쉐이크</div>

			</a> <a href="products?kind=2" class="product"> <img
				src="image/kind2.png" width="50" height="50px">
				<div class="product-name" style="font-family: 'TheJamsil5Bold';">단백질바/스낵</div>

			</a> <a href="products?kind=3" class="product"> <img
				src="image/kind3.png" width="50" height="50px">
				<div class="product-name" style="font-family: 'TheJamsil5Bold';">소도구</div>

			</a> <a href="products?kind=4" class="product"> <img
				src="image/kind4.png" width="50" height="50px">
				<div class="product-name" style="font-family: 'TheJamsil5Bold';">여성 의류</div>

			</a> <a href="products?kind=5" class="product"> <img
				src="image/kind5.png" width="50" height="50px">
				<div class="product-name" style="font-family: 'TheJamsil5Bold';">남성 의류</div>

			</a>


			<div class="clearfix"></div>
			<div class="header_line"></div>
			
		</div>
      
</body>
</html>