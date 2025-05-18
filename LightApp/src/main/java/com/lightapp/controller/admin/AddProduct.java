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
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/pages/admin/addProduct.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productName = request.getParameter("productName");
        String brand = request.getParameter("brand");
        int modelNumber = Integer.parseInt(request.getParameter("modelNumber"));
        String category = request.getParameter("category");
        int sellingPrice = Integer.parseInt(request.getParameter("sellingPrice"));
        int costPrice = Integer.parseInt(request.getParameter("costPrice"));

        String sql = "INSERT INTO product(productName, brand, modelNumber, category, sellingPrice, costPrice) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, productName);
            ps.setString(2, brand);
            ps.setInt(3, modelNumber);
            ps.setString(4, category);
            ps.setInt(5, sellingPrice);
            ps.setInt(6, costPrice);

            ps.executeUpdate();
            response.sendRedirect(request.getContextPath()+"/ProductList");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

}
