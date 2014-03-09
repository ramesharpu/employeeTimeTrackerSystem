<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<html>
<head>
</head>
<body>
	<table width=100%">
		<tr>
			<td align="center"><h3>
					<b><i>
							<%
								if (request.getAttribute("message") != null)
									out.println(request.getAttribute("message"));
								else
									out.println(" ");
							%>
					</i></b>
				</h3></td>
		</tr>
	</table>
</body>
</html>