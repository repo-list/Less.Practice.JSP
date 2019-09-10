<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
	Cookie cookie = new Cookie("name", URLEncoder.encode("최범균", "utf-8"));
	response.addCookie(cookie);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex10 - Cookie - Make Cookie</title>
</head>
<body>
	<span><%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"</span>
</body>
</html>