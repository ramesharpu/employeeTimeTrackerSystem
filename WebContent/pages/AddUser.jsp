<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #C0C0C0">
	<p>
		<br />
	</p>

	<form method="post" action="AddNewUser">
		<table style="width: 100%">
			<tr>
				<td style="width: 77px">&nbsp;</td>
				<td style="width: 516px">

					<table style="width: 82%; height: 405px;" cellspacing="0"
						cellpadding="0">
						<tbody>
							<tr>
								<td colspan="3" align="center"><strong>Add New
										User</strong></td>
							</tr>
							<tr>
								<td style="width: 119px">First Name</td>
								<td colspan="2"><input name="Text9" type="text"
									style="width: 233px" tabindex="1" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Middle Name</td>
								<td colspan="2" class="style1"><input name="Text10"
									type="text" style="width: 233px" tabindex="2" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Last Name</td>
								<td colspan="2"><input name="Text11" type="text"
									style="width: 233px" tabindex="3" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Login Id</td>
								<td colspan="2"><input name="Text12" type="text"
									style="width: 233px" tabindex="4" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Password</td>
								<td colspan="2"><input name="Text13" type="text"
									style="width: 233px" tabindex="5" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Mobile Number</td>
								<td colspan="2"><input name="Text14" type="text"
									style="width: 233px" tabindex="6" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Email</td>
								<td colspan="2"><input name="Text15" type="text"
									style="width: 233px" tabindex="7" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Date of Birth</td>
								<td colspan="2"><input name="Text16" type="text"
									style="width: 233px" tabindex="8" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Gender</td>
								<td colspan="2"><select name="Select2" style="width: 84px"
									tabindex="9">
										<option selected="selected" value="Select">Select</option>
										<option>Male</option>
										<option>Female</option></td>
							</tr>
							<tr>
								<td style="width: 119px; height: 14px;" class="style3"></td>
								<td colspan="2" style="height: 14px"></td>
							</tr>
							<tr>
								<td style="width: 119px" class="style3">&nbsp;</td>
								<td style="width: 141px" class="style1"><input
									name="Submit" type="submit" value="Add User" tabindex="10" />
								</td>
								<td class="style3">&nbsp;&nbsp;<input name="Reset"
									type="reset" value="Cancel" tabindex="11">&nbsp;&nbsp;

								</td>
							</tr>
					</table>

				</td>
				<td>&nbsp;</td>
			</tr>
		</table>


	</form>
</body>
</html>