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
import java.sql.ResultSet;
import org.mindrot.jbcrypt.BCrypt;


/**
 * @ID 23048631
 * @Author Bibek Kumar Singh
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
	    // Check if username or password is vacant
	    if (userName == null || userName.trim().isEmpty()) {
	        request.setAttribute("usernameError", "Username is required.");
	        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	        return; // stop further execution
	    }
	    
	    
	    if (password == null || password.trim().isEmpty()) {
	        request.setAttribute("passwordError", "Password is required.");
	        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	        return; // stop further execution
	    }
	    
		
		try {
			
			Connection con = DbConfig.getDbConnection();
			String sql = "SELECT * FROM customer WHERE username= ?";
			PreparedStatement smt = con.prepareStatement(sql);
			
			smt.setString(1, userName);
			
			ResultSet rs = smt.executeQuery();
			
			if(rs.next()) {
				String role = rs.getString("user_role");
				String hashedPassword = rs.getString("password");
				
				if (BCrypt.checkpw(password, hashedPassword)) {
					
					request.getSession().setAttribute("loggedUser", rs.getString("username"));
	                request.getSession().setAttribute("userRole", role);
					if("admin".equalsIgnoreCase(role))
						request.getRequestDispatcher("/WEB-INF/pages/admin/dashboard.jsp").forward(request, response);
					else
						request.getRequestDispatcher("WEB-INF/pages/product.jsp").forward(request,response);
				}
				
				else {
					request.setAttribute("error", "Invalid username or password.");
					request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
				}
				
				
			}
			
			else {
				request.setAttribute("error", "Invalid username or password.");
				request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
			}

		
			
		}
		catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Something went wrong.");
	        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);

		}
		
	}

}
