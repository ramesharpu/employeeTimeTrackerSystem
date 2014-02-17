<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../media/css/style.css" rel="stylesheet" type="text/css" />
<script src="../media/css/menu.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
	<p>
		<br />
	</p>
<div class="formDiv" >
	<form method="post" action="AddNewUser">
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
								<td colspan="2"><input class="textBoxStyle" name="Text9" type="text" placeholder="Enter User First Name here" tabindex="1" /></td>
							</tr>
							<tr>
								<td style="width: 119px">Middle Name</td>
								<td colspan="2" class="style1"><input class="textBoxStyle" name="Text10"
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
										<option>Female</option></select></td>
							</tr>
							<tr>
								<td style="width: 119px; height: 14px;" class="style3"></td>
								<td colspan="2" style="height: 14px"></td>
							</tr>
							<tr>
								<td style="width: 119px" class="style3">&nbsp;</td>
								<td style="width: 141px" class="style1"><input style="border:1px solid"
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
	</div>
</body>
</html>