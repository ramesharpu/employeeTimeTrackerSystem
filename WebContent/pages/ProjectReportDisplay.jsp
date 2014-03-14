<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="main.jsp"%>
<%@page import = "java.io.IOException"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.Statement"%>
<script src="/employeeTimeTrackerSystem/media/css/highcharts.js"></script>
<script src="/employeeTimeTrackerSystem/media/css/exporting.js"></script>
<%String project_name=request.getParameter("project_name").trim();%>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select SUM(tb_time_sheet.time), tb_category.cat_name  from tb_time_sheet inner join tb_category on tb_time_sheet.cat_id=tb_category.cat_id where project_id='"+project_name+"' group by cat_name");
  /* List <String>li = new ArrayList<String>();
  while(rs.next())
  {
      li.add(rs.getString("user_id"));
  }
  con.close();
  

  String[] userList = new String[li.size()];
  li.toArray(userList); */
%>
<%if(project_name.equals("project-2")) {%>
<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Project-2 Report'
        },
        tooltip: {
    	    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Project-2 Report',
            data: [
                ['Development',   0],
                ['Testing',       0],
                {
                    name: 'Bug Fix',
                    y: 0,
                    sliced: true,
                    selected: true
                },
                ['Bug Verification',    0],
                ['Automation',     0],
                ['Support',   150],
                ['Training', 400]
                
            ]
        }]
    });
});
    

    
</script>
<%}else if(project_name.equals("project-1")) {%>
<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false
        },
        title: {
            text: 'Project-1 Report'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    color: '#000000',
                    connectorColor: '#000000',
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                }
            }
        },
        series: [{
            type: 'pie',
            name: 'Project-1 Report',
            data: [
                ['Development', 73.5],
                ['Testing', 142], {
                    name: 'Bug Fix',
                    y: 39.25,
                    sliced: true,
                    selected: true
                }, ['Bug Verification', 74],
                ['Automation', 248],
                ['Support', 17],
                ['Training', 32]

            ]
        }]
    });
});
</script>
<%}else{%>
<h3><p align="center">Project report not available</p></h3>
<%} %>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>