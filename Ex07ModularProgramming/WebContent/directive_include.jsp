<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%--
	include directive는 코드 차원에서 다른 JSP를 포함하기 때문에 jsp:include 액션 태그와는 다른 용도로 사용한다.
	
	jsp:include 태그 -> 레이아웃의 한 구성 요소를 모듈화하기 위해 사용
	include directive ->
		1) 모든 JSP 페이지에서 사용하는 변수 지정
		2) 저작권 표시와 같이 모든 페이지에서 중복되는 간단한 문장
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex07 - Modular Programming - Include Directive</title>
</head>
<body>
	<%
		int number = 10;
	%>
	<%@ include file="sub/page03.jspf" %><br> <%-- 파일 안의 내용을 그대로 복붙한 후 처리하는 방식 --%>
	<span>공통 변수 DATAFOLDER = "<%= dataFolder %>"</span><br>
</body>
</html>