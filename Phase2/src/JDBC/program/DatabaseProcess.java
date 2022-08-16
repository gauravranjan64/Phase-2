package JDBC.program;
import JDBC.program.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import JDBC.program.DatabaseConnection;

/**
 * Servlet implementation class DatabaseProcess
 */
@WebServlet("/DatabaseProcess")
public class DatabaseProcess extends HttpServlet {
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	Connection con;
	ResultSet rs;
	PreparedStatement ps;
	Statement stmt;
	Scanner sc=new Scanner(System.in);
	
	
	
    public DatabaseProcess() {
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
		String query = "insert into student(StudentId,Student_Name,Dept,DOB) values(?,?,?,?)";
		try{
			PrintWriter out=response.getWriter();
			Connection con=DatabaseConnection.initializeDatabase();
			ps=con.prepareStatement(query);
			String a=request.getParameter("id");
			int id=Integer.parseInt(a);
			String name=request.getParameter("name");
			String dept=request.getParameter("dept");
			String dob=request.getParameter("dob");
			
			out.println("Student_Id: "+id);
			out.println("Student_Name: "+name);
			out.println("Department: "+dept);
			out.println("Date_Of_Birth: "+dob);
			out.println();
			out.println("Data Entered Check Database!!");
			ps.setInt(1,id);
			ps.setString(2, name);
			ps.setString(3, dept);
			ps.setString(4, dob);
			int count = ps.executeUpdate();
			
			
		}catch(Exception e){}

		
		
	}
	public void insert(){
		
	}

}
