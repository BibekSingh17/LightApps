<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/contact.css"/>
</head>
<body>
<jsp:include page="header.jsp"/>

<section class="contact-top">
    <h2>GET IN TOUCH</h2>
    <div class="contact-info">
      <div class="info-box">
        <i class="fas fa-map-marker-alt"></i>
        <h3>ADDRESS</h3>
        <p>Bright Future Trading Pvt. Ltd.<br>Kathmandu Office: Putalisadak, Nepal<br>Warehouse: Birgunj, Nepal</p>
      </div>
      <div class="info-box">
        <i class="fas fa-phone-alt"></i>
        <h3>PHONE</h3>
        <p>+977-9800000000<br>+977-9801111111</p>
      </div>
      <div class="info-box">
        <i class="fas fa-envelope"></i>
        <h3>EMAIL</h3>
        <p>support@brightfuture.com.np<br>info@brightfuture.com.np</p>
      </div>
    </div>
  </section>

  <section class="contact-form-section">
    <h2>Message Us</h2>
    <p>If you have questions or need help with importing or lighting products, reach out using the form below.</p>
    
    <form class="contact-form">
      <div class="form-group">
        <label for="name">Name</label>
        <input type="text" id="name" required>
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" required>
      </div>

      <div class="form-group full">
        <label for="message">Message</label>
        <textarea id="message" rows="5" required></textarea>
      </div>

      <button type="submit">Send Message</button>
    </form>
  </section>
  
  <jsp:include page="footer.jsp" />

</body>
</html>