<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<body background="http://www.sfdcpoint.com/wp-content/uploads/2019/01/Salesforce-Admin-Interview-questions.png">
<a href="http://localhost:8087/Airlines/userloginchek.jsp"><input class="btn btn-primary my-2 my-sm-0"type="button" value="Logout" style="float: right; background-color:red;"></a>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="btn-group" role="group" align="right">
				
			</div>
		</div>
	</div>
</div>
<div id="container">       
<form action="changepasswordadmin" method="get">
<center>
<br>
<br>
<br><label for="username  "><font color="white">Email:</font></label>
<br>
<input type="text" id="username" name="username" pattern="^\S+$" required>
<br>
<br><label for="New password"><font color="white">New Password:</label>
<br>
<input type="New password" id="New password" name="password" pattern="^\S+$" required>
<br>
<br><label for="Confirm password"><font color="white">Confirm Password:</label>
<br>
<input type="Confirm password" id="Confirm password" name="Confirm password" pattern="^\S+$" required>
<br>
<br><br><a href="samplepasswordtestofadmin.jsp"><input type="submit" value="submit">
</center>
</form>
</div>
</body>
</html>