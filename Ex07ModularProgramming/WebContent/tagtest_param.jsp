<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
	request.setCharacterEncoding("UTF-8"); // 요청 변수를 활용할 때는 인코딩을 맞춰줄 것.
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex07 - Modular Programming - Param Tag Test</title>
	<style>
		table, tr, th, td {
			border: 1px solid black;
			border-collapse: collapse;
		}
	</style>
</head>
<body>
	<table>
		<tr>
			<td>제품번호</td>
			<td>XXXX</td>
		</tr>
		<tr>
			<td>가격</td>
			<td>10,000원</td>
		</tr>
	</table>
	
	<%-- jsp:param은 클라이언트가 요청한 값보다 우선 순위가 높음. --%>
	<jsp:include page="sub/page02.jsp" flush="false">
		<jsp:param name="type" value="A" />
	</jsp:include>
</body>
</html>