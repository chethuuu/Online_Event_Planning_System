package CustomerP;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect_DB {
	
	private static String url = "jdbc:mysql://localhost:3306/event";
	private static String User = "root";
	private static String Pword = "che0916";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, User, Pword);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}
