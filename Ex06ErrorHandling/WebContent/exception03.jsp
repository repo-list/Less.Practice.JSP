<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page errorPage="error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex06 - Error Handling - Page 03</title>
</head>
<body>
name 파라미터의 값 : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>