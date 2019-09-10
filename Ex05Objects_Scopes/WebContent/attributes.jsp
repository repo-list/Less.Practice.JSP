<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Date" %>
<%--
	<%@ page session="false" %> : can increase performance and reduce memory usage
 --%>
<%
	application.setAttribute("attr1", "속성1");

	session.setAttribute("nickname", "codingMaster");
	session.setAttribute("age", 20);
	session.setAttribute("regDate", new Date());
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex05 - Attributes</title>
</head>
<body>
	<%
		Enumeration<String> attrEnum = application.getAttributeNames();
		while (attrEnum.hasMoreElements()) {
			String name = attrEnum.nextElement();
			Object value = application.getAttribute(name);
	%>
	application 속성 : <b><%= name %></b> = <%= value %><br><br>
	<%
		}
	%>
	
	<%
		Enumeration<String> attrEnum2 = session.getAttributeNames();
		while (attrEnum2.hasMoreElements()) {
			String name = attrEnum2.nextElement();
			Object value = session.getAttribute(name);
	%>
	session 속성 : <b><%= name %></b> = <%= value %><br><br>
	<%
		}
	%>
</body>
</html>