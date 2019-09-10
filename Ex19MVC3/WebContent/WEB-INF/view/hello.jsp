<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Ex19 - MVC3 - Hello</title>
</head>
<body>
	<span><%= request.getAttribute("hello") %></span><br>
	<span><%= request.getAttribute("requestURI") %></span><br>
	<span><%= request.getAttribute("contextPath") %></span><br>
</body>
</html>