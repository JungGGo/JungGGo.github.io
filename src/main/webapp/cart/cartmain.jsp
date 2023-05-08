<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/header.jsp"%>
<link rel="stylesheet" href="body/css/main.css">




<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

/*============쇼핑계속하기와 주문하기 버튼================*/
.cart_mainbtns {
   background-color: lightgray; /* 배경색 */
   border: none; /* 테두리 제거 */
   color: black; /* 글자색 */
   padding: 10px 24px; /* 내부 여백 */
   text-align: center; /* 가운데 정렬 */
   text-decoration: none; /* 밑줄 제거 */
   display: inline-block;
   font-size: 20px; /* 글자크기 */
   border-radius: 5px; /* 모서리 둥글게 */
   cursor: pointer; /* 마우스 커서 모양 변경 */
   font-weight: bold;
   width: 100px;
   font-family: 'TheJamsil5Bold';
}

.cart_mainbtns:hover  {
   background-color: #000099;
   color: white;
   font-family: 'TheJamsil5Bold';
}
/*============수정버튼================*/
.cart_updatebtn {
   background-color: lightgray; /* 배경색 */
   border: none; /* 테두리 제거 */
   color: #white; /* 글자색 */
   padding: 5px 3px; /* 내부 여백 */
   text-align: center; /* 가운데 정렬 */
   text-decoration: none; /* 밑줄 제거 */
   display: inline-block;
   font-size: 5px; /* 글자크기 */
   border-radius: 5px; /* 모서리 둥글게 */
   cursor: pointer; /* 마우스 커서 모양 변경 */
   font-weight: bold;
   width: 30px;
   font-family: 'TheJamsil5Bold';
}

.cart_updatebtn:hover {
   background-color:#000099;
   color: white;
}

/*============삭제와 전체삭제 버튼==================*/
.delete_button {
   background-color: #darkgray; /* 배경색 */
   border: none; /* 테두리 제거 */
   color: #white; /* 글자색 */
   padding: 10px 24px; /* 내부 여백 */
   text-align: center; /* 가운데 정렬 */
   text-decoration: none; /* 밑줄 제거 */
   display: inline-block;
   font-size: 20px; /* 글자크기 */
   border-radius: 5px; /* 모서리 둥글게 */
   cursor: pointer; /* 마우스 커서 모양 변경 */
   font-weight: bold;
   width: 100px;
}

.delete_button:hover {
   background-color:#000099;
   color: white;
}

.delete_buttons {
   background-color: #darkgray; /* 배경색 */
   border: none; /* 테두리 제거 */
   color: #white; /* 글자색 */
   padding: 10px 24px; /* 내부 여백 */
   text-align: center; /* 가운데 정렬 */
   text-decoration: none; /* 밑줄 제거 */
   display: inline-block;
   font-size: 20px; /* 글자크기 */
   border-radius: 5px; /* 모서리 둥글게 */
   cursor: pointer; /* 마우스 커서 모양 변경 */
   font-weight: bold;
   width: 100px;
}

.delete_buttons:hover {
   background-color:#000099;
   color: white;
}
/*============무료배송입니다===============*/
.cart {
   width: 80%;
   margin: auto;
   padding: 30px;
}

.cart ul {
   background-color: whitesmoke;
   padding: 30px;
   margin-bottom: 50px;
   border: whitesmoke solid 1px;
   border-radius: 5px;
   font-size: 13px;
   font-weight: 300;
   font-family: 'TheJamsil5Bold';
}

.cart ul {
   color: #000099;
   font-size: 20px;
   line-height: 1.5;
   padding-left: 50px;
   font-family: 'TheJamsil5Bold';
}


/*=====================================*/
.cart__list {
   border-top: solid 1.5px black;
   border-collapse: collapse;
   border-bottom: none;
   width: 100%;
   font-size: 14px;
   font-family: 'TheJamsil5Bold';
}

#wrap td {
   padding: 15px 0px;
   border-bottom: 1px solid black;
   color: black;
   text-align: center;
   font-family: 'TheJamsil5Bold';
}

#wrap th {
   color: black; .
   cart__list__detail: nth-child(3){
     vertical-align: top;
     font-family: 'TheJamsil5Bold';
}

.price {
   font-weight: bold;
   font-family: 'TheJamsil5Bold';
}

