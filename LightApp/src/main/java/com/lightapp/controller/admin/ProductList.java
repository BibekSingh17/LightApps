package com.lightapp.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.lightapp.config.DbConfig;
import com.lightapp.model.Product;

/**
 * Servlet implementation class ProductList
 */
@WebServlet("/ProductList")
public class ProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  List<Product> productList = new ArrayList<>();

	        try (Connection con = DbConfig.getDbConnection();
	             Statement stmt = con.createStatement();
	             ResultSet rs = stmt.executeQuery("SELECT * FROM product")) {

	            while (rs.next()) {
	                Product product = new Product(
	                        rs.getInt("productID"),
	                        rs.getString("productName"),
	                        rs.getString("brand"),
	                        rs.getInt("modelNumber"),
	                        rs.getString("category"),
	                        rs.getInt("sellingPrice"),
	                        rs.getInt("costPrice")
	                );
	                productList.add(product);
	            }
	            request.setAttribute("productList", productList);
	            request.getRequestDispatcher("/WEB-INF/pages/admin/productList.jsp").forward(request, response);

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
