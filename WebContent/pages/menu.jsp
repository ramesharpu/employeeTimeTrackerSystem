<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%String name = (String) session.getAttribute("name");out.println(name);%> --%>
<html>
<head>
<link type="text/css" href="/employeeTimeTrackerSystem/media/css/menu.css" rel="stylesheet" />
<script type="text/javascript" src="/employeeTimeTrackerSystem/media/css/jquery.js"></script>
<script type="text/javascript" src="/employeeTimeTrackerSystem/media/css/menu.js"></script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	
}

#menu {
	top: 0px;
	margin: 0 auto;
	width: 100%;
}
</style>
</head>
<body>
	<%String role = (String) session.getAttribute("role");
if(role.equals("admin")){ %>
	<div id="menu">
		<ul class="menu">
			<li><a href="#" class="parent"><span>Time Sheet
						Management</span></a>
				<div>
					<ul>
						<li><a href="/employeeTimeTrackerSystem/pages/TimeSheet.jsp"><span>Time Sheet</span></a></li>
					</ul>
				</div></li>
			<li><a href="#" class="parent"><span>User Management</span></a>
				<div class="columns two">
					<ul class="one">
						<li><a href="/employeeTimeTrackerSystem/pages/AddUser.jsp"><span>Add New User</span></a></li>
					</ul>
					<ul class="two">
						<li><a href="/employeeTimeTrackerSystem/pages/EditUser.jsp"><span>Edit User Data</span></a></li>
					</ul>
				</div></li>
			<li><a href="#" class="parent"><span>Project
						Management</span></a>
				<div class="columns two">
					<ul class="one">
						<li><a href="/employeeTimeTrackerSystem/pages/AddProject.jsp"><span>Add New Project</span></a></li>
					</ul>
					<ul class="two">
						<li><a href="/employeeTimeTrackerSystem/pages/AddUserToProject.jsp"><span>Add User To Project</span></a></li>
					</ul>
				</div></li>
			<li><a href="#" class="parent"><span>Project
						Management Tools</span></a>
				<div class="columns two">
					<ul class="one">
						<li><a href="/employeeTimeTrackerSystem/pages/UserReport.jsp"><span>User Report</span></a></li>
					</ul>
					<ul class="two">
						<li><a href="/employeeTimeTrackerSystem/pages/ProjectReport.jsp"><span>Project Report</span></a></li>
					</ul>
				</div></li>
			<li><form action="/employeeTimeTrackerSystem/Logout" method="post">
					<a href="javascript:;" onclick="parentNode.submit();"><span>Logout</span></a>
				</form></li>
		</ul>
	</div>
	<p>
		<br /> <br /> <br /> <br />
	</p>
	<%}else{%>
	<div id="menu">
		<ul class="menu">
			<li><a href="#" class="parent"><span>Time Sheet
						Management</span></a>
				<div>
					<ul>
						<li><a href="/employeeTimeTrackerSystem/pages/TimeSheet.jsp"><span>Time Sheet</span></a></li>
					</ul>
				</div></li>
			<li><a href="#" class="parent"><span>User Management</span></a>
				<div>
					<ul class="one">
						<li><a href="/employeeTimeTrackerSystem/pages/EditUser.jsp"><span>Edit User Data</span></a></li>
					</ul>
				</div></li>
			<li><form action="/employeeTimeTrackerSystem/Logout" method="post">
					<a href="javascript:;" onclick="parentNode.submit();"><span>Logout</span></a>
				</form></li>
		</ul>
	</div>
	<p>
		<br /> <br /> <br /> <br />
	</p>
	<%} %>
</body>
</html>