<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lightapp.model.Product" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/productList.css"/>
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>



<div class="container">
    <h2>Product List</h2>
    <a href="${pageContext.request.contextPath}/AddProduct" class="button">Add New Product</a>
    <br><br>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Product Name</th>
                <th>Brand</th>
                <th>Model Number</th>
                <th>Category</th>
                <th>Selling Price</th>
                <th>Cost Price</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Product> productList = (List<Product>) request.getAttribute("productList");
                if (productList != null) {
                    for (Product p : productList) {
            %>
            <tr>
                <td><%= p.getProductID() %></td>
                <td><%= p.getProductName() %></td>
                <td><%= p.getBrand() %></td>
                <td><%= p.getModelNumber() %></td>
                <td><%= p.getCategory() %></td>
                <td><%= p.getSellingPrice() %></td>
                <td><%= p.getCostPrice() %></td>
                <td>
                    <a href="EditProduct?id=<%= p.getProductID() %>" class="button">Edit</a>
                    <a href="DeleteProduct?id=<%= p.getProductID() %>" onclick="return confirm('Are you sure you want to delete this product?');" class="button" style="background-color:#f44336;">Delete</a>
                </td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="8" style="text-align:center;">No products found.</td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>

</body>
</html>