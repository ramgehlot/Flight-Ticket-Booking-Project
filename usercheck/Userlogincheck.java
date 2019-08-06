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

/**
 * Servlet implementation class Userlogincheck
 */
@WebServlet("/Userlogincheck")
public class Userlogincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String Email = request.getParameter("Email");
		String pass = request.getParameter("pass");

		
		
				// retrieving data from sql developer database
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
					System.out.println("executed");
				//String query="insert into Userregistration values('"+name+"','"+Email+"','"+pass+"','"+addr+"')";
				//Statement psi=con.createStatement();
				//psi.executeUpdate(query); // execute it on test database
				//System.out.println("successfuly inserted");
				
				
				String R_email="select * from Userregistration where email='"+Email+"' and pass = '"+pass+"'";
				//String R_pass="select * from userregistration";
				PreparedStatement ps1=con.prepareStatement(R_email); 
				//PreparedStatement ps2=con.prepareStatement(R_pass); 
				ResultSet s1=ps1.executeQuery(R_email);
				//ResultSet s2=ps2.executeQuery(R_pass);
				System.out.println(s1);
				//System.out.println(s2);
				//out.println("<html><body><table>");
				if(s1.next()){
					//out.println("<tr><td>"+s.getString(2)+"</td> <td>"+s.getString(3)+"</td>  <td>"+s.getString(4)+"</td> </tr>");
					//System.out.println(fetchemail);
					//System.out.println(fetchpass);
					RequestDispatcher rd = request.getRequestDispatcher("bookingpage.jsp");
					rd.forward(request, response);
				}
				else{
					 out.println("<script type=\"text/javascript\" >");
						out.println("alert('USer not found..Please Register');");
						out.println("location = 'userloginchek.jsp';");
						out.println("</script>");
				}
				}
				catch(ClassNotFoundException | SQLException e) {
					e.printStackTrace();
					
				}
				//RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				//rd.forward(request, response);
		
	
}
}
