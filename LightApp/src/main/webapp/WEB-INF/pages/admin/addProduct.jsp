<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addProduct</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/addProduct.css"/>
</head>
<body>
	
	<div class="container">
		<h2>Add New Product</h2>
			<form action="AddProduct" method="post">
			    <label for="productName">Product Name:</label>
			    <input type="text" name="productName" id="productName" required>
			
			    <label for="brand">Brand:</label>
			    <input type="text" name="brand" id="brand" required>
			
			    <label for="modelNumber">Model Number:</label>
			    <input type="number" name="modelNumber" id="modelNumber" required>
			
			    <label for="category">Category:</label>
			    <input type="text" name="category" id="category" required>
			
			    <label for="sellingPrice">Selling Price:</label>
			    <input type="number" name="sellingPrice" id="sellingPrice" required>
			
			    <label for="costPrice">Cost Price:</label>
			    <input type="number" name="costPrice" id="costPrice" required>
			
			    <input type="submit" value="Add Product">
			</form>
		<br>
		
		<a href="${pageContext.request.contextPath}/ProductList" class="button">Back to Product List</a>
		</div>
</body>
</html>