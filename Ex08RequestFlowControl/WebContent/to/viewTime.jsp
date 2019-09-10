<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>현재 시간</title>
</head>
<body>
	<%
		Calendar calendar = (Calendar)request.getAttribute("time");
	%>
	<p>
		현재 시간은 <%= calendar.get(Calendar.HOUR) %>시
				<%= calendar.get(Calendar.MINUTE) %>분
				<%= calendar.get(Calendar.SECOND) %>초 입니다.
	</p>
</body>
</html>