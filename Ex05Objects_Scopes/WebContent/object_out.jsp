<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page buffer="8kb" autoFlush="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex05 - Objects - out</title>
</head>
<body>
	<%
		out.println("안녕하세요?<br>");
		out.println("out 기본 객체를 사용하여 출력한 결과입니다.<br>");
	%>
	<%
		int score = 86;
	
		// out.println() 메서드는 scriptlet과 표현식이 복잡하게 얽혀야 할 경우, 다음과 같이 코드의 깔끔함을 위하여 사용될 수 있다.
		out.println("Grade : ");
		if (score >= 90) {
			out.println("A");
		}
		else if (score >= 80) {
			out.println("B");
		}
		else if (score >= 70) {
			out.println("C");
		}
		else if (score >= 60) {
			out.println("D");
		}
		else {
			out.println("F");
		}
	%>
	<br><br>
	
	버퍼 크기 : <%= out.getBufferSize() %><br>
	남은 크기 : <%= out.getRemaining() %><br>
	autoFlush : <%= out.isAutoFlush() %><br>
</body>
</html>