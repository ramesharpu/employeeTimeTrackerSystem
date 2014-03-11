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
	
</script>
</head>
<body>
	<p>
		<br />
	</p>
	<div class="formDiv">
		<form method="post" action="/employeeTimeTrackerSystem/AddUserProject">
			<table class="addUserProjecttableProperty">
				<tbody>
					<tr>
					</tr>
					<tr>
						<td colspan="3" align="center"><strong> <% if (request.getAttribute("message") != null)
 							out.println(request.getAttribute("message"));
 						else
 							out.println(" "); %></strong></td>
					</tr>
					<tr>
						<td colspan="3" align="center"><strong>Add User To Project</strong></td>
					</tr>
					<tr>
						<td align="center">User Id</td>
						<td colspan="2"><input class="textBoxStyle" id="add_user_id"
							name="add_user_id" type="text" placeholder="Enter the user id"
							tabindex="1" /></td>
					</tr>
					<tr>
						<td align="center">Project  Name</td>
						<td colspan="2"><input class="textBoxStyle"
							id="add_project_id" name="add_project_id" type="text"
							placeholder="Enter the project name" tabindex="2" /></td>
					</tr>
					<tr>
						<td align="center">Role  Name</td>
						<td colspan="2"><input class="textBoxStyle"
							id="add_role_id" name="add_role_id" type="text"
							placeholder="Enter the role name" tabindex="3" /></td>
					</tr>
					<tr>
						<td style="width: 119px" class="style3">&nbsp;</td>
						<td style="width: 141px" class="style1"><input class="button"
							name="Submit" type="submit" value="Add User to Project"
							tabindex="10" /></td>
					</tr>
					<tr>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>