.pSeq {
   font-weight: bold;
   font-family: 'TheJamsil5Bold';
}

.name {
   font-weight: bold;
   font-family: 'TheJamsil5Bold';
}

.dusghk {
   text-align: right;
   font-family: 'TheJamsil5Bold';
}

.cart_information {
font-family: 'TheJamsil5Bold';
}
#wrap{
font-family: 'TheJamsil5Bold';
}
</style>



<!DOCTYPE link PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<body>
   <form action="DowhileServlet">
      <input type="hidden" name="command" value="cart_delete">



      <section class="cart">
      <div class="cart__information" style="color: black;">
         <ul>
            <li>안녕하세요 DoWhilemall입니다.<br></li>
            <li>!-오픈기념 전상품 무료배송-!</li>
         </ul>
      </div>

      <!--===========================여기서부터 장바구니========================-->


      <div id="wrap" align="center" style="color: black;">
         <c:choose>

            <c:when test="${clist.size() == 0}">
               <img src="images/toung.jpg" width="150" height="150">
               <br>
               장바구니입니다.<br>단백질부터 채워주세요😅      
                <div style="text-align: center;">
   <!-- 쇼핑 계속하기 누르면 메인으로 넘어가기 가보자고-->
   <input type="button" value="쇼핑계속하기" class="cart_mainbtns"
      onclick="location.href='mall.jsp'"
      style="font-size: 12px; padding: 5px 8px;">
</div>
                    
                </c:when>

            <c:otherwise>
               <table class="cart__list">

                  <tr colspan="6" style="border: black; text-align: right;"></tr>


                  <tr>
                     <td>선택삭제</td>
                     <td></td>
                     <td>상품정보</td>
                     <td>수량</td>
                     <td>가격</td>
                     <td>수정</td>
                  </tr>

                  <c:forEach items="${clist}" var="cart">


                     <tr>
                        <td><input type="checkbox" name="names[]"
                           value="${cart.name}"></td>
                        <td><a href="product?seq=${cart.pSeq}" class="thumb_img"><img
                              src="${cart.imagePath}" width="100" height="100"></a></td>
                        <td><input type="hidden" name="id" value="${id}">
                           ${cart.name}</td>
                        <td>${cart.quantity}</td>
                        <td><fmt:formatNumber value="${cart.quantity * cart.price}" pattern="#,###,###" />원</td>
                        <c:set var="total"
                           value="${total + (cart.quantity * cart.price)}"></c:set>



                        <td><input class="cart_updatebtn" type="button" value="수정"
                           onclick="location.href='DowhileServlet?command=cart_view&pseq=${cart.pSeq}'"></td>

                     </tr>
                  </c:forEach>
                  <div>
                     <table>
                        <tr colspan="2"  style="text-align: right;">
                           <br>총액&nbsp;<fmt:formatNumber value="${total}" pattern="#,###,###" />원
                        </tr>
                     </table>
                     <br>
                     <table>
                        <tr>
                           <th><input class="delete_button" type="submit" value="삭제"
                              onclick="return deleteChecked();"
                              style="font-size: 12px; padding: 4px 4px;"></th>
                           <th>
                              <table>
                                 <tr>
                                    <div>
                                       <input class="delete_buttons" type="button" value="전체삭제"
                                          onclick="if(confirm('장바구니의 모든 상품을 삭제하시겠습니까?')) location.href='DowhileServlet?command=cart_delete_all&id=${id}'"
                                          style="font-size: 12px; padding: 4px 4px;">
                                    </div>
                                 </tr>
                              </table>
                           </th>
                        </tr>
                     </table>
                  </div>


               </table>
               <div style="text-align: center;">
   <!-- 쇼핑 계속하기 누르면 메인으로 넘어가기 가보자고-->
   <input type="button" value="쇼핑계속하기" class="cart_mainbtns"
      onclick="location.href='mall.jsp'"
      style="font-size: 12px; padding: 5px 8px;">
   <!-- 주문하기 누르면 결제창 연결을 해보겠습니당 -->
   <input type="button" value="주문하기" class="cart_mainbtns"
      onclick="location.href='DowhileServlet?command=cart_pay&id=${id}'"
      style="font-size: 12px; padding: 5px 8px;">
</div>
            </c:otherwise>
         </c:choose>
      </div>
   </form>
   
</body>





<%@ include file="../footer.jsp"%>


