package com.lightapp.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lightapp.config.DbConfig;
import com.lightapp.model.Product;

/**
 * Servlet implementation class SearchProduct
 */
@WebServlet("/SearchProduct")
public class SearchProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    String productName = request.getParameter("productName");
	    List<Product> productList = new ArrayList<>();

	    try (Connection conn = DbConfig.getDbConnection()) {
	        String sql = "SELECT productID, productName, brand, modelNumber, category, sellingPrice, costPrice " +
	                     "FROM product WHERE LOWER(productName) LIKE ?";
	        PreparedStatement pst = conn.prepareStatement(sql);
	        pst.setString(1, "%" + productName.toLowerCase() + "%");

	        ResultSet rs = pst.executeQuery();

	        while (rs.next()) {
	            Product p = new Product();
	            p.setProductID(rs.getInt("productID"));
	            p.setProductName(rs.getString("productName"));
	            p.setBrand(rs.getString("brand"));
	            p.setModelNumber(rs.getInt("modelNumber"));
	            p.setCategory(rs.getString("category"));
	            p.setSellingPrice(rs.getInt("sellingPrice"));
	            p.setCostPrice(rs.getInt("costPrice"));
	            productList.add(p);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    request.setAttribute("searchResults", productList);
	    request.setAttribute("query", productName);
	    request.getRequestDispatcher("/WEB-INF/pages/searchProduct.jsp").forward(request, response);
	}

}
