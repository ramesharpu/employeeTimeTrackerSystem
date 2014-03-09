<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link href="/employeeTimeTrackerSystem/media/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<p>
		<br />
	</p>
	<div class="formDiv" >
	<form method="post" action="/employeeTimeTrackerSystem/UpdateUser">
		<table style="width: 100%">
			<tr>
				<td style="width: 77px">&nbsp;</td>
				<td style="width: 516px">

					<table class="tableProperty">
						<tbody>
							<tr>
								<td colspan="3" align="center"><strong>Add New User</strong></td>
								<td><input class="textBoxStyle" type="hidden" name="edit_user_id" value=<%=request.getAttribute("edit_user_id") %>></td>
							</tr>
							<tr>
								<td style="width: 119px">First Name</td>
								<td colspan="2"><input class="textBoxStyle" name="first_name" type="text" value=<%=request.getAttribute("f_name") %> tabindex="1" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Middle Name</td>
								<td colspan="2"><input class="textBoxStyle" name="middle_name" type="text" tabindex="2" value=<%=request.getAttribute("m_name") %> /></td>
							</tr>
							<tr>
								<td style="width: 119px">Last Name</td>
								<td colspan="2"><input class="textBoxStyle" name="last_name" type="text" value=<%=request.getAttribute("l_name") %> tabindex="3" /></td>							</tr>
							<tr>
								<td style="width: 119px">Password</td>
								<td colspan="2"><input class="textBoxStyle" name="password" type="text" value=<%=request.getAttribute("password") %> tabindex="4" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Mobile Number</td>
								<td colspan="2"><input class="textBoxStyle" name="mobile_number" type="text" value=<%=request.getAttribute("mobile_number") %> tabindex="5" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Email id</td>
								<td colspan="2"><input class="textBoxStyle" name="email_id" type="text" value=<%=request.getAttribute("email_id") %> tabindex="6" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Date of Birth</td>
								<td colspan="2"><input class="textBoxStyle" name="dob" type="text" value=<%=request.getAttribute("dob") %> tabindex="7" /></td>
							</tr>
							<tr>
								<td style="width: 119px; height: 14px;" class="style3"></td>
								<td colspan="2" style="height: 14px"></td>
							</tr>
							<tr>
								<td style="width: 119px" class="style3">&nbsp;</td>
								<td style="width: 141px" class="style1"><input class="button" name="Update" type="submit" value="Update" tabindex="8" />
								</td>
								<td class="style3">&nbsp;&nbsp;<input name="Reset" class="button" type="reset" value="Cancel" tabindex="11">&nbsp;&nbsp;
								</td>
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