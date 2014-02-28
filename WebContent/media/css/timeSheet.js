$(document).ready(function() {
	$('#example').dataTable({
		"bJQueryUI" : true,
		"sPaginationType" : "full_numbers"
	});
});

$(function() {
    $( "#datepicker" ).datepicker({
      showButtonPanel: true,
      });
  });
/* Global variable for the DataTables object */
var oTable;
var datepicker = "<input type=\"text\" id=\"datepicker\" name=\"datepicker[]\">";
var project = "<select id = \"project\" name=\"project[]\" > <option value=\"p1\">project-1</option><option value=\"p1\">project-2</option>";
var activity = "<select name=\"activity[]\"><option value=\"dev\">development</option><option value=\"test\">testing</option><option value=\"bugfix\">bugfix</option>";
var hour = "<select name=\"hour[]\">" + "<option value=\"1\">1</option>"
		+ "<option value=\"2\">2</option>" + "<option value=\"3\">3</option>"
		+ "<option value=\"4\">4</option>" + "<option value=\"5\">5</option>"
		+ "<option value=\"6\">6</option>" + "<option value=\"7\">7</option>"
		+ "<option value=\"8\">8</option>" + "<option value=\"9\">9</option>"
		+ "<option value=\"10\">10</option>"
		+ "<option value=\"11\">11</option>"
		+ "<option value=\"12\">12</option>" + "</select>";
var min = "<select name=\"min[]\">" + "<option value=\"00\">0</option>"
		+ "<option value=\"15\">15</option>"
		+ "<option value=\"30\">30</option>"
		+ "<option value=\"45\">45</option>" + "</select>";
var comment = "<input type=\"text\" name=\"commentbox[]\" placeholder=\"Enter your comments here\" />";
$(document).ready(function() {
	oTable = $('#example').dataTable();
});

function addRow() {
	oTable.fnAddData([ datepicker, project, activity, hour, min, comment ]);
}

var giRedraw = false;

$(document).ready(function() {
	/* Add a click handler to the rows - this could be used as a callback */
	$("#example tbody").click(function(event) {
		$(oTable.fnSettings().aoData).each(function() {
			$(this.nTr).removeClass('row_selected');
		});
		$(event.target.parentNode).addClass('row_selected');
	});

	/* Add a click handler for the delete row */
	$('#delete').click(function() {
		var anSelected = fnGetSelected(oTable);
		oTable.fnDeleteRow(anSelected[0]);

	});

	/* Init the table */
	oTable = $('#example').dataTable();
});

/* Get the rows which are currently selected */
function fnGetSelected(oTableLocal) {
	var aReturn = new Array();
	var aTrs = oTableLocal.fnGetNodes();

	for ( var i = 0; i < aTrs.length; i++) {
		if ($(aTrs[i]).hasClass('row_selected')) {
			aReturn.push(aTrs[i]);
		}
	}
	return aReturn;
}