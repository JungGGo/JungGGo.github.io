<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@600&display=swap" rel="stylesheet">
<link rel="stylesheet" href="body/css/main.css">
<title>Insert title here</title>

<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

body {
        background-image: url("body/img/place.png");
        /* 다른 배경 스타일 속성도 추가 가능합니다. */
        background-repeat: no-repeat; /* 이미지 반복하지 않도록 설정 */
        overflow: hidden;
    }
    
#placetable table {
  display: block;
  margin: 0 auto;
  text-align: center;
}

#placediv {
  width: 50%;
  height: 200px;
  margin: 0 auto;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(20%, -150%);
  font-family: 'TheJamsil5Bold';
}

</style>

</head>
<body>

<jsp:include page="/body/header.jsp"/>

<form action="MainServlet" method="post" name="frm">
<input type="hidden" name="command" value="place_select">
<div id="placediv">
<table id="placetable">
<div id=fontsize>
<font size="40px">주변 헬스장 찾기</font><br><br>
</div>

<select name = "place" size = "1" style="width: 150px; height: 50px;">
	<option value = "장소선택"></option>
	<option value = "종로구" <% if ("종로구".equals(request.getParameter("place"))) { %> selected <% } %>>종로구</option>
	<option value = "광진구" <% if ("광진구".equals(request.getParameter("place"))) { %> selected <% } %>>광진구</option>
	<option value = "은평구" <% if ("은평구".equals(request.getParameter("place"))) { %> selected <% } %>>은평구</option>
	<option value = "덕양구" <% if ("덕양구".equals(request.getParameter("place"))) { %> selected <% } %>>덕양구</option>
	<option value = "미추홀구" <% if ("미추홀구".equals(request.getParameter("place"))) { %> selected <% } %>>미추홀구</option>
</select> &nbsp;&nbsp;&nbsp;
<input type="submit" value="조회" class="my-button" style="width:100px; height: 50px; font-weight:bold; font-family: 'TheJamsil5Bold'; ">




    <c:forEach items="${plist}" var="place">
    
    <c:if test="${not empty place.juso}" >
    <tr>
            <td><br>
                <img src="${place.juso}"><br>
                <font size="5px">${place.address}</font>
            </td>
        </tr>
    </c:if>
    
    <c:if test="${not empty place.gym}">
        <tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr><tr>
            <td>
                <font size="5px">${place.gym}</font>
            </td>
            <td>&nbsp;&nbsp;<input type="button" value="지도보기" class="my-button" style="font-family: 'TheJamsil5Bold';" onclick="location.href='MainServlet?command=gym_select&gym=${place.gym}'"></td>
        </tr>
    </c:if>
    
    <c:if test="${not empty place.dong}">
        <tr><tr><tr><tr><tr>
            <td>
                <label>
                  <font size="5px">${place.dong}</font>
                </label>
            </td>
            
            <td>
                &nbsp;&nbsp;<input type="button" value="찾아보기" class="my-button" style="font-family: 'TheJamsil5Bold';" onclick="location.href='MainServlet?command=dong_select&dong=${place.dong}'">
            </td>
        </tr>
    </c:if>

</c:forEach>
  </table>
  </div>


</form>


<jsp:include page="/body/footer.jsp"/>
	
</body>
</html>