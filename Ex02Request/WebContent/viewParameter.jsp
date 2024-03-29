<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
	<title>Ex02 - Request - viewParameter</title>
</head>
<body>
	<b>request.getParameter() 메서드 사용</b><br>
	name 파라미터 = <%= request.getParameter("name") %><br>
	address 파라미터 = <%= request.getParameter("address") %>
	<p>
		<b>request.getParameterValues() 메서드 사용</b><br>
		<%
			String[] values = request.getParameterValues("pet");
			if (values != null) {
				for (int i = 0; i < values.length; i++) {
					%>
					<%= values[i] %>
					<%
				}
			}
		%>
	</p>
	<p>
		<b>request.getParameterNames() 메서드 사용</b><br>
		<%
			Enumeration paramEnum = request.getParameterNames();
			while (paramEnum.hasMoreElements()) {
				String name = (String)paramEnum.nextElement();
				%>
				<%= name %>
				<%
			}
		%>
	</p>
	<p>
		<b>request.getParameterMap() 메서드 사용</b><br>
		<%
			Map parameterMap = request.getParameterMap();
			String[] nameParam = (String[])parameterMap.get("name");
			String[] addressParam = (String[])parameterMap.get("address");
			String[] petParam = (String[])parameterMap.get("pet");
			if (nameParam != null) {
				%>
				name = <%= nameParam[0] %>
				address = <%= addressParam[0] %>
				pet = <%= petParam[0] %>
				<%
			}
		%>
	</p>
</body>
</html>