<%@ page contentType="text/html; charset=utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Date" %>

<%
	HashMap<String, Object> mapData = new HashMap<>();
	mapData.put("name", "테스터");
	mapData.put("today", new Date());
%>
<c:set var="intArray" value="<%= new int[] {1,2,3,4,5} %>" />
<c:set var="map" value="<%= mapData %>" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex13 - JSTL - Use For-Each Tag</title>
</head>
<body>
	<h4>1부터 100까지 홀수의 합</h4>
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i}" />
		<!-- if sum is not there, make and initialize it, and if sum exists, use it -->
	</c:forEach>
	<span>결과 = ${sum}</span>
	<br><br>
	
	<h4>구구단 : 4단</h4>
	<ul>
		<c:forEach var="i" begin="1" end="9">
			<li>4 * ${i} = ${4 * i}</li>
		</c:forEach>
	</ul>
	<br>
	
	<h4>int형 배열</h4>
	
	<c:forEach var="element" items="${intArray}" begin="2" end="4" varStatus="status">
		value : ${element}, index : ${status.index}, count : ${status.count}<br>
	</c:forEach>
	<br>
	
	<h4>Map</h4>
	<c:forEach var="element" items="${map}">
		${element.key} = ${element.value}<br>
	</c:forEach>
</body>
</html>