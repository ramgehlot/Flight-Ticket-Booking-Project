<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Data</title>
</head>
<style>
input[type=button], input[type=submit], input[type=reset] {
  background-color: #4CAF50;
  border: none;
  color: white;
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
 }
body {
background-image:url("https://image.freepik.com/free-photo/composition-toy-jet-with-airline-passport-bus_23-2148169888.jpg"); 
background-repeat:no-repeat;
background-size:1366px 768px;
</style>
<body>
	<h1>Registration Form</h1>
	<div class="ex">
		<form action="RegistrationController" method="post">
			<div>
					  &nbsp &nbsp 
					    <label for="username"><font color="blue">Name</label>
					    <br>
					      &nbsp &nbsp 
					    <input type="text" id="username" name="fullname"  width=45% pattern= "^\S+$" required>
					</div>
					
					<div>
					  &nbsp &nbsp 
					    <label for="username">Email :</label>
					    <br>
					      &nbsp &nbsp 
					    <input type="text" id="username" name="Email"  width=45%  pattern="^\S+$" required>
					</div>

					<div>
					  &nbsp &nbsp 
						    <label for="pass">Password :</label>
						    <br>
						      &nbsp &nbsp 
						    <input type="password" id="pass" name="pass" width=45%  pattern="^\S+$" required>
					</div>
					
					<div> 
					  &nbsp  &nbsp 
					    <label for="username">Address</label>
					    <br>
					      &nbsp &nbsp 
					    <input type="text" id="username" name="address"  width=45% pattern="^\S+$" required>
					</div>

					&nbsp  &nbsp  <a href="userloginchek.jsp"><input type="submit" value="register" /></a>
				
		</form>	
		<marquee><h2>You will be automatically redirected to Login page once you click register</h2></marquee>	
	</div>
</body>
</html>