<%@ page contentType="text/html; charset=utf-8" %>
<%--
	쿠키 vs 세션 :
	쿠키 대신에 세션을 사용하는 가장 큰 이유는 세션이 쿠키보다 보안에서 앞선다는 점이다.
	쿠키의 이름이나 데이터는 네트워크를 통해 전달되기 때문에 HTTP 프로토콜을 사용하는 경우,
	중간에 누군가 쿠키의 값을 읽어올 수 있다. 하지만, 세션의 값은 오직 서버에만 저장되기 때문에
	중요한 데이터를 저장하기에 알맞은 장소이다.
	
	세션을 사용하는 두 번째 이유는 웹 브라우저가 쿠키를 지원하지 않을 경우 또는 강제적으로 쿠키를 막는 경우
	쿠키는 사용할 수 없게 되지만, 세션은 쿠키 설정 여부에 상관 없이 사용할 수 있다는 점이다.
	서블릿/JSP는 쿠키를 사용할 수 없는 경우, URL 재작성 방식을 사용해서 세션 ID를 웹 브라우저와 웹 서버가
	공유할 수 있다.
	
	
--%>