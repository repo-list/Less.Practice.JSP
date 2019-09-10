<%@ page contentType="text/html; charset=utf-8" %>
<%--
<jsp:useBean id="member" scope="request" class="ex09javabeans.member.MemberInfo" />
--%>
 <jsp:useBean id="member" scope="request" type="ex09javabeans.member.MemberInfo" />
<%--
	단독으로 페이지를 실행했을 때, member 객체 getter 메서드들의 리턴 값은 null이다.
	class 속성 대신 type 속성에 자바 경로를 입력해주면, 해당 객체가 존재하지 않을 경우 에러를 발생시킨다.
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex09 - JavaBeans - Use Object</title>
</head>
<body>
<%= member.getName() %> (<%= member.getId() + " / " + member.getEmail() %>) 회원님
패스워드가 <%= member.getPassword() %> 이네요. 해킹당하셨습니다!
</body>
</html>