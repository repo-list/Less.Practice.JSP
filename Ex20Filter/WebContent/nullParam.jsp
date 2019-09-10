<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex20 - Filter - Null Param</title>
</head>
<body>
	<p>id 파라미터 : <%= request.getParameter("id") %></p>
	<p>name 파라미터 : <%= request.getParameter("name") %></p>
	<p>member 파라미터 : <%= request.getParameter("member") %></p>
</body>
</html>
