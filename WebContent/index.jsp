<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("cache-control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/Dtd/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Employee Time Tracker System</title>
<script language="javascript" type="text/javascript">
	window.history.forward();
</script>
<script>
	function setFocus() {
		document.getElementById("user_name").focus();
	}
</script>
<link type="text/css" href="media/css/login.css" rel="stylesheet" />
</head>

<body onload="setFocus()" style="background-image: url('media/images/background.jpg');">

	<table style="width: 100%; height: 532px" class="style1">
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<form method="post" action="Login">
					<table style="width: 32%" align="center">
						<tr>

							<td class="style8" colspan="2"><label id="Label3"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										Employee Login<br />
								</strong></label></td>
						</tr>
						<tr>
							<td class="style9" colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<center><font size="5" color="red"><b><i> 
							<%
							 	if (request.getAttribute("message") != null)
							 		out.println(request.getAttribute("message"));
							 	else
							 		out.println(" ");
							 %>
									</i></b></font>
							</center>


							<td class="style3" style="width: 95px"><label id="Label4">
									<strong>Username</strong>
							</label>&nbsp;</td>
							<td class="style4"><input id="user_name" name="user_name" type="text" /></td>
						</tr>
						<tr>
							<td class="style3" style="width: 95px"><label id="Label5">
									<strong>Password</strong>
							</label>&nbsp;</td>
							<td class="style4"><input id="password" name="password" type="password" />&nbsp;</td>
						</tr>
						<tr>
							<td class="style3" style="width: 95px; height: 4px;"></td>
							<td class="style4" style="height: 4px"></td>
						</tr>
						<tr>
							<td class="style3" style="width: 95px">&nbsp;&nbsp;</td>
							<td class="style4">&nbsp; <input name="submit" type="submit"
								value="Login" /> <input name="reset" type="reset" value="Reset" /><br />
							</td>
						</tr>
					</table>

				</form>

			</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
	</table>
</body>

</html>