<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>

<%
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
	}
	catch (ClassNotFoundException e) {
		out.println(e.getMessage());
		e.printStackTrace();
	}

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String username = "test";
	String password = "a1b2c3d4!@#";
	
	String url = "jdbc:mysql://localhost:3306/mydb?useUnicode=true&characterEncoding=utf8&useTimezone=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String query;
	int updateCount;
	try {
		conn = DriverManager.getConnection(url, username, password);
		stmt = conn.createStatement();
		
		query = "DELETE FROM `table_test` WHERE `id_test` = 4;";
		updateCount = stmt.executeUpdate(query);
		
		out.println("Update Count : " + updateCount + "<br><br>");
		
		query = "SELECT * FROM `table_test`;";
		rs = stmt.executeQuery(query);
		
		String col1, col2;
		int col3;
		String col4;
		while (rs.next()) {
			col1 = rs.getString("column1");
			col2 = rs.getString("column2");
			col3 = rs.getInt("column3");
			col4 = rs.getString("column4");
			
			out.println("Row : " + col1 + ", " + col2 + ", " + col3 + ", " + col4 + "<br>");
		}
	}
	catch (SQLException e) {
		out.println(e.getMessage());
		e.printStackTrace();
	}
	finally {
		if (rs != null) try {rs.close(); rs = null;} catch (SQLException e) {}
		if (stmt != null) try {stmt.close(); stmt = null;} catch (SQLException e) {}
		if (conn != null) try {conn.close(); conn = null;} catch (SQLException e) {}
	}
%>