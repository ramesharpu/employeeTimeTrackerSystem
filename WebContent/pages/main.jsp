<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<title>Employee Time Tracker</title>
</head>
<body background=#1E90FF>
	<table width="100%" bgcolor="#C0C0C0">
		<tr>
			<td><b>&nbsp;&nbsp;&nbsp; <%String l_name = (String) session.getAttribute("l_name");out.println(l_name + " , ");%>
					<%String f_name = (String) session.getAttribute("f_name");out.println(f_name);%>
			</b></td>
			<td><b> <% Date date = new Date();out.print("<h4 align=\"right\">"+date.toString()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h4>");%>
			</b></td>
		</tr>
	</table>
	<%@ include file="menu.jsp"%>
</body>
</html>