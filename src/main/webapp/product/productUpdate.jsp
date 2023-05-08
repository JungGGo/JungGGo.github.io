<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
if(window.name == "product_update"){
	window.opener.parent.location.href = "MainServlet?command=product_update&seq=${param.seq}";
}
	

window.close();
window.opener.parent.location.reload();
</script>
</body>
</html>