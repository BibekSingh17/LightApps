<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css"/>
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
</head>
<body>

	<header class="navigation">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/images/system/logo of lightApp.png" alt="registration" >
            <div class="lightApp"><p>LightApp</p></div>
        </div>

        <div class="nav">
            <ul class="list">
                <li><a class="nav-text" href="#">Home</a></li>
                <li><a class="nav-text" href="">Product</a></li>
                <li><a class="nav-text" href="#">Blog</a></li>
                <li><a class="nav-text" href="#">Contact us</a></li>
            </ul>

        </div>

        <div class="user-profile">
            <a class="nav-text" href="#"><i class="fa-solid fa-user"></i>Profile</a>
            <ul>
                <li id="login"><a href="${pageContext.request.contextPath}/login">Login</a></li>
                <li id="signup"><a href="${pageContext.request.contextPath}/register">Sign up</a></li>
            </ul>

        </div>

    </header>

</body>
</html>