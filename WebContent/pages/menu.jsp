<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1; charset=ISO-8859-1" />
<link href="../media/css/menu.css" rel="stylesheet" type="text/css" />
<script src="../media/css/menu.js" type="text/javascript"></script>
</head>
<body style="padding: 0px 0px;">
	<nav id="menu">
	<div class="menu-icon"></div>
	<ul>
	<li>Time Sheet Management
			<div>
				<div class="column">
					<b>User Time Entries</b>
					<div>
						<a href="TimeSheet.jsp">Time Sheet</a>
					</div>
				</div>
			</div>
		</li>
		<li>User Management
			<div>
				<div class="column">
					<b>Manage User Data</b>
					<div>
						<a href="AddUser.jsp">Add New User</a>
						<a href="EditUser.jsp">Edit User Data</a>
					</div>
				</div>
			</div>
		</li>
		<li>Project Management
			<div>
				<div class="column">
					<b>Manage Projects</b>
					<a href="AddProject.jsp">Add New Project</a>
						<a href="EditProject.jsp">Edit Existing Project</a>
				</div>
			</div>
		</li>
		<li>Project Management Tools
			<div>
				<div class="column">
					<b>Management Tools</b>
					<a href="Reports.jsp">Reports</a>
					<a href="BudgetEvaluator.jsp">Budget Evaluator</a>
				</div>
			</div>
		</li>
	</ul>
	</nav>
</body>
</html>