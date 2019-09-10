<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex10 - Cookie - View Cookies</title>
</head>
<body>
	<span>쿠키 목록</span><br>
	<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			out.println(cookies.length);
			for (int i = 0; i < cookies.length; i++) {
	%>
				<%= cookies[i].getName() %> =
				<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %>
	<%
			}
		}
		else {
	%>
	쿠키가 존재하지 않습니다.
	<%
		}
	%>
</body>
</html>