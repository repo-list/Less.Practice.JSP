<%@ page contentType="text/html; charset=utf-8" %>
<%@ page session="true" %>
<%--
	page directive의 session 속성은 기본이 true이기 때문에, 사실 따로 지정해줄 필요는 없다.
--%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date time1 = new Date();
	Date time2 = new Date();
	time1.setTime(session.getCreationTime());
	time2.setTime(session.getLastAccessedTime());
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex11 - Session - Session Info</title>
</head>
<body>
	<span>세션 ID : <%= session.getId() %></span><br>
	<span>세션 생성 시각 : <%= formatter.format(time1) %></span><br>
	<span>최근 접근 시각 : <%= formatter.format(time2) %></span><br>
</body>
</html>