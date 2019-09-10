<%@ page contentType="text/html; charset=utf-8" %>
<jsp:useBean id="member" scope="request" class="ex09javabeans.member.MemberInfo" />
<jsp:setProperty name="member" property="*" />
<%--
	property의 값을 asterisk(*)로 적어주면, 같은 파라미터들을 알아서 찾은 다음 값을 세팅해준다.
--%>
<jsp:forward page="/useObject.jsp" />