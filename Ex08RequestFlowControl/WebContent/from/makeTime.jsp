<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Calendar" %>
<%
	Calendar calendar = Calendar.getInstance();
	request.setAttribute("time", calendar);
%>
<jsp:forward page="/to/viewTime.jsp" />