<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/el-functions.tld" %>
<%
	request.setAttribute("price", 12345);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex12 - ExpressionLanguage - View Price</title>
</head>
<body>
	<span>오늘은 <b>${elfunc:formatNumber(price, "#,##0")}</b>원 입니다.</span>
</body>
</html>