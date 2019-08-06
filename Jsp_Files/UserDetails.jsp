<%@page language="java" import="java.util.*" %>
<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.Iterator"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>

	.navbar{
		padding-left: 30%;	
	}
	label {
        font-size: 20px;
        font-weight: 700;
        color: #1c87c9;
        padding-right: 0%;
      }
     .button1 {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button1:hover {background-color: #3e8e41}

.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.form-radio:hover
{
     background-color: #f7f7f7;
}
.form-radio:checked
{
     background-color: #f1f1f1;
}
.form-radio
{
     -webkit-appearance: none;
     -moz-appearance: none;
     appearance: none;
     display: inline-block;
     position: relative;
     background-color: #f1f1f1;
     color: #666;
     top: 10px;
     height: 30px;
     width: 30px;
     border: 2;
     border-radius: 50px;
     cursor: pointer;     
     margin-right: 7px;
     outline: none;
     text-align: right;
}
      input[type="radio"]{
  margin: 0 30px 0 30px;
  align:center
}

</style>
</head>
<body>
<a href="http://localhost:8087/Airlines/adminPage.jsp"><button class="btn btn-primary my-2 my-sm-0" type="submit">
							Home
						</button></a>
<a href="http://localhost:8087/Airlines/userloginchek.jsp"><input class="btn btn-primary my-2 my-sm-0"type="button" value="Logout" style="float: right; background-color:black;"></a>									
						
<br><br>

<a href="http://localhost:8087/Airlines/userdummy.jsp"><center><button class="button1"  type="submit">
							Get All the User details
						</button> </center></a><br><br>
						
						
			
<nav class="navbar navbar-expand-lg navbar-light bg-light">
				 
				<form class="form-inline" action="usermodify"method="post">
						<label >UserID:</label>
						<input class="form-control mr-sm-2" type="text" name="userid" pattern="^\S+$" required=true/> 
						
						<button class="btn btn-primary my-2 my-sm-0" type="submit">
							Remove User
						</button>
					</form>
			</nav>
			<br><br>
			<table class="table">
				<thead>
					<tr>
						<th>
							UserID
						</th>
						<th>
							Name
						</th>
						<th>
							Email 
						</th>
						<th>
							Phone
						</th>
                         <th>
							County
						</th>          
					</tr>
				</thead>
				

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>