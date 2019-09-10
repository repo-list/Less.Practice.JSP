<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex05 - Objects - pageContext</title>
</head>
<body>
	<%
		HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
	%>
	request 기본 객체와 pageContext.getRequest()의 동일 여부 :
	<%= request == httpRequest %>
	<br>
	
	pageContext.getOut() 메서드를 사용한 데이터 출력 :
	
	<% pageContext.getOut().println("안녕하세요!"); %>
</body>
</html>