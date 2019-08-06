<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
body {
  background-color: #fefbd8;
}
</style>
<style>
label {
        font-size: 15px;
        font-weight: 700;
        color: black;
        padding-right: 10%;
        text-align: center;
      }

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
 
}

.button1:hover {
  background-color: #008CBA;
  color: white;
}


.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 220px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 8px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
input{
	margin: 7%;
}
</style>
</head>
<div class="dropdown" style="float:right;">
  <button class="dropbtn">my account</button>
  <div class="dropdown-content">
  <a href="adminchangepassword.jsp">ChangePassword</a>
  <a href="http://localhost:8087/Airlines/userloginchek.jsp">logout</a>
  </div>



</div> 

<pre><center></center><label style="color:Black;"><h2>Booking Details</h2></label></center>
<img src="https://www.fg-a.com/aircraft/2018-frequent-flyer.gif" alt="bookings" width="250" height="260" hspace="30"><img src="https://www.fg-a.com/aircraft/2018-frequent-flyer.gif"  alt="modify bookings" width="250" height="260" hspace="20"><img src="https://www.fg-a.com/aircraft/2018-frequent-flyer.gif" alt="bookings" width="250" height="260" hspace="30">    
     <a href="http://localhost:8087/Airlines/adminBookings.jsp">
<button class="button1"  type="submit">
							<label>Booking Details</label>
						</button></a><a href="http://localhost:8087/Airlines/flightModify.jsp"><button class=" button1"  type="submit">
						<label>Modify Flight Details</label>	
						</button></a><a href="http://localhost:8087/Airlines/UserDetails.jsp"><button class=" button1"  type="submit">
							<label>User Details</label>
						</button></a>
</body>
</html>