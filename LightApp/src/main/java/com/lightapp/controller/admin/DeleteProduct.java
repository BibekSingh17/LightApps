package com.lightapp.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lightapp.config.DbConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class DeleteProduct
 */
@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int productID = Integer.parseInt(request.getParameter("id"));

	        String sql = "DELETE FROM product WHERE productID = ?";

	        try (Connection con = DbConfig.getDbConnection();
	             PreparedStatement ps = con.prepareStatement(sql)) {

	            ps.setInt(1, productID);
	            int deleted = ps.executeUpdate();
	            if (deleted > 0) {
	            	response.sendRedirect(request.getContextPath()+"/ProductList");
	            } else {
	                response.getWriter().println("Product not found for deletion.");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	            response.getWriter().println("Error: " + e.getMessage());
	        }
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
