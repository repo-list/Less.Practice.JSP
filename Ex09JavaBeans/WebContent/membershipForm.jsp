<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>회원가입 입력 폼</title>
</head>
<body>
	<form action="/Ex09JavaBeans/processJoin.jsp" method="post">
		<label for="userId">아이디 : </label>
		<input id="userId" name="id" type="text" size="10" /><br>
		
		<label for="userName">이름 : </label>
		<input id="userName" name="name" type="text" size="10" /><br>
		
		<label for="userEmail">이메일 : </label>
		<input id="userEmail" name="email" type="text" size="10" /><br>
		
		<input type="submit" value="회원가입" />
	</form>
</body>
</html>