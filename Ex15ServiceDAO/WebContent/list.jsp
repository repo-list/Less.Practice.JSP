<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ page import="guestbook.model.Message" %>
<%@ page import="guestbook.service.MessageListView" %>
<%@ page import="guestbook.service.GetMessageListService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String pageNumberStr = request.getParameter("page");
	int pageNumber = 1;
	if (pageNumberStr != null) {
		pageNumber = Integer.parseInt(pageNumberStr);
	}
	
	GetMessageListService messageListService = GetMessageListService.getInstance();
	MessageListView viewData = messageListService.getMessageList(pageNumber);
%>

<c:set var="viewData" value="<%= viewData %>" />

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex15 - ServiceDAO - Show List</title>
</head>
<body>
	<form action="writeMessage.jsp" method="post">
		<label for="name">이름 : </label>
		<input id="name" name="guestName" type="text" /><br>
		
		<label for="pw">암호 : </label>
		<input id="pw" name="password" type="password" /><br>
		
		<label for="msg">메시지 : </label>
		<textarea id="msg" name="message" cols="30" rows="3"></textarea><br>
		
		<input type="submit" value="메시지 남기기" />
	</form>
	
	<hr>
	<c:if test="${viewData.isEmpty()}">
	<p>등록된 메시지가 없습니다.</p>
	</c:if>

	<c:if test="${!viewData.isEmpty()}">
	<table>
		<c:forEach var="item" items="${viewData.messageList}">
		<tr>
			<td>메시지 번호 : ${item.id}</td>
			<td>손님 이름 : ${item.guestName}</td>
			<td>패스워드 : ${item.password}</td>
			<td>메시지 : ${item.message}</td>
			<td><a href="confirmDeletion.jsp?messageId=${item.id}">[삭제하기]</a></td>
		</tr>
		</c:forEach>
	</table>
	
	<c:forEach var="pageNum" begin="1" end="${viewData.totalPageCount}">
	<a href="list.jsp?page=${pageNum}">[${pageNum}]</a>
	</c:forEach>
	</c:if>
</body>
</html>