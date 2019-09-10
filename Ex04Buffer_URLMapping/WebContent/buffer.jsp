<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%-- <%@ page buffer="1kb" autoFlush="false" %> --%>
<%@ page buffer="1kb" autoFlush="true" %>
<%-- buffer를 none으로 설정할 경우 JSP 출력 내용을 곧바로 브라우저에 전송. --%>
<%-- 이 때는 jsp:forward action 태그 사용 불가능 --%>
<%-- autoFlush="true" : 버퍼가 다 차면 버퍼를 플러시하고 계속해서 작업 진행 --%>
<%-- autoFlush="false" : 버퍼가 다 차면 Exception을 발생시키고 작업 중지 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex04 - Buffer</title>
</head>
<body>
	<% for (int i = 0; i < 1000; i++) { %>
		1234
	<% } %>
</body>
</html>