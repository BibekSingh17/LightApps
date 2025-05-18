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
 * Servlet implementation class UpdateProduct
 */
@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productID = Integer.parseInt(request.getParameter("productID"));
        String productName = request.getParameter("productName");
        String brand = request.getParameter("brand");
        int modelNumber = Integer.parseInt(request.getParameter("modelNumber"));
        String category = request.getParameter("category");
        int sellingPrice = Integer.parseInt(request.getParameter("sellingPrice"));
        int costPrice = Integer.parseInt(request.getParameter("costPrice"));

        String sql = "UPDATE product SET productName = ?, brand = ?, modelNumber = ?, category = ?, sellingPrice = ?, costPrice = ? WHERE productID = ?";

        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, productName);
            ps.setString(2, brand);
            ps.setInt(3, modelNumber);
            ps.setString(4, category);
            ps.setInt(5, sellingPrice);
            ps.setInt(6, costPrice);
            ps.setInt(7, productID);

            int updated = ps.executeUpdate();
            if (updated > 0) {
            	response.sendRedirect(request.getContextPath()+"/ProductList");
            } else {
                response.getWriter().println("Product not found for update.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

}
