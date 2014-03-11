<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/employeeTimeTrackerSystem/media/css/style.css" rel="stylesheet" type="text/css" />
<script src="/employeeTimeTrackerSystem/media/css/menu.js" type="text/javascript"></script>
<!-- <script src="/employeeTimeTrackerSystem/media/css/formValidation.js" type="text/javascript"></script> -->
<script>
	validateForm(){
		var x = document.forms["addNewProject"]["project_name"].value;
		if (x == null || x == "") {
			alert("Project name cannot be blank");

	}
	}
</script>
</head>
<body>
	<div class="formDiv">
		<form method="post" name="addNewProject" action="/employeeTimeTrackerSystem/AddNewProject"
			onsubmit="return validateForm()">
			<table style="width: 100%">
				<tr>
					<td style="width: 77px">&nbsp;</td>
					<td style="width: 516px">

						<table class="addProjecttableProperty">
							<tbody>
								<tr>
									<td colspan="3" align="center"><strong> <% if (request.getAttribute("message") != null)
								 			out.println(request.getAttribute("message"));
 										else
									 		out.println(" ");
									 %></strong></td>
								</tr>
								<tr>
									<td colspan="3" align="center"><strong>Add New
											Project</strong></td>
								</tr>
								<tr>
									<td style="width: 119px">Project Name</td>
									<td colspan="2"><input class="textBoxStyle" name="project_name"
										type="text" placeholder="Enter the Project Name" tabindex="1" /></td>
								</tr>
								<tr>
									<td style="width: 119px; height: 14px;" class="style3"></td>
									<td colspan="2" style="height: 14px"></td>
								</tr>
								<tr>
									<td style="width: 119px" class="style3">&nbsp;</td>
									<td style="width: 141px" class="style1"><input
										class="button" name="Submit" type="submit" value="Add Project"
										tabindex="10" /></td>
									<td class="style3">&nbsp;&nbsp;<input name="Reset"
										class="button" type="reset" value="Cancel" tabindex="11">&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td style="width: 119px; height: 14px;" class="style3"></td>
									<td colspan="2" style="height: 14px"></td>
								</tr>
						</table>

					</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>