<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video Page</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-validate");  // HTTP 1.1
		//  response.setHeader("Pragma", "no-cache");      //  HTTP 1.0
		//  response.setHeader("Expires", "0");            //  Proxies
		if(session.getAttribute("username") == null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/OuBUUkQfBYM?si=6_oiGwto7mWzwAda" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</body>
</html>