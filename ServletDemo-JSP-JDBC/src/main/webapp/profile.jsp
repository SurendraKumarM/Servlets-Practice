<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc", "root", "3142");
		Statement statement = con.createStatement();
		String query = "Select * from admin where id=2";
		ResultSet resultSet = statement.executeQuery(query);
		resultSet.next();
	%>
	Id : <%= resultSet.getInt(1) %><br>
	Name : <%= resultSet.getString(2) %><br>
	Email : <%= resultSet.getString(3) %><br>
	Dept : <%= resultSet.getString(4) %><br>
	Password : <%= resultSet.getString(5) %><br>
</body>
</html>