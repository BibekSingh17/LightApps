<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*, com.lightapp.model.CustomerModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CustomerList</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/customerList.css"/>
</head>
<body>
		<h2>Customer List</h2>
    <table>
        <tr>
            <th>First Name</th><th>Last Name</th><th>Email</th><th>Phone</th><th>Address</th>
            <th>Gender</th><th>Username</th><th>User Role</th>
        </tr>
        <%
            List<CustomerModel> customers = (List<CustomerModel>) request.getAttribute("customerList");
            if (customers != null) {
                for (CustomerModel customer : customers) {
        %>
        <tr>
            <td><%= customer.getFirstname() %></td>
            <td><%= customer.getLastname() %></td>
            <td><%= customer.getEmail() %></td>
            <td><%= customer.getPhonenumber() %></td>
            <td><%= customer.getAddress() %></td>
            <td><%= customer.getGender() %></td>
            <td><%= customer.getUsername() %></td>
            <td><%= customer.getUserrole() %></td>
        </tr>
        <%      }
            } else {
        %>
        <tr><td colspan="8">No customers found</td></tr>
        <% } %>
    </table>
</body>
</html>