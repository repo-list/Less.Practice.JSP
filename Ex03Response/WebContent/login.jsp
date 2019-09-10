<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf8" %>
<%
	String memberId = request.getParameter("memberId");
	boolean success = false;
	if (memberId != null && memberId.equals("madvirus")) success = true;
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex03 - Response - Login</title>
	<script>
		alert('<%= success ? "성공" : "실패" %>');
	</script>
</head>
</html>