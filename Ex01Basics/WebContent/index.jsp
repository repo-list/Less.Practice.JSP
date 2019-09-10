<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>
<%
	Date now = new Date();
	Calendar cal = Calendar.getInstance();
%>
<%
	int sum = 0;
	for (int i = 1; i <= 10; i++) sum += i;
%>
<%!
	private int multiply(int a, int b) {
		int c = a * b;
		return c;
	}

	private int add(int a, int b) {
		int c = a + b;
		return c;
	}
	
	private int subtract(int a, int b) {
		int c = a - b;
		return c;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Ex01 - Basics</title>
	<meta charset="utf-8">
</head>
<body>
현재 시각 : <%= now %><br>
오늘은
	<%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH) + 1 %>월
	<%= cal.get(Calendar.DATE) %>일
입니다.<br>
1부터 10까지의 합은 <%= sum %> 입니다.<br>
10 * 25 = <%= multiply(10, 25) %><br>
<%
	int value1 = 3;
	int value2 = 9;
	
	int addResult = add(value1, value2);
	int subtractResult = subtract(value1, value2);
%>
<%= value1 %> + <%= value2 %> = <%= addResult %><br>
<%= value1 %> - <%= value2 %> = <%= subtractResult %><br>
</body>
</html>