<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%
	String memberId = request.getParameter("memberId");
	session.setAttribute("MEMBER", memberId);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex21 - Filter2 - Login</title>
</head>
<body>
로그인 처리
</body>
</html>