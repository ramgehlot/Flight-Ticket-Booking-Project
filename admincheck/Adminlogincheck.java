package com.admincheck;

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

/**
 * Servlet implementation class adminlogincheck
 */
@WebServlet("/Adminlogincheck")
public class Adminlogincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String Email = request.getParameter("Name");
		String pass = request.getParameter("pass");

		
		if(Email.isEmpty()||pass.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("userloginchek.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
		}
		else
		{
				// retrieving data from sql developer database
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
					System.out.println("executed");
				//String query="insert into Userregistration values('"+name+"','"+Email+"','"+pass+"','"+addr+"')";
				//Statement psi=con.createStatement();
				//psi.executeUpdate(query); // execute it on test database
				//System.out.println("successfuly inserted");
				
				
				String R_email="select * from adminregistration where name='"+Email+"' and pass='"+pass+"'";
				Statement ps1=con.createStatement(); 
				ResultSet s11=ps1.executeQuery(R_email);
				
					if(s11.next())
					{
						RequestDispatcher rd = request.getRequestDispatcher("adminPage.jsp");
						rd.forward(request,response);
					}
					else
					{
						out.println("<script type=\"text/javascript\" >");
						out.println("alert('Admin details not found');");
						out.println("location = 'userloginchek.jsp';");
						out.println("</script>");
					}
					
				//out.println("</table></body></html>");
				}
				catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
					
				}
				//RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				//rd.forward(request, response);
		}
	
}
}
