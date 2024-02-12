<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String email = (String) session.getAttribute("email");
	if(email != null) {
%>
	<div class="topnav">
		<a href="add.jsp">ADD CONTACT</a><br>
		<a href="view.jsp">VIEW CONTACTS</a><br><br>
		<a href="logout">LOGOUT</a>
	</div>

<%
	} 
%>

</body>
</html>