<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="body/css/main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js">


    $(document).ready(function() {
        $('#selectAll').click(function() {
            $('input[name="seq"]').prop('checked', this.checked);
        });
    });

function deleteChecked() {
   var checkedList = [];
   var checkBoxes = document.getElementsByName("seq");
   for (var i = 0; i < checkBoxes.length; i++) {
      if (checkBoxes[i].checked) {
         checkedList.push(checkBoxes[i].value);
      }
   }
   if (checkedList.length == 0) {
      alert("선택된 상품이 없습니다.");
      return false;
   }
   if (confirm("선택한 상품을 삭제하시겠습니까?")) {
      var form = document.getElementById("cartListForm");
      form.action = "/deleteChecked";
      form.method = "post";
      var hiddenField = document.createElement("input");
      hiddenField.setAttribute("type", "hidden");
      hiddenField.setAttribute("name", "checkedList");
      hiddenField.setAttribute("value", checkedList);
      form.appendChild(hiddenField);
      form.submit();
      return true;
   } else {
      return false;
   }
}
function updateChecked() {
     var checkedList = [];
     var checkBoxes = document.getElementsByName("seq");
     for (var i = 0; i < checkBoxes.length; i++) {
       if (checkBoxes[i].checked) {
         checkedList.push(checkBoxes[i].value);
       }
     }
     if (checkedList.length == 0) {
       alert("선택된 상품이 없습니다.");
       return false;
     }
     if (confirm("선택한 상품을 수정하시겠습니까?")) {
       // 수정 코드 작성
       alert("수정이 완료되었습니다.");
       return true;
     } else {
       return false;
     }
   }

</script>



<style>


#wrap {
   width: 15000px;
   margin: 0;
   margin-left: auto;
   margin-right: auto;
   width: 80%;
   border-collapse: collapse;
   font-size: 15px; /*글꼴크기*/
   line-height: 30px /*줄 간격*/
}



#wrap td, th {
   border: #d3d3d3 solid 1px; /*경계선 색상 스타일 굵기*/
   padding: 5px; /*안쪽여백*/
   color: black;/*글자색*/
}

.cart_bigorderbtn{
    background-color: darkgray; /* 배경색 */
   border: none; /* 테두리 제거 */
   color: white; /* 글자색 */
   padding: 10px 24px; /* 내부 여백 */
   text-align: center; /* 가운데 정렬 */
   text-decoration: none; /* 밑줄 제거 */
   display: inline-block;
   font-size: 20px; /* 글자크기 */
   border-radius: 5px; /* 모서리 둥글게 */
   cursor: pointer; /* 마우스 커서 모양 변경 */
   font-weight: bold;
   width: 150px;
}
.cart_bigorderbtn:hover {
   background-color: #000099;;
   color: #white;
}




.cart_bigorderbtns{
    background-color: darkgray; /* 배경색 */
   border: none; /* 테두리 제거 */
   color: white; /* 글자색 */
   padding: 10px 24px; /* 내부 여백 */
   text-align: center; /* 가운데 정렬 */
   text-decoration: none; /* 밑줄 제거 */
   display: inline-block;
   font-size: 20px; /* 글자크기 */
   border-radius: 5px; /* 모서리 둥글게 */
   cursor: pointer; /* 마우스 커서 모양 변경 */
   font-weight: bold;
   width: 150px;
}
.cart_bigorderbtns:hover {
   background-color: #000099;
   color: #white;
}
</style>

<body>
<form action="DowhileServlet">
<input type="hidden" name="command" value="cart_update">
<input type="hidden" name="id" value="${id }">
<input type="hidden" name="name" value="${cart.name }">
<input type="hidden" name="price" value="${cart.price }">
   
   
   <div id="wrap" align="center">
      <h1>주문내역 상세</h1>

      <table>
         <tr>
            <th>주문자ID</th>
            <td>${cart.id }</td>
         </tr>

         <tr>
            <th>상품정보</th>
            <td><a href="product?seq=${cart.pSeq}"></a><img src="${cart.imagePath}" width="100" height="100" 
            
            style="display: block; margin: auto;" ><br>${cart.name }</td>
         </tr>
         
         <tr>
            <th>주문수량</th>
            <td><input type="number" name="quantity"
            value="${cart.quantity}" min="1" max="100" onchange="updateQuantity(this, ${cart.name})"
            style="width: 40px;"></td>
         </tr>
         
            <tr>
            <th>상품금액</th>
            <td><fmt:formatNumber value="${cart.price}" pattern="#,###,###" />원</td>
            
         </tr>
         
         <tr>
            <th>총금액</th>
            <td><fmt:formatNumber value="${cart.quantity * cart.price}" pattern="#,###,###" />원</td>
         </tr>
         
      </table>
      <br>
      
      
      <input class="cart_bigorderbtn" type="submit"
         value="제품정보수정"  style="font-size: 12px; padding: 10px 10px;">
      
      <input class="cart_bigorderbtns" type="button"
      value="장바구니리스트" onclick="location.href='DowhileServlet?command=cart_list&id=${id}'"
      style="font-size: 12px; padding: 10px 10px;">

   </div>
   </form>
</body>
</html>
<div class="clearfix"></div>
<%@ include file="../footer.jsp"%>