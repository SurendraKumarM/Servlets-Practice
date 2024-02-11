<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
<!-- IF WE OPEN THIS PAGE IN BROWSER DIRECTLY THIS PAGE WILL NOT OPEN IT WILL REDICT TO LOGIN PAGE -->

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  // TO NOT GO BACK AFTER LOGOUT
		
		if(session.getAttribute("username") == null)      // THIS WILL CHECK THIS PAGE LOGIN OR NOT
		{
			response.sendRedirect("login.jsp");
		}
	%>
	Welcome....${username}
	<a href="Video.jsp">Videos Here</a>
	
	<form action="Logout">
		<input type="submit" value="logout">
	</form>
</body>
</html>