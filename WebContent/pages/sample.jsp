<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%--     <%@page import="java.sql.*"%> --%>
<%@page import="java.*"%>
<%@ include file="main.jsp"%>
<%@page import = "java.io.IOException"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.Statement"%>
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
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
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
 
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <!-- <input id="tags"> -->
  <input class="textBoxStyle" id="add_user_id"
							name="add_user_id" type="text" placeholder="Enter the user id"
							tabindex="1" />
</div>
 
 
</body>
</html>