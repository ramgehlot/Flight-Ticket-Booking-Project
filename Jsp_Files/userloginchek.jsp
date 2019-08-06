<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data</title>
</head>
<style>
input[type=button], input[type=submit], input[type=reset] {
  background-color: "white";
  border: 1px;
  padding: 12px 24px;
  text-decoration: none;
  margin: 1px 0px;
  cursor: pointer;
}
input[type=text] {
  
  padding: 6px 6px;
  margin: 2px 0;
  box-sizing: border-box; 
  
}
input[type=password] {
  
  padding: 6px 6px;
  margin: 4px 0;
  box-sizing: border-box;

body {
background-image:url("https://image.freepik.com/free-photo/aircraft-model-placed-board_1205-1548.jpg"); 
background-repeat:no-repeat;
;
}

strong{
opacity:5.0;
}
img { 
  width: 10%;
  height:20%; 
}
</style>
<body background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgwqoczi19HztcZMnxkDKsMQLgE2Mi1xEJ6e9c7jh_0Hek17X8" width:"1266" height:"768" >

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <nav class="navbar navbar-expand-sm bg-success navbar-dark">
  
<ul class="navbar-nav">
    <li class="nav-item active">
  <a class="navbar-brand" href="##">V-Airways</a></a>
    </li>
  </ul>
  
<ul class="navbar-nav">
    <li class="nav-item active">
    
    </li>
 </ul>
    <div class="ex">
<form action="Adminlogincheck" method="get">
                    <div>
                      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
					  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					    
					    
					    
                     <label for="username" ><font color="white">Admin Email :</font></label>
                      
                          &nbsp
                        <input type="text" id="username" name="Name"  width=65%; pattern="^\S+$" required>
                    

 

                    
                      &nbsp
                            <label for="pass"><font color="white">Admin Password :</label>
                            
                              &nbsp
                            <input type="password" id="pass" name="pass" pattern="^\S+$" required>
                            <input type="submit" value="Login"  align="right">    
                   </div>
</form>    
   <br>
    </div>
    </nav>
   
        <form action="Userlogincheck" method="get">
                    <div>
                      &nbsp
                        <label for="username">User Email :</label>
                        <br>
                        
                          &nbsp
                        <input type="text" id="username" name="Email"  pattern="^\S+$" required>
                        
                    </div>

 

                    <div>
                      &nbsp
                            <label for="pass">User Password :</label>
                            <br>
                              &nbsp
                            <input type="password" id="pass" name="pass" pattern="^\S+$" required >
                    </div>

 

                   &nbsp <input type="submit" value="Login" background-color="red">                   
</form>    
 			&nbsp <a href="userchangepassword.jsp"><input type="submit" bg-color="yellow"value="Forgot Password" ></a>
                    
                   &nbsp <a href="registration.jsp"><input type="submit" bg-color="blue"value="Register" ></a>
    
            </div>
            <marquee bgcolor="orange"> <h3>Book Easy and Hassle Free using V-Airways </h3></marquee>        
            <div class="w-100 " style="background-color: #eeff;">
            <table class="table table-striped table-hover">
                <table class="table">
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
							Price
						</th>
                         <th>
							Day
						</th>
                         <th>
							Date
						</th>
                         
                         
                         
					</tr>
				</thead>
				
				<%
					try {
					
						Class.forName("oracle.jdbc.driver.OracleDriver");
						Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
						System.out.println("executed");
						
						
							String query ="select * from flight ";
							Statement ps=con.createStatement();
							ResultSet rs = ps.executeQuery(query);
			while(rs.next()){%> 
						
					<tbody>
						<tr>
						<td><%=rs.getString("FLIGHTID")%></td>
						<td><%=rs.getString("SOURCE")%></td>
						<td><%=rs.getString("DESTINATION")%></td>
						<td><%=rs.getString("TIME")%></td>
						<td><%=rs.getString("PRICE")%></td>
						<td><%=rs.getString("DAY")%></td>
						<td><%=rs.getString("TDATE")%></td>
						</tr>
						</tbody>
						<% 
		
		}
		rs.close();
	ps.close();
	con.close();
					}
	
				
 				
					
				

	catch(Exception e){
		e.printStackTrace();
	} 
			
%> 
            </table> 
            </div>
            </div>    
        </div>
</body>
</html>