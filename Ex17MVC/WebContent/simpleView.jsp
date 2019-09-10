<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex17 - MVC - Simple View</title>
</head>
<body>
	<%-- request 객체의 속성으로 저장된 "result"의 값을 읽어와서 출력 --%>
	<%-- 만약 request가 정의되지 않았을 경우 EL은 null일 시 빈 스트링을 출력하기에 문제가 되지 않음 --%>
	<span>결과 : ${result}</span>
</body>
</html>