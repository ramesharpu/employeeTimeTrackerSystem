<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<html>
<head>
</head>
<body>
<font size="5"> <b><i> <%
 	if (request.getAttribute("message") != null)
 		out.println(request.getAttribute("message"));
 	else
 		out.println(" ");
 %>
 </i></b></font>
</body>
</html>