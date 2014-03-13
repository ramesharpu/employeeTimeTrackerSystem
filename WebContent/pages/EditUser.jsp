<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/employeeTimeTrackerSystem/media/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="/employeeTimeTrackerSystem/media/css/jquery.js"></script>
<script type="text/javascript"
	src="/employeeTimeTrackerSystem/media/css/jquery-ui.js"></script>
<script>
jQuery(function(){
$("#edit_user_id").autocomplete("/employeeTimeTrackerSystem/pages/UserList.jsp");
});
</script>
</head>
<body>
	<p>
		<br />
	</p>
	<div class="formDiv">
		<form method="post" action="/employeeTimeTrackerSystem/UserEdit">
			<table class="editUsertableProperty">
				<tbody>
					<tr>
					</tr>
					<tr>
						<td colspan="3" align="center"><strong> <%
 	if (request.getAttribute("message") != null)
 		out.println(request.getAttribute("message"));
 	else
 		out.println(" ");
 %></strong></td>
					</tr>
					<%String test_user_role = (String) session.getAttribute("role");
					if ((test_user_role)!="user"){%>
					<tr>
						<td align="center">User Id</td>
						<td colspan="2"><input class="textBoxStyle" id="edit_user_id"
							name="edit_user_id" type="text" placeholder="Enter the user id"
							tabindex="1" /></td>
					</tr>
					<%}else{ %>
					<tr>
						<td align="center">User Id</td>
						<td colspan="2"><input class="textBoxStyle" id="edit_user_id"
							name="edit_user_id" type="text"
							value=<%=session.getAttribute("user_id") %> readonly tabindex="1" /></td>
					</tr>
					<%} %>
					<tr>
						<td style="width: 119px" class="style3">&nbsp;</td>
						<td style="width: 141px" class="style1"><input class="button"
							name="Submit" type="submit" value="Edit User Details"
							tabindex="10" /></td>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>