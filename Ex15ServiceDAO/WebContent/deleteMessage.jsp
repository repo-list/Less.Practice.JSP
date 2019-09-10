<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ page import="guestbook.service.DeleteMessageService" %>
<%@ page import="guestbook.service.InvalidPasswordException" %>
<%
	int messageId = Integer.parseInt(request.getParameter("messageId"));
	String password = request.getParameter("password");
	boolean invalidPassword = false;
	
	try {
		DeleteMessageService deleteService = DeleteMessageService.getInstance();
		deleteService.deleteMessage(messageId, password);
	}
	catch (InvalidPasswordException e) {
		invalidPassword = true;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex15 - ServiceDAO - Delete Message</title>
</head>
<body>
	<% if (!invalidPassword) { %>
	<p>메시지를 삭제하였습니다.</p>
	<% } else { %>
	<p>입력한 암호가 올바르지 않습니다. 암호를 확인해주세요.</p>
	<% } %>
	<br>
	<a href="list.jsp">[목록 보기]</a>
</body>
</html>