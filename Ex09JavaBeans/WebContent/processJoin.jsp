<%@ page contentType="text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memberInfo" class="ex09javabeans.member.MemberInfo" />
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password" value="<%= memberInfo.getId() %>" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex09 - JavaBeans - Process Join</title>
</head>
<body>
	<p>아이디 : <jsp:getProperty name="memberInfo" property="id" /></p>
	<p>암호 : <jsp:getProperty name="memberInfo" property="password" /></p>
	<p>이름 : <jsp:getProperty name="memberInfo" property="name" /></p>
	<p>이메일 : <jsp:getProperty name="memberInfo" property="email" /></p>
</body>
</html>