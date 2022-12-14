package JDBC.program;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	// This class can be used to initialize the database connection
	
		protected static  Connection initializeDatabase()
			throws SQLException, ClassNotFoundException
		{
			// Initialize all the information regarding
			// Database Connection
			String dbDriver = "com.mysql.jdbc.Driver";
			String dbURL = "jdbc:mysql://localhost:3306/phase2JavaFSD";
			// Database name to access
			String dbUsername = "root";
			String dbPassword = "root";

			Class.forName(dbDriver);
			Connection con = DriverManager.getConnection(dbURL,
														dbUsername,
														dbPassword);
			return con;
		}
}

