<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex06 - Error Handling - Page 01</title>
</head>
<body>
name 파라미터의 값 : <%= request.getParameter("name") %>
<%-- "%>" 아래의 빨간 줄은 이클립스 error detection 기능의 버그 --%>

<%-- 위의 메서드가 null을 반환하므로, 아래의 문장은 500 Error를 발생시킵니다. --%>
<%= request.getParameter("name").toUpperCase() %>

</body>
</html>