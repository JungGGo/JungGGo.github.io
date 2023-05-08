<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
    
    <%@ include file="header.jsp" %>   
   
 <head>
  <link rel="stylesheet" href="body/css/main.css">
  
  <style>
  @font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

body{
height: 1600px;
}  
.product-list {
font-family: 'TheJamsil5Bold';
}  
.product-list a{
text-decoration: none;
}

#productdiv{
transition: all 0.3s ease;
}
#productdiv:hover{
transform: scale(1.1);

}
.products {
  overflow-x: hidden; /* 가로 스크롤바 표시 */
  overflow-y: auto; /* 세로 스크롤바 숨김 */
}
.hero-header {
        position: relative;
        width: 1900px;
        height: 640px;;
        
    }
    .hero-header video {
        width: 1900px;
        height: 640px;
        object-fit: cover;
    }
  </style>
</head>  
    
    <!-- 대표영상 -->
<div class="hero-header">
<video autoplay muted loop>
            <source src="body/img/shop6.mp4" type="video/mp4" style="width:1900px; height: 500px;">
        </video>
</div>
   
      <!-- 판매상품 -->   
      <div class="products" style="background-color: white;">
         <h3>Our best item</h3>
         <div class="product-list">
         <c:forEach var="product" items="${productList}">
            <a href="product?seq=${product.seq}" class="product" id="productdiv"> <img src="${product.thumbImagePath}"
               width="225" height="250">
               <div class="product-name">${product.name}</div>
               <div class="product-price"><fmt:formatNumber value="${product.price}" pattern="#,###,###" />원</div>
            </a>
            </c:forEach>
            
            <div class="clearfix"></div>
         </div>

         
         <%@ include file="/body/footer.jsp"%>