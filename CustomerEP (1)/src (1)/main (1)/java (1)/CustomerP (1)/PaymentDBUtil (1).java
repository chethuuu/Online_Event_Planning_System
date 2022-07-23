package CustomerP;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {
	
	//Instance Variable
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

//Validate Payment Details
public static boolean validate (String username, String password) {
	
	try {
		
		con = Connect_DB.getConnection();
		stmt = con.createStatement();
		String sql =  "select * from payment where Username = '"+username+"' and Password = '"+password+"'";
		rs = stmt.executeQuery(sql);
		
		if (rs.next())
		{
			isSuccess = true;
		}
		else
		{
			isSuccess = false;
		}
		
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	return isSuccess;
}

//Get Payment
public static  List<Payment> getPayment (String username)	{
		
		ArrayList<Payment> pay = new ArrayList<>();
		
		try {
			
			con = Connect_DB.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where Username = '"+username+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
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

//Insert Payment
public static boolean insertpayment (String CName, String event, String price, String bank, String username, String password) { 
		
		try {
			
			con = Connect_DB.getConnection();
			stmt = con.createStatement();
			String sql = "insert into payment values (0, '"+CName+"' , '"+event+"' , '"+price+"' , '"+bank+"' , '"+username+"' , '"+password+"')";
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
		
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}

//Update Payment
public static boolean updatepayment (String PID, String CName, String event, String price, String bank, String username, String password) { 
	
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


//Retrive Payment Details
public static List<Payment> getPaymentDetails(String Pid) {
	
	int conID = Integer.parseInt(Pid);
	
	ArrayList<Payment> pay = new ArrayList<>();
	
	try {
		
		con = Connect_DB.getConnection();
		stmt = con.createStatement();
		String sql = "select * from payment where PID='"+conID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int PID = rs.getInt(1);
			String CName = rs.getString(2);
			String event = rs.getString(3);
			String price = rs.getString(4);
			String bank = rs.getString(5);
			String username = rs.getString(6);
			String password = rs.getString(7);
			
			Payment p = new Payment(PID, CName, event, price, bank, username, password);
			pay.add(p);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return pay;	
}


//Delete Payment Details
public static boolean deletepayment (String Pid) {
	
	int ConPID = Integer.parseInt(Pid);
	
	try {
		
		con = Connect_DB.getConnection();
		stmt = con.createStatement();
		String sql = "delete from payment where PID='"+ConPID+"'";
		int rs = stmt.executeUpdate(sql);
		
		if (rs > 0)
		{
			isSuccess = true;
		}
		
		else 
		{
			isSuccess = false;
		}
		
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}

}
	
	
	
	
	
	
	
	
	
	
	