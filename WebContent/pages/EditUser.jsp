<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <link href="../media/css/style.css" rel="stylesheet" type="text/css" /> -->
<link href="/employeeTimeTrackerSystem/media/css/style.css" rel="stylesheet" type="text/css" />
<!-- <script src="../media/css/menu.js" type="text/javascript"></script> -->
</head>
<body>
	<p>
		<br />
	</p>
<div class="formDiv" >
	<form method="post" action="EditUser">
		<table style="width: 100%">
			<tr>
				<td style="width: 77px">&nbsp;</td>
				<td style="width: 516px">

					<table class="tableProperty">
						<tbody>
							<tr>
								<td colspan="3" align="center"><strong>Add New User</strong></td>
							</tr>
							<tr>
								<td style="width: 119px">First Name</td>
								<td colspan="2"><input class="textBoxStyle" name="first_name" type="text" placeholder="First Name" tabindex="1" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Middle Name</td>
								<td colspan="2"><input class="textBoxStyle" name="middle_name" type="text" placeholder="Middle Name" tabindex="2" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Last Name</td>
								<td colspan="2"><input class="textBoxStyle" name="last_name" type="text" placeholder="Last Name" tabindex="3" /></td>							</tr>
							<tr>
								<td style="width: 119px">Login Id</td>
								<td colspan="2"><input class="textBoxStyle" name="loginid" type="text" placeholder="Login id" tabindex="4" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Password</td>
								<td colspan="2"><input class="textBoxStyle" name="password" type="text" placeholder="Password" tabindex="5" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Mobile Number</td>
								<td colspan="2"><input class="textBoxStyle" name="mobile_number" type="text" placeholder="Mobile Number" tabindex="6" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Email id</td>
								<td colspan="2"><input class="textBoxStyle" name="email_id" type="text" placeholder="Email id" tabindex="7" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Date of Birth</td>
								<td colspan="2"><input class="textBoxStyle" name="dob" type="text" placeholder="Date of Birth" tabindex="8" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Active</td>
								<td><input type="checkbox" name="active" value="active" checked><br></td>
								
							</tr>
							<tr>
								<td style="width: 119px; height: 14px;" class="style3"></td>
								<td colspan="2" style="height: 14px"></td>
							</tr>
							<tr>
								<td style="width: 119px" class="style3">&nbsp;</td>
								<td style="width: 141px" class="style1"><input class="button" name="Submit" type="submit" value="Add User" tabindex="10" />
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