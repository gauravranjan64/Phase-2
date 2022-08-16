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

/**
 * Servlet implementation class ProductDetails_Project
 */
@WebServlet("/ProductDetails_Project")
public class ProductDetails_Project extends HttpServlet {
	
    
    Connection con;
    PreparedStatement ps;
    Statement stmt;
    ResultSet rs;
    Scanner sc=new Scanner(System.in);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetails_Project() {
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
		
		 try {
			 PrintWriter out = response.getWriter();
	            // Initialize the database
	            Connection con = DatabaseConnection.initializeDatabase();
	  
	            // Create a SQL query to insert data into demo table
	            // demo table consists of two columns, so two '?' is used
	            PreparedStatement st = con.prepareStatement("select * from product where Id=?");
	  
	            // For the first parameter,
	            // get the data using request object
	            // sets the data to st pointer
	            int check=Integer.valueOf(request.getParameter("Id"));
	            if(check>=10)
	            {
	            	out.println("<html><body><b>Product ID is not present in the Table"
	                        + "</b></body></html>");
	            	System.out.println("\nOnly 10 rows are present in the table");
	            }
	            else{
	            st.setInt(1, Integer.valueOf(request.getParameter("Id")));
	 
	  
	 
	            // to display the successful result
	            
	            rs=st.executeQuery();
	            System.out.println("\nRetrieving only "+Integer.valueOf(request.getParameter("Id"))+" "+"data from the product table");
	            System.out.println();
	            while(rs.next())
	            {
	            	int id=rs.getInt("Id");
	            	String name=rs.getString("name");
	            	int price=rs.getInt("price");
	            	
	            	out.println("ProductId: "+id+"\n" +"ProductName: " + name+"\n"+"Price: "+price);
	            }
	         
	            }
	        
		 }
	        catch (Exception e) {
	            e.printStackTrace();
	        }
	}

}
