<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="body/css/main.css">
<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

 .image-container {
	display: flex;
	flex-wrap: wrap;
  }
  
  
 .image-container a{
  text-decoration: none;
 
 }
  
.thumb_img{
  width: 20%;
  margin: 30px;
  box-sizing: border-box;
  padding:20px;
  transition: all 0.3s ease;

}  
    
.thumb-name {
 text-align:left;
 padding:10px;
 margin-top:20px;
 font-size: 20px;
 color: black;
}



.thumb-price{
text-align:center;
padding:5px;
 font-size: 25px;
 color: black;
}

.thumb_img:hover {
  transform: scale(1.1);
}


#listdiv {
font-family: 'TheJamsil5Bold';
}

#listdiv a{
text-decoration: none;
}
   

</style>
<title>Dowhile 쇼핑몰</title>
</head>
<body>
	 <%@ include file="header.jsp" %>
      <div id="listdiv">
		<h3><c:out value="${kindName}"/></h3>
		<div class="image-container">
			<c:forEach var="product" items="${productList}">
			<!-- TODO 썸네일이미지경로로 넣기-->
				<a href="product?seq=${product.seq}" class="thumb_img">
					<img src="${product.thumbImagePath}" width="350" height="450">
					<div class="thumb">
					<div class="thumb-name">${product.name}</div>
					<div class="thumb-price"><fmt:formatNumber value="${product.price}" pattern="#,###" />원</div>
					</div>
				</a>
			</c:forEach>

			
			<div class="clearfix"></div>
		</div>
	</div>



		 <%@ include file="footer.jsp" %>


</body>
</html>