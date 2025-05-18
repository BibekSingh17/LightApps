<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/login.css"/>
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
	<div class="login-container">
        <h2>Login</h2>
        
        <!-- Display error messages -->
        <c:if test="${not empty error}">
            <div class="error-message">${error}</div>
        </c:if>
        
        <form action="login" method="post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required>
                
                <!-- Display specific error for username -->
                <c:if test="${not empty usernameError}">
                    <div class="error-message">${usernameError}</div>
                </c:if>
                
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
                
                <!-- Display specific error for password -->
                <c:if test="${not empty passwordError}">
                    <div class="error-message">${passwordError}</div>
                </c:if>
            </div>
            <div class="actions"> 
                <button type="submit" class="login-btn">Login</button>
                <div class="links">
                    <a href="#" class="forgot-password">Forgot Password?</a>
                    <a href="${pageContext.request.contextPath}/register" class="sign-up">Register</a>
                </div>
            </div>
        </form>
    </div>
</body>
</html>