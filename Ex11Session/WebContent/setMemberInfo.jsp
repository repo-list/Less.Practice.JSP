<%@ page contentType="text/html; charset=utf-8" %>
<%
	session.setAttribute("MEMBER_ID", "madvirus");
	session.setAttribute("NAME", "테스트");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex11 - Session - Set Member Info</title>
</head>
<body>
	<span>세션에 정보를 저장하였습니다.</span><br>
	<span>회원명 : <%= session.getAttribute("NAME") %></span><br>
	<span>아이디 : <%= session.getAttribute("MEMBER_ID") %></span><br>
</body>
</html>