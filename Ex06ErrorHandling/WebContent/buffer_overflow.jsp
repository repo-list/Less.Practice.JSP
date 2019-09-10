<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%--
	버퍼가 다 차면 버퍼의 내용을 웹 브라우저에 전달하는데, 처음 버퍼를 flush할 때 응답 헤더를 전송하므로
	응답 코드와 에러 페이지의 내용을 웹 브라우저에 완전하게 전송하려면 버퍼가 flush되면 안 된다. 만약 버퍼가
	flush된 이후에 에러가 발생하면, 웹 브라우저에 이미 200 응답 상태 코드와 일부 응답 결과 화면이 전송되기 때문에,
	그 뒤에 에러 페이지의 내용이 고스란히 붙게 된다.
	또한, Exception이 발생하면 응답 상태 코드가 500이 되어야 하는데 이미 200 응답 상태 코드를 전송했기 때문에
	웹 브라우저는 정상적으로 응답이 도착했다고 판단한다.
	따라서, Exception이 발생하기 전에 버퍼가 flush될 가능성이 있다면, 버퍼 크기를 미리 늘리는 작업이 필요하다. 
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
</head>
</html>