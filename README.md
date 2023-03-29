# JungGGo.github.io
---
layout: post
title:  "JSP 시작!"
date:   2023-03-23
categories: JSP update
---
C:에 JSP폴더 생성 -> 이클립스에서 file -> swich workspace -> other -> JSP폴더 선택
https://tomcat.apache.org/download-80.cgi

8.5 -> 64.bit 다운로드

 

이클립스에서 window -> preference -> CSS.JSP.HTML UTF8로 변경 (한글이 깨지지 않음)

html 페이지 생성 

file -> dynamic web project -> 생성후 -> src -> webapp -> new -> HTMLFile 생성

JSP를 하면서 가장많이 보는

오류 404

webapp에 파일을 만들어야 하는데 

WEP-INF나 이름을 잘못 지정했을 때

 

오류 506

문법적 오류

{% highlight ruby %}
index

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

안녕하세요.<br>

이곳은 홈페이지 입니다.

</body>

</html>
{% endhighlight %}

input
{% highlight ruby %}

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

ID<input type="text" name ="id" value="lim@abc.com">

</body>

</html>
{% endhighlight %}

로그인 페이지 예제

{% highlight ruby %}
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<table border=1>

<tr><td>로그인</td>></tr>>

<tr>

<td>아이디</td>

<td><input type= "text" name="id" placeholder="Email address" required></td>

</tr>

<tr>

<td>패스워드</td>

<td><input type= "password" name="ps"required></td>

</tr>

<tr><td><input type= "button" value="로그인"></td></tr>

</table>

</body>

</html>
{% endhighlight %}

로그인2

{% highlight ruby %}
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<form action="login.jsp">

<table align="center">

<tr>

<td colspan=2 align="center" height=40><b>로그인000</b></td>

</tr>

<tr>

<td align="right">아이디</td>

<td><input type="text" name="id" placeholder="E-mail" required>

</td>

</tr>

<tr>

<td align="right">패스워드 :</td>

<td><input type="password" name="ps" required></td>

</tr>

<tr>

</td>

<td colspan="2" align="center" height="50"><input type="submit"

value="로그인 하기"></td>

</tr>

</tr>

</table>

</form>

</body>

</html>
{% endhighlight %}

login.jsp

{% highlight ruby %}
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<h1>신상정보</h1>

<%

//스크립트 릿 : 자바 코드를 작성하는 부분

String name = request.getParameter("id");

out.println("이름: " +name + "<br>");

String pw = request.getParameter("ps");

out.println("비밀번호: " +pw);

%>

</body>

</html>
{% endhighlight %}

예제1

{% highlight ruby %}
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<form action="nameResult.jsp">

이름 : <input type = "text" name = "name"> <br>

나이 : <input type = "text" name = "age"> <br>

<input type = "submit" value = "제출">

 

</form>

</body>

</html>
{% endhighlight %}

예제1  "nameResult.jsp"

{% highlight ruby %}
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<%

request.setCharacterEncoding("UTF-8"); //모든 언어를 인식하겠다는 뜻 무조건 하쟈

String name = request.getParameter("name");

String age = request.getParameter("age");

out.println("당신의 이름은 :" + name + "이고 나이는 " + age + "살 입니다.");

%>

</body>

</html>
{% endhighlight %}

예제2

{% highlight ruby %}
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>I설문 조사</title>

</head>

<body>

<h2>설 문 조 사 표</h2>

<form action="research.jsp">

이름 : <input type = "text" name = "name" size ="20"> <br>

성별: <input type = "radio" name = "gender" value = "male" cheked>남자

<input type = "radio" name = "gender" value = "female">여자

<br>

좋아하는 계절 : <input type = "checkbox" name = "season" value = "1"> 봄

<input type = "checkbox" name = "season" value = "2">여름

<input type = "checkbox" name = "season" value = "3">가을

<input type = "checkbox" name = "season" value = "4">겨울

<br>

<input type ="submit" value = "전송">

<input type ="reset" value = "취소">

</form>

</body>

</html>
{% endhighlight %}

예제2 "research.jsp"

{% highlight ruby %}
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>

<body>

<%

request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");

out.println("이름 : <b> " + name + "</b><br> ");

String gender = request.getParameter("gender");

out.println("성별 : ");

if(gender.equals("male")){

out.println("<b>남자 </b><br>");

 

}else{

out.println("<b>여자 </b><br>");

}

//여러개는 request.getParameter valuse로 지정

//단일은 request.getParameter

String seasonArr[] = request.getParameterValues("season");

out.println("당신이 좋아하는 계절은 : ");

for(String season: seasonArr){

switch(season){

case "1":

out.println("<b>봄</b>입니다.");

break;

 

case "2":

out.println("<b>여름</b>입니다.");

break;

 

case "3":

out.println("<b>가을</b>입니다.");

break;

 

case "4":

out.println("<b>겨울</b>입니다.");

break;

 

 

}

}

%>

<br>

<b><a href = 'javascript:history.go(-1)'>뒤로</a></b>

</body>

</html>
{% endhighlight %}
JSP 기본 태그

 

<% %> : 스크립트 릿(scriptlet)

               순수 자바 코드를 기술

               이 안에서 주석은  //   ,     /* */

               밖에서의 주석은 <%--  --%>

ex>

<%--

<%

int num1 = 20;

int num2 = 40;

int add = num1 + num2;

out.print(num1 + "+" + num2 + "=" + add);

 

%>

 

스크립트 릿은 지역변수이기에 순차적으로 타고 내려가기 때문에 순서를 바꾸면 안됨

<%

String a ="jsp";

%>

<%

out.print(a);

%>

--%> 

---------------------------------------------------------------------------------
<%! %> : 선언 (declaration)

                 변수와 메소드를 선언 

                 전역변수 순서 상관 없이 찾아 온다

                 함수 선언은 여기에서만 가능

                 count (증가)를 하려면 여기에 선원해야 페이지가 바뀔 때 마다 1씩 증가된다
----------------------------------------------------------------------------------

<%= %>  : 표현식(expression)

                   계산식이나 함수를 호출한 결과를 문자열 형태로 출력

 

ex>

<%= local_cnt %>   과 

out.print("<br> local_cnt :" + ++local_cnt + "<br>"); 같다
----------------------------------------------------------------------------------
<%@ %> : 지시자(Drective)

                   JSP 페이지의 속성을 지정

 

 

<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

 

이 페이지는 자바로 되어있으며, text/html 포함되어 있고 UTF-8로 언어를 지정한다는 뜻
