<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>

<html>
<head>
<script type="text/javascript" charset="utf-8" src="../media/css/DataTables/media/js/jquery.js"></script>
<script type="text/javascript" charset="utf-8" src="../media/css/DataTables/media/js/jquery.dataTables.js"></script>
 <script src="../media/css/jquery-ui/ui/jquery-ui.js"></script>
<script type="text/javascript" src="../media/css/timeSheet.js"></script>
<style type="text/css" title="currentStyle">
@import "../media/css/DataTables/media/css/demo_table.css";
@import
	"../media/css/DataTables/media/css/jquery.dataTables_themeroller.css";

@import "../media/css/DataTables/media/css/jquery-ui-1.8.4.custom.css";
</style>
</head>
<body>
	<p />

		<table>
			<tr>
			<td>
				&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Add Row" onclick="addRow();">
			<td>
			<td><a href="javascript:void(0)" id="delete">Delete selected row</a>
			</td>
			<td>
				&nbsp;&nbsp;<input type="button" value="Delete Row" onclick="'#delete'">
			<td>
			</tr>
			<tr>
				<td>
					<br>
				</td>
			</tr>
		</table>
	<form method="post" action="TimeSheetEntry">
	<div id="demo">
		<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
					<th>Date</th>
					<th>Project Name</th>
					<th>Activity Name</th>
					<th>Hour</th>
					<th>Min</th>
					<th>Comments</th>

				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" id="datepicker" name="datepicker[]"></td>
					<td><select id="project" name="project[]">
							<option value="p1">project-1</option>
							<option value="p2">project-2</option>
							<option value="p3">project-3</option>
					</select>
					<td><select name="activity[]">
							<option value="dev">development</option>
							<option value="test">testing</option>
							<option value="bugfix">bugfix</option>
					</select></td>
					<td><select name="hour[]">
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
					</select></td>
					<td><select name="min[]">
							<option value="00">0</option>
							<option value="15">15</option>
							<option value="30">30</option>
							<option value="45">45</option>
					</select></td>
					<td><input type="text" name="commentbox[]"
						placeholder="Enter your comments here" /></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div>
		<table>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="button" name="Submit" type="submit" value="Submit the Time Sheet"/></td>
		</tr>
	</table>
	</div>
	</form>
</body>
</html>