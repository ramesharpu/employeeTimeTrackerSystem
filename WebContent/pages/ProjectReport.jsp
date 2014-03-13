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
		<form method="post"
			action="/employeeTimeTrackerSystem/pages/ProjectReportDisplay.jsp">
			<table class="editUsertableProperty">
				<tbody>
				<tr></tr>
					<tr>
						<td align="center">User Id</td>
						<td colspan="2"><input class="textBoxStyle" id="project_name"
							name="project_name" type="text" placeholder="Enter the project Name"
							tabindex="1" /></td>
					</tr>
					<tr>
						<td style="width: 119px" class="style3">&nbsp;</td>
						<td style="width: 141px" class="style1"><input class="button"
							name="Submit" type="submit" value="Get Report"
							tabindex="10" /></td>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>