<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex13 - JSTL - Use If Tag</title>
</head>
<body>
	<c:if test="true">무조건 수행<br></c:if>
	<c:if test="${param.name == 'bk'}">
		name 파라미터의 값이 ${param.name} 입니다.<br>
	</c:if>
	
	<c:if test="${18 <= param.age}">
		당신의 나이는 18세 이상입니다.<br>
	</c:if>
</body>
</html>