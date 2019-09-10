<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Ex05 - Objects - Application 2</title>
</head>
<body>
	<pre><%
		char[] buffer = new char[128];
		int len = -1;
		
		// 다음의 두 문장은 완벽하게 같은 실행 결과를 보여준다.
		// String filePath = application.getRealPath("/text/info.txt");
		String filePath = application.getRealPath("text/info.txt");
		out.println("Real File Path : " + filePath + "<br><br>");
		
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