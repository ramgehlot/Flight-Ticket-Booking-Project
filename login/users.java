package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class users
 */
@WebServlet("/users")
public class users extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public users() {
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
		ArrayList<String> name = new ArrayList<>();
		
		String data;
		
		
		// validate given input
			// inserting data into mysql database
			// create a test database and student table before running this
			// to create table -  create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
				System.out.println("executed");
			
				
				String query ="select * from new";
				
				//PreparedStatement ps = con.prepareStatement("select * from signup where email='"+userName+"' and Password='"+pass+"'");
			Statement ps=con.createStatement();  // generates sql query
//			
        	//ps.executeQuery(query);
			ResultSet rs=ps.executeQuery(query);// execute it on test database
			System.out.println("successfuly inserted");
			request.setAttribute("data","AA");
           
			//String a=rs.getString(2);
			//System.out.println(a);
         //  while(rs.next())
            // {
            	
        	//   request.setAttribute("data","AA");
        	   
         //    }
        
          
         
			ps.close();
			con.close();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		doGet(request, response);
	}

}
