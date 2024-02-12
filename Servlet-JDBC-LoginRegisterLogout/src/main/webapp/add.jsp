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
	<form action="addcontact" method="post">
		<pre>
			NAME	: <input type="text" name="name">
			PHONE	: <input type="text" name="phone">
					  <input type="text" name="email" value="<%= email %>" hidden="true">
					  <input type="submit" value="save">
		</pre>
	</form>
<% 
	} else {
		response.sendRedirect("login.jsp");
	}
%>

</body>
</html>