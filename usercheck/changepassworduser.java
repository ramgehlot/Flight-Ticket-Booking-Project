package com.usercheck;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/changepassworduser")

public class changepassworduser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("username");
		String pass = request.getParameter("password");

		
		
				// retrieving data from sql developer database
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
					System.out.println("executed");
				String query="UPDATE USERREGISTRATION SET PASS='"+pass+"' WHERE EMAIL='"+name+"'";
				String query1="select * from USERREGISTRATION WHERE EMAIL='"+name+"'";
				Statement psi=con.createStatement();
				ResultSet rs=psi.executeQuery(query1);
				psi.executeUpdate(query); // execute it on test database
				if(rs.next())
				{
					out.println("<script type=\"text/javascript\" >");
					out.println("alert('Password successfully updated');");
					out.println("location = 'userloginchek.jsp';");
					out.println("</script>");
				}
				else{
					out.println("<script type=\"text/javascript\" >");
					out.println("alert('enter valid email');");
					out.println("location = 'userchangepassword.jsp';");
					out.println("</script>");
				}
				psi.close();
				con.close();
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				
				
		}
				
		}
	


