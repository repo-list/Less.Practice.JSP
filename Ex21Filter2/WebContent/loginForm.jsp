<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex21 - Filter2 - Login Form</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/login.jsp">
		<label for="memberId">아이디 : </label>
		<input id="memberId" name="id" type="text" />
		
		<label for="memberPw">암호 : </label>
		<input id="memberPw" name="password" type="password" />
		
		<input type="submit" value="로그인" />
	</form>
</body>
</html>