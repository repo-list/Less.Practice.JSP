<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="util.FormatUtil" %>
<%
	request.setAttribute("price", 12345L);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex12 - ExpressionLanguage - View Price 2</title>
</head>
<body>
	<span>가격은 <b>${FormatUtil.number(price, "#,##0")}</b>원 입니다.</span><br>
	<span>테스트 코드 : ${Long.parseLong("10")}</span><br>
</body>
</html>