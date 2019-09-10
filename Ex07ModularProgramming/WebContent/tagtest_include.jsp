<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex07 - Modular Programming - Include Tag Test</title>
</head>
<body>
	<span>:: main.jsp에서 생성한 내용</span><br>
	<pre><jsp:include page="sub/page01.jsp" flush="false" /></pre><br>
	<span>:: include 이후의 내용</span><br>
</body>
</html>