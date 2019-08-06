<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("Email");
String driver = "oracle.jdbc.driver.OracleDriver";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body background="">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark">




<div class="w-100 " style="background-color: #eeff;">
<table class="table table-striped table-hover">
<tbody>
<thead class="table-active">
<tr class="table-warning">
<td >origin</td>
<td >Destination & Price</td>
<td>Traveldate</td>
<td>Passengers</td>
<td>classs</td>
<td>Status </td>
</tr>
</thead>
</tbody>

<%
try{
connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
statement=connection.createStatement();
String sql ="select * from userbookingdetails ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr class="table-success">
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><a href="payments.jsp"><input type="submit" value="Proceed to Payment"></td>
</tr>
<%
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>