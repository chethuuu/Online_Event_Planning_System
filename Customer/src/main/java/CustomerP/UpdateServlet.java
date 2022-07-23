package CustomerP;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String PID = request.getParameter("PID");
		String CName = request.getParameter("CName");
		String event = request.getParameter("event");
		String price = request.getParameter("price");
		String bank = request.getParameter("bank");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.updatepayment(PID, CName, event, price, bank, username, password);
		
		if(isTrue == true) {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(PID);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("Sucess.jsp");
			dis1.forward(request, response);
		}
		else {
			List<Payment> cusDetails = PaymentDBUtil.getPaymentDetails(PID);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("PayProfile.jsp");
			dis2.forward(request, response);
		}
	}

}
