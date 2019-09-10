<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex12 - ExpressionLanguage - Lambda</title>
</head>
<body>
	${greaterThan = (a, b) -> a > b ? true : false; ""}
	<span>${greaterThan(1, 3)}</span>
	<span>${((a, b) -> a > b ? true : false)(3, 1)}</span>
	
	${factorial = (n) -> n == 1 ? 1 : n * factorial(n-1); ""}
	<%-- 위의 람다식처럼 파라미터가 한 개일 경우 괄호는 생략해도 된다. --%>
	<span>${factorial(5)}</span>
</body>
</html>