<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex15 - ServiceDAO - Confirm Deletion</title>
</head>
<body>
	<form action="deleteMessage.jsp" method="post">
		<input type="hidden" name="messageId" value="${param.messageId}" />
		<p>메시지를 삭제하시려면 암호를 입력하세요 : </p>
		<label for="pw">암호 : </label>
		<input id="pw" name="password" type="password" /><br>
		<input type="submit" value="메시지 삭제하기" />
	</form>
</body>
</html>