package CustomerP;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static  List<Payment> validate (String username, String password)	{
		
		ArrayList<Payment> pay = new ArrayList<>();
		
		try {
			
			con = Connect_DB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where Username = '"+username+"' and Password = '"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int PID = rs.getInt(1);
				String CName = rs.getString(2);
				String event = rs.getString(3);
				String price = rs.getString(4);
				String bank = rs.getString(5);
				String usernme = rs.getString(6);
				String passwrd = rs.getString(7);
				
				Payment p = new Payment (PID, CName, event, price, bank, usernme, passwrd);
				pay.add(p);
			
			}
			
		}
		
		catch (Exception e) {
			e.printStackTrace ();
		}
		
		return pay;
		
}
	
public static boolean insertpayment (String PID, String CName, String event, String price, String bank, String username, String password) { 
	
		boolean isSuccess = false;
		
		try {
			
			con = Connect_DB.getConnection();
			stmt = con.createStatement();
			String sql = "insert into payment values (0, '"+CName+"' , '"+event+"' , '"+price+"' , '"+bank+"' , '"+username+"' , '"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
				if(rs > 0) {
					isSuccess = true;
						   }
				else {
					isSuccess = false;
					  }
			
		     }
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}


public static boolean updatepayment (String PID, String CName, String event, String price, String bank, String username, String password) { 
	
	boolean isSuccess = false;
	
	try {
		
		con = Connect_DB.getConnection();
		stmt = con.createStatement();
		String sql = "update payment set CName='"+CName+"' , event='"+event+"' , price='"+price+"' , bank='"+bank+"' , username='"+username+"' , password='"+password+"'" + "where PID ='"+PID+"'";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) 
		{
			isSuccess = true;
		}
		
		else 
		{
			isSuccess = false;
		}
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
	}

public static List<Payment> getPaymentDetails(String PID) {
	
	int conID = Integer.parseInt(PID);
	
	ArrayList<Payment> pay = new ArrayList<>();
	
	try {
		
		con = Connect_DB.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where id='"+conID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int PID1 = rs.getInt(1);
			String CName = rs.getString(2);
			String event = rs.getString(3);
			String price = rs.getString(4);
			String bank = rs.getString(4);
			String username = rs.getString(5);
			String password = rs.getString(6);
			
			Payment p = new Payment(PID1, CName, event, price, bank, username, password);
			pay.add(p);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return pay;	
}


}
	
	
	
	
	
	
	
	
	
	
	