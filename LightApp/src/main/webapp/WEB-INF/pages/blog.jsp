<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/blog.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>
	
	<section class="blog-hero">
    <h1>Our Blog</h1>
    <p>Get lighting tips, import guides, and updates from Bright Future Trading Pvt. Ltd.</p>
  </section>

  <section class="blog-list">
    <div class="blog-card">
      <img src="${pageContext.request.contextPath}/resources/images/system/logo of lightApp.png" alt="LED Import Guide">
      <div class="card-content">
        <h2>How to Import LED Lights from China to Nepal</h2>
        <p>Learn the step-by-step process of importing high-quality LED products from China, including customs, shipping, and supplier verification.</p>
        <a href="#">Read More</a>
      </div>
    </div>

    <div class="blog-card">
      <img src="${pageContext.request.contextPath}/resources/images/system/smart led bulb box.png" alt="Best LED Lights 2025">
      <div class="card-content">
        <h2>Top LED Lights to Buy in 2025 for Home and Business</h2>
        <p>Discover the best LED bulbs, panel lights, and flood lights available in 2025 and how to choose the right ones for your needs.</p>
        <a href="#">Read More</a>
      </div>
    </div>

    <div class="blog-card">
      <img src="${pageContext.request.contextPath}/resources/images/system/Street Light.png" alt="Energy Saving Tips">
      <div class="card-content">
        <h2>5 Lighting Tips to Save Energy and Reduce Bills</h2>
        <p>Save money and electricity by using these practical lighting tips. Great for homes, shops, and offices in Nepal!</p>
        <a href="#">Read More</a>
      </div>
    </div>
  </section>
  <jsp:include page="footer.jsp" />
</body>
</html>