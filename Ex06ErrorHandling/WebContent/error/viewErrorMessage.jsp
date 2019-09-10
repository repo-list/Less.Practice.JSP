<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex06 - Error Handling - Error Page</title>
</head>
<body>
	요청 처리 과정에서 에러가 발생하였습니다.<br>
	빠른 시간 내에 문제를 해결하도록 하겠습니다.<br>
	<p>
		에러 타입 : <%= exception.getClass().getName() %><br>
		에러 메시지 : <b><%= exception.getMessage() %></b>
	</p>
	<!-- 
		주의 : 인터넷 익스플로러에서는 페이지의 길이가 512바이트보다 작을 경우, 자체 에러 페이지를 송출함. 따라서
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet,
		Lorem ipsum dolor sit amet, 실화?
	 -->
</body>
</html>