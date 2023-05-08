<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="body/css/main.css">
<title>Insert title here</title>
<style>
    .video-container {
        position: relative;
        width: 100%;
        height: 70%;
        
    }
    .video-container video {
        width: 100%;
        height: 70%;
        object-fit: cover;
    }
    .video-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-100%, -140%);
        z-index: 1;
        font-size: 150px;
        color: white;
        text-shadow: 2px 2px 4px rgba(0,0,0,1);
    }
    body {
        overflow: hidden;
    }
</style>
</head>
<body>

<jsp:include page="/body/header.jsp"/>

<div class="video-container">
        <video autoplay muted loop>
            <source src="body/img/run2.mp4" type="video/mp4">
        </video>
        <div class="video-text">
            <b>Do{🔥}while</b>
            
        </div>
    </div>



<jsp:include page="/body/footer.jsp"/>
</body>
</html>