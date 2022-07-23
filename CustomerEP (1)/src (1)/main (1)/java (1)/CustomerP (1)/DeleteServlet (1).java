package CustomerP;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String PID = request.getParameter("PID");
		
	 	
		boolean isTrue;
		
		isTrue = PaymentDBUtil.deletepayment(PID);
		
		if (isTrue == true) 
		{
			RequestDispatcher dis1 = request.getRequestDispatcher("Pay_Insert.jsp");
			dis1.forward(request, response);
		}
		
		else 
		{
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(PID);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis1 = request.getRequestDispatcher("PayProfile.jsp");
			dis1.forward(request, response);
		}
	}

}
