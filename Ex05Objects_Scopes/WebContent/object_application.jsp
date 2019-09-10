<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex05 - Objects - Application</title>
</head>
<body>
	초기화 파라미터 목록 :
	<ul>
	<%
		Enumeration<String> initParamEnum = application.getInitParameterNames();
		while (initParamEnum.hasMoreElements()) {
			String initParamName = initParamEnum.nextElement();
	%>
		<li><%= initParamName %> = <%= application.getInitParameter(initParamName) %></li>
	<%
		}
	%>
	<br><br>
	
	서버 정보 : <%= application.getServerInfo() %><br>
	서블릿 규약 메이저 버전 : <%= application.getMajorVersion() %><br>
	서블릿 규약 마이너 버전 : <%= application.getMinorVersion() %>
	<br><br>
	
	<%
		application.log("로그 메시지 기록");
	%>
	로그 메시지를 기록합니다.
	<br><br>
	
	<pre><%
		char[] buffer = new char[128];
		int len = -1;
		
		// String filePath = "D:\\Temp\\test.txt";
		// String filePath = application.getRealPath("text/info.txt");
		// String filePath = "text/info.txt"; // 에러
		String filePath = application.getRealPath("/text/info.txt");
		
		try (InputStreamReader isr = new InputStreamReader(new FileInputStream(filePath), "UTF-8")) {
			while ((len = isr.read(buffer)) != -1) {
				String str = new String(buffer, 0, len);
				out.print(str);
				application.log(str);
			}
		}
		catch (IOException e) {
			out.println("익셉션 발생 : " + e.getMessage());
		}
	%></pre>
</ul>
</body>
</html>