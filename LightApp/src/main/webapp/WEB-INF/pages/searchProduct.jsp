<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*, com.lightapp.model.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Product</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/searchProduct.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>

<h2>Search Results for "<%= request.getAttribute("query") %>"</h2>

    <%
        List<Product> results = (List<Product>) request.getAttribute("searchResults");
        if (results == null || results.isEmpty()) {
    %>
        <p class="no-results">No products found.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Product Name</th>
                <th>Model Number</th>
                <th>Category</th>
                <th>Selling Price</th>
            </tr>
            <% for (Product p : results) { %>
                <tr>
                    <td><%= p.getProductName() %></td>
                    <td><%= p.getModelNumber() %></td>
                    <td><%= p.getCategory() %></td>
                    <td class="price">Rs. <%= p.getSellingPrice() %></td>
                </tr>
            <% } %>
        </table>
    <%
        }
    %>
<jsp:include page="footer.jsp" />
</body>
</html>