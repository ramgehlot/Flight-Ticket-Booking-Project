<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>
			View Available Flights
		</title>
		<style>
			input {
    			border: 1.5px solid #030337;
    			border-radius: 4px;
    			padding: 7px 30px;
			}
			input[type=submit] {
				background-color: #030337;
				color: white;
    			border-radius: 4px;
    			padding: 7px 45px;
    			margin: 0px 127px
			}
			input[type=date] {
				border: 1.5px solid #030337;
    			border-radius: 4px;
    			padding: 5px 40.5px;
			}
			select {
    			border: 1.5px solid #030337;
    			border-radius: 4px;
    			padding: 6.5px 75.5px;
			}
			body {
				  background-image: url("https://image.freepik.com/free-photo/travel-concept-with-globe_23-2148169842.jpg");
				  background-repeat: no-repeat, repeat;
				  background-color: #cccccc;
				  background-size:1366px 768px;
				  
			}
		</style>
		<link rel="stylesheet" type="text/css" href="css/style.css"/>
		<link rel="stylesheet" href="font-awesome-4.7.0\css\font-awesome.min.css">
	</head>
	<body>
	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
<h1 style="color:blue;">
			 &nbsp&nbsp V-Airways
		</h1>
		
		
			
			 &nbsp &nbsp <h2> &nbsp SEARCH FOR AVAILABLE FLIGHTS</h2>
			 <br>
			<table cellpadding="1">
				<tr>
					
					
				<form action="bookingpage.jsp">
					<td class="fix_table">
					&nbsp &nbsp &nbsp	&nbsp <input list="origins" name="origin" placeholder="Enter the Origin" required>
  						<datalist id="origins">
  						
							<option value="vizag">
							<option value="delhi">
  						  	<option value="pune ">
  						  	<option value="bnglr">
  						  	<option value="chennai">
  						  	<option value="hyd">
							
  						</datalist>
  						</td>
						<!-- <input type="text" name="origin" placeholder="From" required> --></td>
					<td class="fix_table">
						&nbsp &nbsp &nbsp <input list="destinations" name="destination" placeholder="Enter the Destination" required>
  						<datalist id="destinations">
  						  	<option value="delhi">
  						  	<option value="pune ">
  						  	<option value="bnglr">
  						  	<option value="chennai">
  						  	<option value="hyd">
  						</datalist>
  						</td>
  						<td>
  						<input type="submit" value="Search for Available Flights" name="Search">
  						</td>
						<!-- <input type="text" name="destination" placeholder="To" required> --></td>
				</tr>
				<% String one=null;
				 one = request.getParameter("origin"); %>
				<%String two=null;
				 two = request.getParameter("destination"); 
				   %>
				
				<%if(one!=null) 
				{
				%>
				
			<table class="table">
			<br>
				<thead>
					<tr>
						<th>
							FlightID
						</th>
						<th>
							Source
						</th>
						<th>
							Destination 
						</th>
						<th>
							Time
						</th>
                         <th>
							price
						</th>
                         <th>
							Day
						</th>
						<th>
							Date
						</th>
					</tr>
				</thead>
				
				<%try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
					System.out.println("executed");
				
					
					String query ="select * from flight where source='"+one+"' and destination='"+two+"'";
					Statement ps=con.createStatement();
					ResultSet rs = ps.executeQuery(query);
	while(rs.next()){%>
			
				
			<tbody>
				<tr>
<td><%=Integer.parseInt(rs.getString("FLIGHTID"))%></td>
				<td><%=rs.getString("SOURCE")%></td>
				<td><%=rs.getString("DESTINATION")%></td>
				<td><%=rs.getString("TIME")%></td>
				<td><%=rs.getString("PRICE")%></td>
				<td><%=rs.getString("DAY")%></td>
				<td><%=rs.getString("TDATE")%></td></form>
				<td><a href="payments.jsp"><input type="submit" name = "Proceed to Payment" value="Proceed to Payment"></a></td>
				</tr>
				</tbody>
				<% 
	}
	%>
	

				
			</table>
			<br>
			
		<marquee><Label> <font color="yellow"> please Copy FlightID</font></Label></marquee>
		
</body>
	
	<%
	rs.close();
	ps.close();
	con.close();
}
	catch(Exception e){
		e.printStackTrace();
	}
				}
%> 
</html>