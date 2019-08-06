package com.login;

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
 * Servlet implementation class LoginForm1
 */
@WebServlet("/LoginForm1")
public class LoginForm1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginForm1() {
        super();
        // TODO Auto-generated constructor stub
    }	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("username");
		String pass = request.getParameter("password");
		
		
		// validate given input
			// inserting data into mysql database
			// create a test database and student table before running this
			// to create table -  create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
				System.out.println("executed");
			
				
				String query ="select * from signup where email='"+userName+"' and Password='"+pass+"'";
				
				//PreparedStatement ps = con.prepareStatement("select * from signup where email='"+userName+"' and Password='"+pass+"'");
			Statement ps=con.createStatement();  // generates sql query
//			
        	//ps.executeQuery(query);
			ResultSet rs=ps.executeQuery(query);// execute it on test database
			System.out.println("successfuly inserted");
			
           
			//String a=rs.getString(2);
			//System.out.println(a);
           if(rs.next())
             {
            	
            		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
            	
            	rd.forward(request, response);
             }
            else 
            	out.println("<font color=red>username and password doest not match</font>");
         
			ps.close();
			con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
			
	}

}
