package com.lightapp.controller.admin;

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
import com.lightapp.model.CustomerModel;

/**
 * Servlet implementation class CustomerList
 */
@WebServlet("/CustomerList")
public class CustomerList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 List<CustomerModel> customers = new ArrayList<>();

	        try (Connection conn = DbConfig.getDbConnection()) {
	            String sql = "SELECT * FROM customer"; // Use your actual table name
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                CustomerModel customer = new CustomerModel(
	                        rs.getString("first_name"),
	                        rs.getString("last_name"),
	                        rs.getString("email"),
	                        rs.getString("phone_number"),
	                        rs.getString("address"),
	                        rs.getString("gender"),
	                        rs.getString("username"),
	                        rs.getString("password"),
	                        rs.getString("user_role")
	                );
	                customers.add(customer);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        request.setAttribute("customerList", customers);
	        request.getRequestDispatcher("/WEB-INF/pages/admin/customerList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
