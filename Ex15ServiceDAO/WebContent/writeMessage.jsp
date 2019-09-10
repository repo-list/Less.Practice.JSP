<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ page import="guestbook.model.Message" %>
<%@ page import="guestbook.service.WriteMessageService" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="message" class="guestbook.model.Message">
	<jsp:setProperty name="message" property="*" />
	<%--
		위의 문장은,
		message.setGuestName(request.getParameter("guestName"));
		message.setPassword(request.getParameter("password"));
		message.setMessage(request.getParameter("message"));
		와 같은 의미이다.
	 --%>
</jsp:useBean>
<%
	WriteMessageService writeService = WriteMessageService.getInstance();
	writeService.write(message);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex15 - ServiceDAO - Write Message</title>
</head>
<body>
<p>방명록에 메시지를 남겼습니다.</p>
<a href="list.jsp">[목록 보기]</a>
</body>
</html>