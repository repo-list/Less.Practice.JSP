<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
	<title>Ex02 - Request</title>
	<meta charset="utf-8">
</head>
<body>
클라이언트 IP = <%= request.getRemoteAddr() %><br>
요청 정보 길이 = <%= request.getContentLength() %><br>
요청 정보 인코딩 = <%= request.getCharacterEncoding() %><br>
요청 정보 콘텐츠 타입 = <%= request.getContentType() %><br>
요청 정보 프로토콜 = <%= request.getProtocol() %><br>
요청 정보 전송 방식 = <%= request.getMethod() %><br>
요청 URI = <%= request.getRequestURI() %><br>
컨텍스트 경로 = <%= request.getContextPath() %><br>
서버 이름 = <%= request.getServerName() %><br>
</body>
</html>