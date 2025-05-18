<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/userProfile.css"/>
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
    <h1>My Profile</h1>

    <div class="profile-card">
        <div class="profile-info">
            <img src="${pageContext.request.contextPath}/images/avatar-placeholder.png"
                 alt="Profile Picture" class="profile-image">
            <span class="full-name">${firstName} ${lastName}</span>
        </div>
        <button class="edit-btn">Edit</button>
    </div>

    <h2>Personal Information</h2>
    <div class="info-card">
        <div class="info-item">
            <label>First Name</label>
            <p>${firstName}</p>
        </div>
        <div class="info-item">
            <label>Last Name</label>
            <p>${lastName}</p>
        </div>
        <div class="info-item">
            <label>Username</label>
            <p>${username}</p>
        </div>
        <div class="info-item">
            <label>Email</label>
            <p>${email}</p>
        </div>
        <div class="info-item">
            <label>Phone</label>
            <p>${phone}</p>
        </div>
        <div class="info-item">
            <label>Address</label>
            <p>${address}</p>
        </div>
        <button class="edit-btn">Edit</button>
    </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>