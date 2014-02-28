<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<script type="text/javascript" src="../media/css/timeSheet.js"></script>
</head>
<body>

	<input type="button" value="Add Row" onclick="addRow('dataTable')" />

	<input type="button" value="Delete Row"
		onclick="deleteRow('dataTable')" />

	<table id="dataTable" border="1">
		<tr>
			<td><input type="checkbox" name="chk" /></td>
			<td>
				<select name="project[]">
					<option value="p1">project-1</option>
					<option value="p2">project-2</option>
					<option value="p3">project-3</option>
				</select>
			</td>
			<td>
				<select name="activity[]">
					<option value="dev">development</option>
					<option value="test">testing</option>
					<option value="bugfix">bugfix</option>
				</select>
			</td>
			<td>
				<select name="hour[]">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
				</select>
			</td>
			<td>
				<select name="min[]">
					<option value="00">0</option>
					<option value="15">15</option>
					<option value="30">30</option>
					<option value="45">45</option>
				</select>
			</td>
			<td><input type="text" name="commentbox[]" placeholder="Enter your comments here" /></td>
		</tr>
	</table>
	<table>
		<tr><td><input class="button" name="Submit" type="submit" value="Submit the Time Sheet"/></td></tr>
	</table>


</body>
</html>