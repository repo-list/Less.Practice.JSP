<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%-- JSP 전체 주석
<%
	// Single-Line Comment
	/*
		Multi-Line Comments
	*/
%>
 --%>
<%
	// 캐시 설정 해제
	response.setHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "No-cache");
	response.setDateHeader("Expires", 1L);
%>
<%
	/* 
	String machineLearning = URLEncoder.encode("기계_학습", "utf-8");
	response.sendRedirect("https://ko.wikipedia.org/wiki/" + machineLearning);
	 */
	response.sendRedirect("https://ko.wikipedia.org/wiki/기계_학습");
	/* response.sendRedirect("second.jsp"); */
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex03 - Response</title>
</head>
</html>