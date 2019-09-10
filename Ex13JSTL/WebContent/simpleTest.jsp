<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ex13jstl.Member" %>
<%@ page import="java.util.Date" %>
<%
	String name2 = "테스터2";

	Member member1 = new Member();
	Member member2 = new Member();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex13 - JSTL - Simple Test</title>
</head>
<body>
	<%-- value 속성 사용 예 --%>
	<c:set var="name1" value="테스터" />
	<c:set var="name2" value="<%= name2 %>" scope="request" />
	<c:set var="name3" value="${'테스터3'}" />
	
	<span>테스트 출력 : ${name1 += ", " += name2 += ", " += name3}</span><br>
	
	<%-- 태그의 몸체를 값으로 사용하는 예 --%>
	<c:set var="name4">테스터4</c:set> <!-- 5,6도 나머지와 동일 -->
	
	<span>테스트 출력 2 : ${name4}</span>
	<br><br>
	
	<%-- c:set 태그를 통한 property 설정 --%>
	<c:set target="<%= member1 %>" property="name" value="mem1" />
	<span>멤버 1 이름  : <%= member1.getName() %></span>
	<br><br>
	
	<c:set var="m2" value="<%= member2 %>" />
	<c:set target="${m2}" property="name" value="mem2" />
	<c:set target="${m2}" property="age" value="15" />
	<c:set target="${m2}" property="regDate" value="<%= new Date() %>" />
	<span>멤버 2 이름 : ${m2.name}</span><br>
	<span>멤버 2 나이 : ${m2.age}</span><br>
	<span>멤버 2 가입 날짜 : ${m2.regDate}</span><br>
	
	<c:set var="test" value="테스트1" /> <!-- 기본 scope : page -->
	<c:set var="test" value="테스트2" scope="request" />
	<c:set var="test" value="테스트3" scope="session" />
	<c:set var="test" value="테스트4" scope="application" />
	
	테스트 :
	${pageScope.test}
	${requestScope.test}
	${sessionScope.test}
	${applicationScope.test}
	끝
	<br><br>
	
	<c:remove var="test" /> <!-- scope를 따로 지정하지 않았으므로, 모든 scope의 test 변수를 삭제 -->
	테스트 2 :
	${pageScope.test}
	${requestScope.test}
	${sessionScope.test}
	${applicationScope.test}
	끝
	<br><br>
	
	<c:if test="true">조건1</c:if> <!-- true -->
	<c:if test="some text">조건2</c:if> <!-- false -->
	<c:if test="${true}">조건3</c:if> <!-- true -->
	<c:if test="<%= true %>">조건4</c:if> <!-- true -->
</body>
</html>