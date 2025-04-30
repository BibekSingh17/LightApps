<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/home.css"/>
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
</head>
<body>
	
	<jsp:include page="header.jsp"/>
	
	<!-- hero content -->
	<section class="head">

        <div class="main-content">
            <div class="primary-content">
                <h1>Lighting up <br>Every Corner <br> of your life</h1>

            </div>
            <div class="paragraph">
                <p>Explore Smart  Stylish Lighting</p>
                <p>Our Mission to Light Up the World</p>
                
            </div>

            <div class="button">
                <ul>
                    <li id="login"><a href="${pageContext.request.contextPath}/login">Login</a></li>
                    <li id="signup"><a href="${pageContext.request.contextPath}/register">Sign up <i class="fa-solid fa-arrow-right"></i></a></li>
                </ul>
            </div>

        </div>

        <div class="image">
            <img src="${pageContext.request.contextPath}/resources/images/system/header.png" alt="registration" >
        </div>

    </section>
    <!-- end of hero section -->
    
    <!-- secondary section -->
        <section class="secondary">

        <p id="paragraph">We take care of more than 100K customer</p>


        <div class="img">

            <div class="content">
                <img src="${pageContext.request.contextPath}/resources/images/system/logo of ambbar.png" alt="ambbar">
                <div><p id="ambbar">Ambbar</p></div>
            </div>

            <div class="content">
                <img src="${pageContext.request.contextPath}/resources/images/system/Ms light.png" alt="ms light">
            </div>
            
            <div class="content">
                <img src="${pageContext.request.contextPath}/resources/images/system/bibek light.png" alt="bibek">
            </div>

            <div class="content">
                <img src="${pageContext.request.contextPath}/resources/images/system/sunrise.png" alt="sunrise ">
            </div>

            <div class="content">
                <img src="${pageContext.request.contextPath}/resources/images/system/mango.png" alt="mango">
            </div>

            <div class="content">
                <img src="${pageContext.request.contextPath}/resources/images/system/quill.png" alt="quill">
            </div>
        
        
        </div>


    </section>
	<!-- End of secondary section -->
	
	<!-- starting with feature section -->
	 <section class="feature">

        <div class="secondary-heading">
            <h3>
                 Energy-Efficient Brilliance <br>along with Smart Control
            </h3>

            <p>
                Control your lights anytime, anywhere — with your phone or voice. Light up your world, your way.
            </p>

            <button>product</button>

        </div>

        <div class="secondary-sec-heading">

            <div class="secondary-text">
                <i class="fa-solid fa-money-check"></i>
                <h3>
                    Controll bill
                </h3>

                <p>
                    Our energy-efficient LED tech cuts down power usage — so your home shines without your wallet crying.
                </p>
            </div>


        </div>

        <div class="secondary-third-heading">

            <div class="secondary-third-first">
                <i class="fa-regular fa-lightbulb"></i>
                <h3>
                    Built to Last
                </h3>
                <p>Durable, weatherproof, and reliable — LightApp products are made for the long run.</p>
                

            </div>

            <div class="secondary-third-secondary">
                <i class="fa-solid fa-swatchbook"></i>
                <h3>
                    Sleek and Stylish Designs
                </h3>
                <p>
                    Modern aesthetics meet functional design. Our lights are made to match your vibe
                </p>

            </div>

        </div>


    </section>
	
	
	<!-- End of feature section -->
	
	
	<!-- starting of brand section -->
	<section class="brand-text">
        <h3>
            Top Most Selling Brand
        </h3>
    </section>

    <section class="product-feature">

        <div class="tandem">
            <img src="${pageContext.request.contextPath}/resources/images/system/tandem led bulb box.png" alt="led bulb brand of tandem">
            
            <div class="tandem-text">
                <h3>Tandem Led Bulb</h3>
                <button>shop now</button>
            </div>
            
        </div>

        <div class="tandem">
            <img src="${pageContext.request.contextPath}/resources/images/system/Drift light led box.png" alt="led bulb brand of tandem">
            
            <div class="tandem-text">
                <h3>Drift Led Bulb</h3>
                <button>shop now</button>
            </div>
            
        </div>

        <div class="tandem">
            <img src="${pageContext.request.contextPath}/resources/images/system/philips led box.png" alt="led bulb brand of tandem">
            
            <div class="tandem-text">
                <h3>Philips Led Bulb</h3>
                <button>shop now</button>
            </div>
            
        </div>

        <div class="tandem">
            <img src="${pageContext.request.contextPath}/resources/images/system/smart led bulb box.png" alt="led bulb brand of tandem">
            
            <div class="tandem-text">
                <h3>Smart Led Bulb</h3>
                <button>shop now</button>
            </div>
            
        </div>

        <div class="tandem">
            <img src="${pageContext.request.contextPath}/resources/images/system/Bright Led.png" alt="led bulb brand of tandem">
            
            <div class="tandem-text">
                <h3>Bright Led Bulb</h3>
                <button>shop now</button>
            </div>
            
        </div>



    </section>
	
	<!-- End of brand section -->
	
	<jsp:include page="footer.jsp" />
</body>
</html>