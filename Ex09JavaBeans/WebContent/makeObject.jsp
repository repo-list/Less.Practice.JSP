<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request" class="ex09javabeans.member.MemberInfo" />
<jsp:setProperty name="member" property="email" value="hello@world.com" />
<jsp:setProperty name="member" property="password" param="memberPw" />
<%--
	이 페이지에서 useObject.jsp 페이지를 불렀을 때, 정상적으로 member 값들이 출력됩니다.
	setProperty -> param은 파라미터 값을 이용하고 싶을 때 사용하며,
	param 속성과 value 속성은 당연히 함께 사용할 수 없습니다.
--%>
<%
	member.setId("madvirus");
	member.setName("테스트");
%>
<jsp:forward page="/useObject.jsp" />