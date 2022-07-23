package CustomerP;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertServlet")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String PID = request.getParameter("PID");
		String CName = request.getParameter("CName");
	    String event = request.getParameter("event");
	    String price = request.getParameter("price");
	    String bank = request.getParameter("bank");
	    String username = request.getParameter("usn");
	    String password = request.getParameter("psw");
	    
	    boolean isTrue;
	    
	    isTrue = PaymentDBUtil.insertpayment(PID, CName, event, price, bank, username, password);
	    
	    if(isTrue == true) 
	    {
	    	RequestDispatcher dis1 = request.getRequestDispatcher("Sucess.jsp");
	    	dis1.forward (request,  response);
	    }
	    
	    else 
	    {
	    	RequestDispatcher dis2 = request.getRequestDispatcher("Unsucess.jsp");
	    	dis2.forward (request,  response);
	    }
	}
}