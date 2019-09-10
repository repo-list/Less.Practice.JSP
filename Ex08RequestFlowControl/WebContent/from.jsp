<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%--
	jsp:forward 액션 태그를 실행하면 생성했던 출력 결과는 모두 제거됩니다.
	jsp:forward 액션 태그는, 포워딩된 페이지의 결과를 출력하지만, 표시 URL은 그대로 유지됩니다.
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex08 - Request Flow Control - From.jsp</title>
</head>
<body>
	<p>이 페이지는 from.jsp가 생성한 것입니다.</p>
	<jsp:forward page="/to.jsp" />
</body>
</html>