<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="body/css/main.css">
<!DOCTYPE html>
<html>
<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

   .content-image {
      margin: 20px;
      text-align: center;
   }

   .content-title {
      font-size: 20px;
      font-weight: bold;
      margin-bottom: 10px;
      color: black;
      font-family: 'TheJamsil5Bold';
   }

   .content-description {
      font-size: 16px;
      margin-bottom: 20px;
      color: black;
      font-family: 'TheJamsil5Bold';
   }

   .content-price {
      font-size: 20px;
      font-weight: bold;
      margin-bottom: 20px;
      color: black;
      font-family: 'TheJamsil5Bold';
   }


   .content_quantity{
   color: black;
   font-family: 'TheJamsil5Bold';
   
   }
   
   
   .content_orderbtn {
      background-color: rgb(12, 12, 12);
      border: none;
      color: white;
      padding: 5px 10px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 2px 2px;
      cursor: pointer;
   }
   
.content_button button.content_orderbtn {
  display: block;
  width: 100%;
  max-width: 400px; /* 원하는 크기로 조절하세요 */
  margin: 0 auto;
} 
.content-line {
margin-top:10px;
border-top: 1px solid black;
}

.contents-img{
  display: block;
  width: 100%;
  text-align: center;
}

.contents-img img{
   width: 50%;
}

.content_button {
  background-color: darkgray; /* 배경색 */
  border: none; /* 테두리 제거 */
  color: black; /* 글자색 */
  padding: 10px 24px; /* 내부 여백 */
  text-align: center; /* 가운데 정렬 */
  text-decoration: none; /* 밑줄 제거 */
  display: inline-block;
  font-size: 20px; /* 글자크기 */
  border-radius: 5px; /* 모서리 둥글게 */
  cursor: pointer; /* 마우스 커서 모양 변경 */
  font-weight:bold;
  width: 150px;
}

.content_button:hover {
background-color: #f2c2f8;
color: #000;
}

.content-info{
padding-left: 20px;

}

</style>
<head>
<meta charset="UTF-8">
<title>상품 상세 페이지</title>
</head>
<body>
<form action="DowhileServlet">
<input type="hidden" name="command" value="cart_basket">
<input type="hidden" name="id" value="${id}">
<input type="hidden" name="pseq" value="${product.seq}">
<input type="hidden" name="imagePath" value="${product.imagePath}">
<input type="hidden" name="name" value="${product.name}">
<input type="hidden" name="price" value="${product.price}">

   <%@ include file="header.jsp"%>
   <div class="content">

      <div class="content-image">
         <br> <br> <br> <img
            src='<c:out value="${product.imagePath}"/>' width="550" height="550">
      </div>
      <div class="content-info">
         <br> <br> <br>
         <p class="content-title">
            &nbsp;
            <c:out value="${product.name}" />
            <div class="content-line"></div>
         </p>
         <p class="content-description">
            &nbsp;
            <c:out value="${product.content}" />
            <div class="content-line"></div>
         </p>
         <label class="content_quantity">수량:</label> <input type="number"
            id="quantity" name="quantity" min="1" max="10" value="1">
           <div class="content-line"></div>
         <p class="content-price">
            &nbsp;
            <fmt:formatNumber value="${product.price}" pattern="#,###" />
            원
         </p>

         <div>
      
            <input class="content_button" type="submit" value="장바구니" onclick="return confirm('장바구니에 담으시겠습니까?');">

            <br> <br>

         </div>
      </div>
   </div>
   <div class="content-line"></div>
   <div class="contents-img">
   <img src='<c:out value="${product.contentImagePath}"/>' >
   <div class="content-line"></div>
   </div>
   <%@ include file="footer.jsp"%>
   </form>
</body>

</html>