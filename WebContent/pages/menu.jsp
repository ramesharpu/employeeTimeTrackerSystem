<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%String name = (String) session.getAttribute("name");out.println(name);%>
<html>
<head>
    <link type="text/css" href="../media/css/menu.css" rel="stylesheet" />
    
	<script type="text/javascript" src="../media/css/jquery.js"></script>
    
	<script type="text/javascript" src="../media/css/menu.js"></script>
</head>
<body>

<style type="text/css">
* { margin:0;
    padding:0;
}
body {  }
#menu {
    top:30px;
    margin:0 auto;
    width:80%;
}
</style>

<div id="menu">
    <ul class="menu">
        <li><a href="#" class="parent"><span>Time Sheet Management</span></a>
            <div><ul>
                <li><a href="TimeSheet.jsp"><span>Time Sheet</span></a></li>
            </ul></div>
        </li>
        <li><a href="#" class="parent"><span>User Management</span></a>
            <div class="columns two">
                <ul class="one">
                    <li><a href="AddUser.jsp"><span>Add New User</span></a></li>
                </ul>
                <ul class="two">
                    <li><a href="EditUser.jsp"><span>Edit User Data</span></a></li>
                </ul>
            </div>
        </li>
		<li><a href="#" class="parent"><span>Project Management</span></a>
            <div class="columns two">
                <ul class="one">
                    <li><a href="AddProject.jsp"><span>Add New Project</span></a></li>
                </ul>
                <ul class="two">
                    <li><a href="EditProject.jsp"><span>Edit Existing Project</span></a></li>
                </ul>
            </div>
        </li>
		<li><a href="#" class="parent"><span>Project Management Tools</span></a>
            <div class="columns two">
                <ul class="one">
                    <li><a href="Reports.jsp"><span>Reports</span></a></li>
                </ul>
                <ul class="two">
                    <li><a href="BudgetEvaluator.jsp"><span>Budget Evaluator</span></a></li>
                </ul>
            </div>
        </li>
		<li><form action="../Logout" method="post"><a href="#"><span>Logout</span></a></form></li>
      </ul>
</div>
	<p>
		<br />
		<br />
		<br />
		<br />		
	</p>
</body>
</html>
<%-- <!DOCTYPE html>
<html>
<head>
<!-- <meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1; charset=ISO-8859-1" /> -->
<link href="../media/css/menu.css" rel="stylesheet" type="text/css" />
<script src="../media/css/menu.js" type="text/javascript"></script>
</head>
<body style="padding: 0px 0px;">
<%String role = (String) session.getAttribute("name");
if(name.equals("admin")){ %>
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
	<%}else{%>
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
						<a href="EditUser.jsp">Edit User Data</a>
					</div>
				</div>
			</div>
		</li>
	</ul>
	</nav>
	<%} %>
	
</body>
</html> --%>