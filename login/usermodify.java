package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class usermodify
 */
@WebServlet("/usermodify")
public class usermodify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public usermodify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("userid");

		
		
		// validate given input
			// inserting data into mysql database
			// create a test database and student table before running this
			// to create table -  create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
				System.out.println("executed");
			
				
				String query ="delete from users where email='"+id+"'";
				String query1="select * from userregistration where email='"+id+"'";
				
				//PreparedStatement ps = con.prepareStatement("select * from signup where email='"+userName+"' and Password='"+pass+"'");
			Statement ps=con.createStatement();  // generates sql query
//			
        	ResultSet rs=ps.executeQuery(query1);
       
			// execute it on test database
			
			if(rs.next()){
				ps.executeUpdate(query);
				out.println("<script type=\"text/javascript\" >");
				out.println("alert('User successfully removed.');");
				out.println("location = 'UserDetails.jsp';");
				out.println("</script>");
			}
			else
			{
				out.println("<script type=\"text/javascript\" >");
				out.println("alert('No such user found.');");
				out.println("location = 'UserDetails.jsp';");
				out.println("</script>");
				}
			
           
			//String a=rs.getString(2);
			//System.out.println(a);
          
         
			ps.close();
			con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		
	}

}
