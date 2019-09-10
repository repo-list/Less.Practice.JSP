<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex06 - Error Handling - Page 02</title>
</head>
<body>
	<% try { %>
	<%= request.getParameter("name").toUpperCase() %>
	<% } catch (Exception e) { %>
	name 파라미터가 올바르지 않습니다.
	<% } %>
</body>
</html>