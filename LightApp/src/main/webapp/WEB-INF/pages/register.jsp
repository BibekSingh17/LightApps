<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LightApp Register page</title>
<link rel="styleSheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css"/>
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
</head>
<body>
	<div class="container">
        <div class="image">
           <img id="registration-image" src="${pageContext.request.contextPath}/resources/images/system/register.png" alt="registration" >
            <h1 id="text-lighting-product">Lighting Product</h1>
        </div>

        <div class="content">
            <div class="reg-container">
                <h2 id="reg-text">Registration</h2>
                <div id="box"></div>
            </div>
            <form action="register" method="post">
                <div class="reg-content">

                    <div class="fl-container">
                        <label for="f-name" class="registration-text" >First Name</label>
                        <input id="f-name" name="firstname" type="text" required>
    
                        <label for="l-name" class="registration-text" >Last Name</label>
                        <input id="l-name" name="lastname" type="text" required>
                    </div>

                    <div class="ep-container">
                        <label for="email" class="registration-text" >Email</label>
                        <input id="email" name="email" type="email" required>
    
                        <label for="p-number" class="registration-text">Phone Number</label>
                        <input id="p-number" name="phonenumber" type="number" required>
                    </div>

                    <div class="ag-container">
                        <label for="address" class="registration-text">Address</label>
                        <input id="address" name="address" type="text" required>
    
                        <label for="gender" class="registration-text" >Gender</label>
                        <input id="gender" name="gender" type="text" required>
                    </div>


                    <div class="up-container">
                        <label for="username" class="registration-text" >Username</label>
                        <input id="username" name="username" type="text" required>
                        
                        <label for="password" class="registration-text" >Password</label>
                        <input id="password" name="password" type="password" required>
                    </div>

                    <div class="confirm-c">
                        <label for="c-password" class="registration-text" >Confirm Password</label>
                        <input id="c-password" name="confirmpassword" type="password" required>

                    </div>

                    <div class="user-role">
                        <label for="user-role" class="registration-text" >User Role</label>
                        <input id="user-role" name="userrole" type="text" required>
                    </div>

                </div>

                <div class="btn">
                    <button id="submit-btn">Sign up</button>
                    <p id="login-btn"> Already Registered? <a href="${pageContext.request.contextPath}/login"><span id="login-text">Login</span></a></p>
                </div>
            
            </form>
            
        </div>
        


    </div>
</body>
</html>