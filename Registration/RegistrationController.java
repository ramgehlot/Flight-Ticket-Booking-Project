package com.candidjava;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("fullname");
		String Email = request.getParameter("Email");
		String pass = request.getParameter("pass");
		String addr = request.getParameter("address");
		//String age = request.getParameter("age");
		//String qual = request.getParameter("qual");
		//String percent = request.getParameter("percent");
		//String year = request.getParameter("yop");
		
		// validate given input
		if(name.isEmpty()||addr.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
		}
		else
		{
			// inserting data into mysql database
			// create a test database and student table before running this
			// to create table -  create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
				System.out.println("executed");
			String query="insert into Userregistration values('"+name+"','"+Email+"','"+pass+"','"+addr+"')";
			
			Statement ps=con.createStatement();  // generates sql query
//			ps.setString(1, );
//			ps.setString(2, userName);
//			ps.setString(3, pass);
//			ps.setString(4, addr);
//			ps.setInt(5, Integer.parseInt(age));
//			ps.setString(6, qual);
//			ps.setString(7, percent);
//			ps.setString(8, year);
			
			ps.executeUpdate(query); // execute it on test database
			out.println("<script type=\"text/javascript\" >");
			out.println("alert('Successfully registered');");
			out.println("location = 'userloginchek.jsp';");
			out.println("</script>");
			ps.close();
			con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			RequestDispatcher rd = request.getRequestDispatcher("userloginchek.jsp");
			rd.forward(request, response);
		}
	}
}
