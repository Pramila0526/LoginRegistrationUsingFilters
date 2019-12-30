package com.bridgelabz.loginregistration.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bridgelabz.loginregistration.dao.LoginDao;
import com.bridgelabz.loginregistration.model.Customer;
/**************************************************************************************************
 * @author 	Pramila05263
 * Purpose	Code to Make Registrations
 *
 ***********************************************************************************************/
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Inside LoginReg");
		LoginDao logindao = new LoginDao();

		String submitType = request.getParameter("Submit");
		Customer customer = new Customer();

		// If User Enters Register Button
		if (submitType.equals("Register")) {

			customer.setFirstName(request.getParameter("firstname"));
			customer.setLastName(request.getParameter("lastname"));
			customer.setUserName(request.getParameter("username"));
			Integer it = Integer.parseInt(request.getParameter("age"));
			customer.setAge(it);
			customer.setPassword(request.getParameter("password"));
			// int validate=Validatedata.validatedata(customer);
			// if(validate>0) {
			logindao.registerCustomer(customer);
			request.setAttribute("successMessage", "Registration Done,Please Login!!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			// }
		}
	}
}
