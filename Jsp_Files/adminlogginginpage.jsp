<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<body>
<style>
body {
  background-color: #fefbd8;
}
</style>
<style>
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
</style>
</head>
<div class="dropdown" style="float:right;">
  <button class="dropbtn">my account</button>
  <div class="dropdown-content">
  <a href="#">Myprofile</a>
  <a href="adminchangepassword.jsp">ChangePassword</a>
  <a href="userloginchek.jsp">logout</a>
  </div>
</div>
<pre><h2>&nbsp&nbspbookings</h2>
<img src="https://www.fg-a.com/aircraft/2018-frequent-flyer.gif" alt="bookings" width="229" height="145" hspace="30"><img src="https://www.fg-a.com/aircraft/2018-frequent-flyer.gif" alt="modify bookings" width="229" height="145" hspace="20">
<a href="test.jsp"><input type="submit" value="bookings" hspace="30"></a><a href="test.jsp"><input type="submit" value="modify bookings" hspace="200"></a>

</body>
</html>