<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex05 - Scopes</title>
</head>
<body>
	<%--
		- 웹 어플리케이션은 다음의 네 가지 영역(scope)으로 구성된다.
		1) PAGE 영역 : 하나의 JSP 페이지를 처리할 때 사용되는 영역
		2) REQUEST 영역 : 하나의 HTTP 요청을 처리할 때 사용되는 영역
		3) SESSION 영역 : 하나의 웹 브라우저와 관련된 영역
		4) APPLICATION 영역 : 하나의 웹 어플리케이션과 관련된 영역
		
		포함 관계 : PAGE < REQUEST < SESSION < APPLICATION
		
		기본 객체 :
			PAGE -> pageContext
			REQUEST -> request
			SESSION -> session
			APPLICATION -> application
		
	 --%>
</body>
</html>