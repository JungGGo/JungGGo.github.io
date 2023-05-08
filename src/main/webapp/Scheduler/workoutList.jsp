<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="body/css/main.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
@font-face {
    font-family: 'TheJamsil5Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302_01@1.0/TheJamsil5Bold.woff2') format('woff2');
    font-weight: 400;
    font-style: normal;
}

#footer img {
   width: 100px;
   height: 50px;
}

body {
   background-color: rgb(12, 12, 12);
   color: #fff; /* 글자 색상을 흰색으로 변경 */
}

#workdiv img {
   width: 150px;
   height: 150px;
   border-radius: 10%;
}

#workdiv a {
   color: white;
   font-weight: bold;
   text-decoration: none;
   font-family: 'TheJamsil5Bold';
}

#workoutArea th {
   width: 180px;
   white-space: nowrap;
   font-family: 'TheJamsil5Bold';
}

#workdiv a:hover {
   text-decoration: underline;
}

#workdiv input[type="button"]:hover {
   background-color: #f2c2f8;
   color: rgb(12, 12, 12);
   cursor: pointer;
   font-family: 'TheJamsil5Bold';
   
   
}

</style>
</head>
<body>
   <jsp:include page="/body/header.jsp" />
	<jsp:include page="/body/footer.jsp" />
   <div id="workdiv" align="center">
      <h1>Workout Schedule / Mealplan</h1>
      <a href='SchedulerServlet?command=workout_write_form'>운동 루틴 등록</a> / <a
         href='SchedulerServlet?command=mealplan_write_form'>식단 등록</a>
      
      <form name="frm" action="SchedulerServlet" method="post">
         <input type="hidden" name="command" value="workout_update"> <br>
         <table>
         <tr>
            <th>날짜</th>
            <td><input type="date" name="selectdate"
               value="<%=java.time.LocalDate.now()%>" style="width:100px; height: 40px; border-radius: 10%;"></td>
            <td><input id="check1" class="mypage-button" type="button" value="업데이트" style="font-family: 'TheJamsil5Bold';" onclick="getAllViewUrl();"></td>
            <td><input id="check2" class="mypage-button" type="button" value="조회" style="font-family: 'TheJamsil5Bold';" onclick="showABC()"></td>
            <!-- 수정 칸이 보이게 하는 버튼 -->
            <td id="showupdate">
            <input type="button" class="mypage-button" value="운동 루틴 수정" style="font-family: 'TheJamsil5Bold';" onclick="showupdate();"></td>
            <!--  수정하고 나서 저장하는 버튼 -->
            <td id="saveupdate" style="display: none;">
            <input type="submit" value="운동 루틴 수정" class="mypage-button" style="font-family: 'TheJamsil5Bold';" 운동 루틴 수정"></td>
            <td><input type="button" class="mypage-button" style="font-family: 'TheJamsil5Bold';" value="운동 루틴 삭제"
               onclick="workoutDeleteUrl()"></td>
            <td><input type="button" class="mypage-button" style="font-family: 'TheJamsil5Bold';" value="식단 삭제"
               onclick="mealplanDeleteUrl()"></td>
         </tr>
      </table>
         <br>
         
         <div id="ABC" style="display:none;">
            <table id="workoutArea">
               <tr align="center">
                  <th>운동 스타일</th>
                  <th>운동 시간</th>
                  <th>운동 부위</th>
                  <th>운동 내용</th>
                  <th></th>
               </tr>
               <tr align="center" style="width: 200px;">
                  <td>${workout2.exercise}</td>
                  <td>${workout2.time}</td>
                  <td>${workout2.part}</td>
                  <td align="left">
                     <div id="content1">
                        <input type="checkbox" id="checkbox1" class="checkbox-content">${workout2.content1}
                     </div>
                     <div id="content2">
                        <input type="checkbox" id="checkbox2" class="checkbox-content">${workout2.content2}
                     </div>
                     <div id="content3">
                        <input type="checkbox" id="checkbox3" class="checkbox-content">${workout2.content3}
                     </div>
                     <div id="content4">
                        <input type="checkbox" id="checkbox4" class="checkbox-content">${workout2.content4}
                     </div>
                     <div id="content5">
                        <input type="checkbox" id="checkbox5" class="checkbox-content">${workout2.content5}
                     </div>
                  </td>
                  <td id="update-container" style="display: none;"><input
                     type="text" name="update1" value="${workout2.content1}"><br>
                     <input type="text" name="update2" value="${workout2.content2}"><br>
                     <input type="text" name="update3" value="${workout2.content3}"><br>
                     <input type="text" name="update4" value="${workout2.content4}"><br>
                     <input type="text" name="update5" value="${workout2.content5}">
                  </td>
               </tr>
            </table>
            <br>
            <table>
               <tr>
                  <th>아침</th>
                  <th>점심</th>
                  <th>저녁</th>
               </tr>
               <tr>
                  <td><c:choose>
                        <c:when test="${empty mealplan.breakfastimage}">
                           <img src="images/noimage.png">
                        </c:when>
                        <c:otherwise>
                           <img src="images/${mealplan.breakfastimage}">
                        </c:otherwise>
                     </c:choose></td>
                  <td style="padding-right: 100px; padding-left: 100px;"><c:choose>
                        <c:when test="${empty mealplan.lunchimage}">
                           <img src="images/noimage.png">
                        </c:when>
                        <c:otherwise>
                           <img src="images/${mealplan.lunchimage}">
                        </c:otherwise>
                     </c:choose></td>
                  <td><c:choose>
                        <c:when test="${empty mealplan.dinnerimage}">
                           <img src="images/noimage.png">
                        </c:when>
                        <c:otherwise>
                           <img src="images/${mealplan.dinnerimage}">
                        </c:otherwise>
                     </c:choose></td>
               </tr>
               <tr align="center">
                  <td>${mealplan.breakfast}</td>
                  <td>${mealplan.lunch}</td>
                  <td>${mealplan.dinner}</td>
               </tr>
               <tr align="center">
                  <td>${mealplan.breakfastmemo}</td>
                  <td>${mealplan.lunchmemo}</td>
                  <td>${mealplan.dinnermemo}</td>
               </tr>
            </table>
      </form>
      <br>
      <div style="width: 600px; background-color: white; border-radius: 5%;">
         <canvas id="myChart"></canvas>
      </div>
      
   </div>

   <script>
      function showupdate() {
         document.getElementById("showupdate").style.display = "none";
         document.getElementById("saveupdate").style.display = "table";
         document.getElementById("update-container").style.display = "table";
      }
      
      function showCheck2() {
         document.getElementById("check1").style.display = "none";
         document.getElementById("check2").style.display = "table";
      }

      function getAllViewUrl() {
         var selectedDate = document.getElementsByName("selectdate")[0].value;
         var url = "SchedulerServlet?command=mealplan_view&selectdate="
               + selectedDate;
         location.href = url;
      }
      
      function showABC(){
         document.getElementById("ABC").style.display = "table";
      }
      
      function workoutDeleteUrl() {
         var selectedDate = document.getElementsByName("selectdate")[0].value;
         var url = "SchedulerServlet?command=workout_delete&selectdate="
               + selectedDate;
         location.href = url;
         document.getElementById("ABC").style.display = "table";
      }
      
      function mealplanDeleteUrl() {
         var selectedDate = document.getElementsByName("selectdate")[0].value;
         var url = "SchedulerServlet?command=mealplan_delete&selectdate="
               + selectedDate;
         location.href = url;
      }   
      
      
      

      var checkboxContents = document.querySelectorAll('.checkbox-content');
      for (var i = 0; i < checkboxContents.length; i++) {
         checkboxContents[i].addEventListener('click', function() {
            var checkboxId = this.id; // 체크박스의 id 값 가져오기
            var contentDiv = document.getElementById(checkboxId.replace(
                  'checkbox', 'content')); // 해당 체크박스와 쌍을 이루는 div 요소 가져오기

            if (this.checked) {
               contentDiv.style.textDecoration = 'line-through';
               contentDiv.style.color = 'lightgray';
            } else {
               contentDiv.style.textDecoration = '';
               contentDiv.style.color = '';
            }
         });
      }

      var data = {
         labels : [
   <%=request.getAttribute("physicaldates")%>
      ],
         datasets : [ {
            label : "체중 변화 (kg)",
            data : [
   <%=request.getAttribute("weights")%>
      ],
            fill : true,
            borderColor : 'rgb(255,153,51)',
            backgroundColor: "rgba(255,153,51, 0)",
            tension : 0.1
         }, {
            label : "골격근량 (kg)",
            data : [
   <%=request.getAttribute("muscles")%>
      ],
            fill : true,
            borderColor : 'rgb(51,255,51)',
            backgroundColor: "rgba(51,255,51, 0)",
            tension : 0.1
         }, {
            label : "체지방량 (%)",
            data : [
   <%=request.getAttribute("fats")%>
      ],
            fill : true,
            borderColor : 'rgb(51,153,255)',
            backgroundColor: "rgba(51,153,255, 0)",
            tension : 0.1
         } ]
      };

      var options = {
         scales : {
            yAxes : [ {
               ticks : {
                  min : 0,
                  max : 150
               }
            } ]
         }
      };

      var ctx = document.getElementById("myChart").getContext("2d");
      var myChart = new Chart(ctx, {
         type : "line",
         data : data,
         options : options
      });
      
      
   </script>
   
</body>
</html>