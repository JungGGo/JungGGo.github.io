<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="body/css/main.css">
<title>Insert title here</title>

<style>
body {
        overflow: hidden;
    }
    .admin-container {
        position: relative;
        width: 100%;
        height: 70%;
        
    }
    .admin-container video {
        width: 100%;
        height: 70%;
        object-fit: cover;
    }
    .admin-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-100%, -140%);
        z-index: 1;
        font-size: 150px;
        color: white;
        text-shadow: 2px 2px 4px rgba(0,0,0,1);
    }
</style>

</head>
<body>
<jsp:include page="/body/header2.jsp"/>
 <video autoplay muted loop>
  <source src="body/img/admin.mp4" type="video/mp4">
</video>

<jsp:include page="/body/footer.jsp"/>

</body>
</html>