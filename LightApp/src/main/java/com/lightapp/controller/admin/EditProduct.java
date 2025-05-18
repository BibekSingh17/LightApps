package com.lightapp.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.lightapp.config.DbConfig;
import com.lightapp.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/**
 * Servlet implementation class EditProduct
 */
@WebServlet("/EditProduct")
public class EditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productID = Integer.parseInt(request.getParameter("id"));

        String sql = "SELECT * FROM product WHERE productID = ?";

        try (Connection con = DbConfig.getDbConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, productID);

            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    Product product = new Product(
                            rs.getInt("productID"),
                            rs.getString("productName"),
                            rs.getString("brand"),
                            rs.getInt("modelNumber"),
                            rs.getString("category"),
                            rs.getInt("sellingPrice"),
                            rs.getInt("costPrice")
                    );
                    request.setAttribute("product", product);
                    request.getRequestDispatcher("/WEB-INF/pages/admin/editProduct.jsp").forward(request, response);
                } else {
                    response.getWriter().println("Product not found");
                }
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
