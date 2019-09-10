<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Ex14 - JDBC - Update Member List</title>
	<script>
		function addEventListeners() {
			document.getElementById("insert").addEventListener("click", function() {
				location.href = "/Ex14JDBC/update/queryInsert.jsp";
			});
			document.getElementById("update").addEventListener("click", function() {
				location.href = "/Ex14JDBC/update/queryUpdate.jsp";
			});
			document.getElementById("delete").addEventListener("click", function() {
				location.href = "/Ex14JDBC/update/queryDelete.jsp";
			});
		}
	</script>
</head>
<body onload="addEventListeners()">
	<button id="insert">INSERT</button>
	<button id="update">UPDATE</button>
	<button id="delete">DELETE</button>
</body>
</html>