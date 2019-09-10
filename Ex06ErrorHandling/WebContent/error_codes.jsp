<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%--
	200 : 요청을 정상적으로 처리함.
	307 : 임시로 페이지를 리다이렉트함.
	400 : 클라이언트의 요청이 잘못된 구문으로 구성됨.
	401 : 접근을 허용하지 않음.
	404 : 요청한 URL을 처리하기 위한 자원이 존재하지 않음.
	405 : 요청한 메서드 (GET, POST, HEAD 등의 전송 방식)를 허용하지 않음.
	500 : 서버 내부 에러가 발생함 (예를 들어, JSP에서 익셉션 발생)
	503 : 서버가 일시적으로 서비스를 제공할 수 없음 (급격하게 부하가 몰리거나 서버가 임시 보수 중인 경우가 해당)
	
	- JSP가 정상적으로 실행되는 경우 응답 코드로 200이 전송되며, response.sendRedirect() 메서드를 이용할 경우 응답 코드로 307을 전송한다.
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex06 - Error Handling - Error Codes</title>
</head>
</html>