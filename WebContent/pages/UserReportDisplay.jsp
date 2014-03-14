<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.*"%>
<%@ include file="main.jsp"%>
<%@page import = "java.io.IOException"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.Statement"%>
<script src="/employeeTimeTrackerSystem/media/css/highcharts.js"></script>
<script src="/employeeTimeTrackerSystem/media/css/exporting.js"></script>

<%String user_name=request.getParameter("edit_user_id").trim();%>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
Statement st=con.createStatement();
ResultSet rs = st.executeQuery("select SUM(tb_time_sheet.time), tb_category.cat_name  from tb_time_sheet inner join tb_category on tb_time_sheet.cat_id=tb_category.cat_id where user_id='"+user_name+"' group by cat_name");
  /* List <String>li = new ArrayList<String>();
  while(rs.next())
  {
      li.add(rs.getString("user_id"));
  }
  con.close();
  

  String[] userList = new String[li.size()];
  li.toArray(userList); */
%>
<%if(user_name.equals("ramesh")) {%>
<script>
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'User Report'
        },
        subtitle: {
            text: 'Project-1'
        },
        xAxis: {
            categories: [
                'Development',
                'Bug Fix',
                'Automation',
                'Support',
                'Training']
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Hours'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} hours</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Ramesh',
            data: [73.5, 39.25, 50, 17, 32]

        }]
    });
});
</script>
<%}else if(user_name.equals("anusha")){ %>
<script type="text/javascript">
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'User Report'
        },
        subtitle: {
            text: 'Project-1'
        },
        xAxis: {
            categories: [
                'Testing',
                'Bug Verification',
                'Automation']
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Hours'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} hours</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Anusha',
            data: [142, 74, 168]

        }]
    });
});
</script>
<%}else if(user_name.equals("mritula")){ %>
<script>
$(function () {
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'User Report'
        },
        subtitle: {
            text: 'Project-2'
        },
        xAxis: {
            categories: [
                'Support',
                'Development', ]
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Hours'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} hours</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Mritula',
            data: [120, 168]

        }]
    });
});
</script>
<%}else{ %>
<h3><p align="center">Time sheet not recorded</p></h3>
<%} %>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

