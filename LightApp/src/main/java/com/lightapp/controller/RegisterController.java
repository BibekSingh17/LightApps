package com.lightapp.controller;

import com.lightapp.config.DbConfig;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.mindrot.jbcrypt.BCrypt;



import com.lightapp.util.ValidationUtil;

/**
 * @LMI 23048631
 * @Author Bibek Kumar Singh
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String validationMessage = validateRegistrationForm(request);
		if(validationMessage != null) {
			handleError(request, response,validationMessage);
			return;
		}
		
		
		
		// getting values from registeration page
		String firstName = request.getParameter("firstname").trim();
		String lastName = request.getParameter("lastname").trim();
		String email = request.getParameter("email").trim();
		String phoneNumber = request.getParameter("phonenumber").trim();
		String address = request.getParameter("address").trim();
		String gender = request.getParameter("gender").trim();
		String userName = request.getParameter("username").trim();
		String password = request.getParameter("password").trim();
		String userRole = request.getParameter("userrole").trim();
		
		// checking the whether the password entered and re-type passowrd is same or not
		
		String confirmPassword = request.getParameter("confirmpassword");
		
		if(!password.equals(confirmPassword)) {
			request.setAttribute("error", "bhaii... password miilena......");
			request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
			return;
		}
		
		
		try {
			Connection con = DbConfig.getDbConnection();
			String sql = "INSERT INTO customer(first_name,last_name,email,phone_number,address,gender,username,password,user_role) VALUES (?,?,?,?,?,?,?,?,?)";
			PreparedStatement smt = con.prepareStatement(sql);
			String hashedpassword=BCrypt.hashpw(password,BCrypt.gensalt());
			smt.setString(1, firstName);
			smt.setString(2, lastName);
			smt.setString(3, email);
			smt.setString(4, phoneNumber);
			smt.setString(5, address);
			smt.setString(6, gender);
			smt.setString(7, userName);
			smt.setString(8, hashedpassword);
			smt.setString(9, userRole);
			
			int result = smt.executeUpdate();
			
			// if database is updated for registration then redirect to login page 
			if (result > 0) request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
			else request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
			
			/* 
			String nextPage = (result > 0) ? "/WEB-INF/pages/login.jsp" : "/WEB-INF/pages/register.jsp";
            request.getRequestDispatcher(nextPage).forward(request, response);
			*/
			
		}
		
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
			
		}
		
		
		
		
		
		
	}
	
	private String validateRegistrationForm(HttpServletRequest request) {
		
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phonenumber");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmpassword");
		String userRole = request.getParameter("userrole");
		
		// checking for null or empty fields 
		
		if (ValidationUtil.isNullOrEmpty(firstName))
			return "First Name is required.";
		
		if (ValidationUtil.isNullOrEmpty(lastName))
			return "Last Name is required.";
		
		if (ValidationUtil.isNullOrEmpty(email))
			return "email is required.";
		
		if (ValidationUtil.isNullOrEmpty(phoneNumber))
			return "Phone number is required.";
		
		
		if (ValidationUtil.isNullOrEmpty(address))
			return "Address is required.";
	
		
		if (ValidationUtil.isNullOrEmpty(gender))
			return "Gender is required.";
	
		
		if (ValidationUtil.isNullOrEmpty(userName))
			return "Username is required.";
	
		
		if (ValidationUtil.isNullOrEmpty(password))
			return "Password is required.";
	
		
		if (ValidationUtil.isNullOrEmpty(confirmPassword))
			return " Re-type password is required.";
	
		
		if (ValidationUtil.isNullOrEmpty(userRole))
			return "User Role is required.";
	
		
		// doing validation of fields
		if (!ValidationUtil.isAlphanumericStartingWithLetter(userName))
			return "Username only contain Number and Alphabet and start with a letter";
	
		
		if (!ValidationUtil.isValidGender(gender))
			return "Must be male or female";
	
		
		if(!ValidationUtil.isValidEmail(email))
			return "Invalid Email Formate";
	
		
		if (!ValidationUtil.isValidPassword(password))
			return "password must be at least 8 digit, contain uppercase, number, symbol";
		

		if (!ValidationUtil.isValidPhoneNumber(phoneNumber))
			return "Phone number must start with 98 and be exactly 10 digits.";

		return null; // all validation passed bro...
		
	}
	
	
	private void handleError(HttpServletRequest req, HttpServletResponse resp, String message) 
			throws ServletException, IOException {
		
			req.setAttribute("error", message);
			req.setAttribute("firstName",req.getParameter("firstname"));
			req.setAttribute("lastname", req.getParameter("lastname"));
			req.setAttribute("email", req.getParameter("email"));
			req.setAttribute("phonenumber",req.getParameter("phonenumber"));
			req.setAttribute("address",req.getParameter("address"));
			req.setAttribute("gender", req.getParameter("gender"));
			req.setAttribute("username", req.getParameter("username"));
			req.setAttribute("password", req.getParameter("password"));
			req.setAttribute("userrole", req.getParameter("userrole"));
			
			req.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(req, resp);
		
	}
	
//	private void handleSuccess(HttpServletRequest req, HttpServletResponse resp,String message, String redirectPage)
//	throws ServletException, IOException{
//		req.setAttribute("success", message);
//		req.getRequestDispatcher(redirectPage).forward(req, resp);
//	}

	

}
