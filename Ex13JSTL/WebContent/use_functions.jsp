<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex13 - JSTL - Use Functions</title>
</head>
<body>
	<c:set var="str1" value="Functions <태그>를 사용합니다." />
	<c:set var="str2" value="사용" />
	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10" />
	
	length(str1) = ${fn:length(str1)}<br>
	toUpperCase(str1) = ${fn:toUpperCase(str1)}<br>
	toLowerCase(str1) = ${fn:toLowerCase(str1)}<br>
	...<br>
	
	<c:set var="array" value="${fn:split(tokens, ',')}" />
	join(array, "-") = "${fn:join(array, '-')}"<br>
	escapeXml(str1) = "${fn:escapeXml(str1)}"<br> <!-- 실행 결과 코드 보면 차이 확인 가능 -->
</body>
</html>