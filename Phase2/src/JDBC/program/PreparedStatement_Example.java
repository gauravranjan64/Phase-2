package JDBC.program;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

//import sample.jdbc.program.PreparedStmtExample;

public class PreparedStatement_Example {
	private static final String url = "jdbc:mysql://localhost:3306/db_world";
    private static final String user = "root";
    private static final String password = "root";
    
    Connection con;
    PreparedStatement prSt;
    Statement stmt;
	public static void main(String[] args) {
		PreparedStatement_Example pse = new PreparedStatement_Example();
    	
        Scanner input = new Scanner(System.in);
    	
        System.out.println("=============PREPARED STATEMENT MENU=================");
        System.out.println("1. Insert the new employee Record"); 
        System.out.println("2. Update the employee Record");
        System.out.println("3. Delete the employee Record");
        System.out.println("====================================================");
    	System.out.println("Enter your choice from (1-3): ");
    	
    	int number = input.nextInt();
    	System.out.println("You entered option" + number);
    	
    	switch(number)
    	{
    	case 1: pse.insertPSRecord();
    	        break;
    	
    	case 2: pse.updatePSRecord();
    	        break;
    	        
//    	case 3: pse.deletePSRecord();
//    	        break;
    	}	
        	
	}
	
	//-------------------------- Inserting The Record-----------------------------//
	public void insertPSRecord()
    {  
		String query = "insert into student(Sid,Sname,Age) values(?,?,?)";
		
	      try {
	            Class.forName("com.mysql.jdbc.Driver");
	            con = DriverManager.getConnection(url, user, password);
	           
	            prSt = con.prepareStatement(query);
	            
	            // Take user input for insertion
	            Scanner input = new Scanner(System.in);	
	            
	            System.out.print("Enter the Sid:  ");
	            int Sid = input.nextInt();
	            System.out.println();
	            
	            System.out.print("Enter the student name:  ");
	            String sname = input.next();
	            System.out.println();
	            
	            System.out.print("Enter the student Age:  ");
	            int age = input.nextInt();
	            System.out.println();
	            
	            prSt.setInt(1, Sid);
	            prSt.setString(2, sname);
	            prSt.setInt(3, age);
	            
	            int count = prSt.executeUpdate();
	            
	            //show the number of records
	            stmt = con.createStatement();
	            
	            String query1 = "select * from student";
	            ResultSet rs =  stmt.executeQuery(query1);
	            System.out.println("Id    Name    Age");
	            
	            while (rs.next()) {
	               int id = rs.getInt("Sid");
	               String name = rs.getString("Sname");
	               int sage = rs.getInt("age");
	               System.out.println(id + "    " + name+"    "+sage);
	            }    
	            
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } finally{
	            try{
	                if(prSt != null) prSt.close();
	                if(con != null) con.close();
	            } catch(Exception ex){}
	        }
	}
	
	//-------------------------- Updating The Record-----------------------------//
	public void updatePSRecord()
    { 
		String sqlUpdate = "UPDATE student SET Age = ? WHERE Sid = ?";
		
		try {
            try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
            prSt = con.prepareStatement(sqlUpdate);
            
            // Take user input for insertion
            Scanner input = new Scanner(System.in);	
            
            System.out.print("Enter the Sid:  ");
            int sid = input.nextInt();
            System.out.println();
            
            System.out.print("Enter the student age:  ");
            int sage = input.nextInt();
            System.out.println();
            
            prSt.setInt(1, sage);
            prSt.setInt(2, sid);
 
            int rowAffected = prSt.executeUpdate();
            System.out.println(String.format("Row affected %d", rowAffected));
 
            // update another record -reuse the prepared statement
            System.out.print("Enter the another empid:  ");
            int eid1 = input.nextInt();
            System.out.println();
            
            System.out.print("Enter the another employee salary:  ");
            int esal1 = input.nextInt();
            System.out.println();
            
            prSt.setInt(1, esal1);
            prSt.setInt(2, eid1);
 
            rowAffected = prSt.executeUpdate();
            System.out.println(String.format("Row affected %d", rowAffected));
 
		}
		catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }		
    }
	
	//-------------------------- Deleting The Record-----------------------------//
//		public void deletePSRecord()
//	    { 
//			String sqlUpdate = "DELETE from emp where empid=?";
//			
//			try {
//	            try {
//					Class.forName("com.mysql.jdbc.Driver");
//					con = DriverManager.getConnection(url, user, password);
//				} catch (ClassNotFoundException e) {
//					e.printStackTrace();
//				}
//	            prSt = con.prepareStatement(sqlUpdate);
//	            
//	            // Take user input for insertion
//	            Scanner input = new Scanner(System.in);	
//	            
//	            System.out.print("Enter the empid:  ");
//	            int eid = input.nextInt();
//	            System.out.println();
//	            
//	            prSt.setInt(1, eid);
//	            prSt.executeUpdate();
//	            
//	            System.out.println("Record deleted successfully");
//			}
//			catch (SQLException ex) {
//	            System.out.println(ex.getMessage());
//	        }				
//	    
//
//	}

}
