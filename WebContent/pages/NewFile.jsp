<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select * from tb_user");
  List <String>li = new ArrayList<String>();
  while(rs.next())
  {
      li.add(rs.getString("user_id"));
  }
  con.close();
  String[] userList = new String[li.size()];
  li.toArray(userList);
  for(int i=0;i<userList.length;i++)
	  	out.println(userList[i]);
  %>
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
$(function() {
    var availableTags = [<% for (int i = 0; i < li.size(); i++) { %>"<%= li.get(i) %>"<%= i + 1 < li.size() ? ",":"" %><% } %>];
    $( "#add_user_id" ).autocomplete({
      source: availableTags
    });
  });
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