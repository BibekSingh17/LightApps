package com.lightapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lightapp.config.DbConfig;

/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("loggedUser") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String username = (String) session.getAttribute("loggedUser");

        try (Connection con = DbConfig.getDbConnection()) {
            String sql = "SELECT first_name, last_name, email, phone_number, address, username FROM customer WHERE username = ?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                request.setAttribute("firstName", rs.getString("first_name"));
                request.setAttribute("lastName", rs.getString("last_name"));
                request.setAttribute("username", rs.getString("username"));
                request.setAttribute("email", rs.getString("email"));
                request.setAttribute("phone", rs.getString("phone_number"));
                request.setAttribute("address", rs.getString("address"));

                request.getRequestDispatcher("/WEB-INF/pages/userProfile.jsp").forward(request, response);
            } else {
                session.invalidate();
                response.sendRedirect(request.getContextPath() + "/login");
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error loading profile.");
            request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	    }
	

}
