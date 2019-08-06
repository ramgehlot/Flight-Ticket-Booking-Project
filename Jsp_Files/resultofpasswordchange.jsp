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
<body background="https://cdn.dribbble.com/users/423514/screenshots/2770345/animated-check.gif" style="background-size:cover;background-position:center " >
<h1> password changed successfully </h1>
<table border="1">
<tr>
<td>email</td>
<td>password</td>
</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
statement=connection.createStatement();
String sqlr="select * from ADMINREGISTRATION";
resultSet=statement.executeQuery(sqlr);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString(1) %></td>
<td><%=resultSet.getString(2) %></td>
</tr>
<>
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