<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex02 - Request - viewHeaderList</title>
</head>
<body>
	<%
		Enumeration headerEnum = request.getHeaderNames();
		while (headerEnum.hasMoreElements()) {
			String headerName = (String)headerEnum.nextElement();
			String headerValue = request.getHeader(headerName);
			%>
			<%= headerName %> = <%= headerValue %><br>
			<%
		}
	%>
</body>
</html>