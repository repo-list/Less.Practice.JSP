<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex14 - JDBC - View Member List</title>
</head>
<body>
	<%
		// 1. JDBC 드라이버 존재 여부 체크 (없어도 되는 문장)
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch (ClassNotFoundException e) {
			// JDBC 드라이버를 lib 폴더에 넣지 않았거나, 파일 자체의 오류
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			// 2. 기본 정보 세팅
			String address = "localhost:3306/";
			String dbName = "mydb";
			String username = "test";
			String password = "a1b2c3d4!@#";
			
			// 3. 데이터베이스 커넥션 생성
			// 참고 링크 -> https://dev.mysql.com/doc/connector-j/5.1/en/connector-j-usagenotes-known-issues-limitations.html
			String url = "jdbc:mysql://" + address + dbName +
						 "?useUnicode=true&characterEncoding=utf8&useTimezone=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			conn = DriverManager.getConnection(url, username, password);
			
			// 4. Statement 생성
			stmt = conn.createStatement();
			
			// 5. 쿼리 실행
			String query = "SELECT * FROM `table_test` ORDER BY column1 DESC;";
			rs = stmt.executeQuery(query);
			
			// 6. 결과 출력
			while (rs.next()) {
	%>
	<span>Row : <%= rs.getString("column1") + ", " + rs.getString("column2") + ", " +
					rs.getString("column3") + ", " + rs.getString("column4") %></span><br>
	<%
			}
		}
		catch (SQLException e) {
			out.println(e.getMessage());
			e.printStackTrace();
		}
		finally {
			// 7. 사용한 Statement 처리
			if (rs != null) try { rs.close(); } catch (SQLException e) {}
			if (stmt != null) try { stmt.close(); } catch (SQLException e) {}
			
			// 8. 커넥션 종료
			if (conn != null) try { conn.close(); } catch (SQLException e) {}
		}
	%>
</body>
</html>