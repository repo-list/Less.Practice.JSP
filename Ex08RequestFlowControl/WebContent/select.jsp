<%@ page contentType="text/html; charset=utf-8" %>
<%--
	참고로, jsp:forward 태그 안에 jsp:param 액션 태그를 사용하면, 파라미터를 추가로 전달할 수 있다.
	예시 :
	<jsp:forward page="moveTo.jsp">
		<jsp:param name="first" value="BK" />
		<jsp:param name="last" value="Choi" />
	</jsp:forward>
	
	절대 경로  vs 상대 경로 ?
	명확한 이유가 있지 않은 이상 (같은 폴더 내이면서, 폴더 구조가 변경될 가능성이 사실상 희박한 경우 등)
	절대 경로 사용을 권고. (내 생각도 동일)
 --%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex08 - Request Flow Control - Select.jsp</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/view.jsp">
		<span>보고 싶은 페이지 선택 :</span>
		<select name="code">
			<option value="A">A 페이지</option>
			<option value="B">B 페이지</option>
			<option value="C">C 페이지</option>
		</select>
		<input type="submit" value="이동" />
	</form>
</body>
</html>