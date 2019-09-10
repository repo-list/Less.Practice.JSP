<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%--
	web.xml 파일에 기본 설정 등록
 --%>
<%
	request.getParameter("nothing").toUpperCase(); // 500 에러 출력
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex06 - Error Handling - Print Page 500</title>
</head>
</html>