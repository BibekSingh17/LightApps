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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		try {
			
			Connection con = DbConfig.getDbConnection();
			String sql = "SELECT * FROM customer WHERE username= ? AND password = ?";
			PreparedStatement smt = con.prepareStatement(sql);
			
			smt.setString(1, userName);
			smt.setString(2, password);
			
			ResultSet rs = smt.executeQuery();
			
			if(rs.next()) {
				String role = rs.getString("user_role");
				
				if("admin".equalsIgnoreCase(role))
					request.getRequestDispatcher("/WEB-INF/pages/dashboard.jsp").forward(request, response);
				else
					request.getRequestDispatcher("WEB-INF/pages/product.jsp").forward(request,response);
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
