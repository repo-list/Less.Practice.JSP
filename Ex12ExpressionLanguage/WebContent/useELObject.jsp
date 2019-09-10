<%@ page contentType="text/html; charset=utf-8" %>
<%
	request.setAttribute("name", "테스트");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>EL Object</title>
</head>
<body>
	<span>요청 URI : ${pageContext.request.requestURI}</span><br>
	<span>request의 name 속성 : ${requestScope.name}</span><br>
	<span>code 파라미터 : ${param.code}</span><br>
	<span>JSESSIONID : ${cookie.JSESSIONID.value}</span><br>
	${var1 = 10; ""}
	${var2 = ['가', '나', '다']; ""}
</body>
</html>