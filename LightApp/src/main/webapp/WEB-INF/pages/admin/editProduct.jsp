<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lightapp.model.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edit Product</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/editProduct.css"/>
</head>
<body>

		<div class="container">
		<h2>Edit Product</h2>
		<%
		    Product product = (Product) request.getAttribute("product");
		    if (product == null) {
		%>
		    <p>Product not found.</p>
		    <a href="productList" class="button">Back to Product List</a>
		<%
		    } else {
		%>
		<form action="UpdateProduct" method="post">
		    <input type="hidden" name="productID" value="<%= product.getProductID() %>">
		
		    <label for="productName">Product Name:</label>
		    <input type="text" name="productName" id="productName" value="<%= product.getProductName() %>" required>
		
		    <label for="brand">Brand:</label>
		    <input type="text" name="brand" id="brand" value="<%= product.getBrand() %>" required>
		
		    <label for="modelNumber">Model Number:</label>
		    <input type="number" name="modelNumber" id="modelNumber" value="<%= product.getModelNumber() %>" required>
		
		    <label for="category">Category:</label>
		    <input type="text" name="category" id="category" value="<%= product.getCategory() %>" required>
		
		    <label for="sellingPrice">Selling Price:</label>
		    <input type="number" name="sellingPrice" id="sellingPrice" value="<%= product.getSellingPrice() %>" required>
		
		    <label for="costPrice">Cost Price:</label>
		    <input type="number" name="costPrice" id="costPrice" value="<%= product.getCostPrice() %>" required>
		
		    <input type="submit" value="Update Product">
		</form>
		<br>
		<a href="${pageContext.request.contextPath}/ProductList" class="button">Back to Product List</a>
		<%
		    }
		%>
		</div>

</body>
</html>