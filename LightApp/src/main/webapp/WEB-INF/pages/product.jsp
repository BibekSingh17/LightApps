<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/product.css"/>
</head>
<body>

<!-- header of product -->
    <header class="navigation">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/images/system/logo of lightApp.png" alt="light App">
            <div class="lightApp"><p>LightApp</p></div>
        </div>

        <div class="nav">
            <ul class="list">
                <li><a class="nav-text" href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a class="nav-text" href="${pageContext.request.contextPath}/ProductController">Product</a></li>
                <li><a class="nav-text" href="${pageContext.request.contextPath}/Blog">Blog</a></li>
                <li><a class="nav-text" href="${pageContext.request.contextPath}/Contact">Contact us</a></li>
            </ul>

        </div>

        <div class="user-profile">
            <a class="nav-text" href="${pageContext.request.contextPath}/UserProfile"><i class="fa-solid fa-user"></i>Profile</a>
            <ul>
                <form action="Logout" method="POST">
                    <li id="login">
                     <button type="submit" class="logout-btn">Log out</button>
                    </li>
                </form>

            </ul>

        </div>

    </header>

    



    <!-- end of the header -->
    <form class="search-form" action="SearchProduct" method="post">
        <input type="text" name="productName" placeholder="Search products..." required />
        <button type="submit"><i class="fa fa-search"></i></button>
    </form>


    <section class="product">

        <!-- street light -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Street Light.png" alt="Street Light">

            <div class="street-light-text">
                <h3>Street Light 50W</h3>
                <p class="price">Rs 2104</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>
        <!-- end of street light 50w-->
         <!-- starting of 100w -->

        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Street Light.png" alt="Street Light">

            <div class="street-light-text">
                <h3>Street Light 100W</h3>
                <p class="price">Rs 4521</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of 100w -->

        <!-- starting of 150w -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Street Light.png" alt="Street Light">

            <div class="street-light-text">
                <h3>Street Light 150W</h3>
                <p class="price">Rs 4254</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of 150w -->

        <!-- starting of 200w -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Street Light.png" alt="Street Light">

            <div class="street-light-text">
                <h3>Street Light 200W</h3>
                <p class="price">Rs 2364</p>
                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of street light 200w -->

    </section>


    <section class="product">

        <!-- street light -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Flood Light.png" alt="Flood light">

            <div class="street-light-text">
                <h3>Flood Light 50W</h3>
                <p class="price">Rs 8454</p>
                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>
        <!-- end of street light 50w-->
         <!-- starting of 100w -->

        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Flood Light.png" alt="Flood light">

            <div class="street-light-text">
                <h3>Flood Light 100W</h3>
                <p class="price">Rs 7846</p>
                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of 100w -->

        <!-- starting of 150w -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Flood Light.png" alt="Flood light">

            <div class="street-light-text">
                <h3>Flood Light 150W</h3>
                <p class="price">Rs 3256</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of 150w -->

        <!-- starting of 200w -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Flood Light.png" alt="Flood light">

            <div class="street-light-text">
                <h3>Flood Light 200W</h3>
                <p class="price">Rs 4523</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of street light 200w -->

    </section>

    <div class="shop-by-brand">
        <h3>Shop by Brand</h3>
    </div>
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

    <section class="product">

        <!-- Surface  light -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Surface Light.png" alt="Surface light">

            <div class="street-light-text">
                <h3>Surface Light 6W</h3>
                <p class="price">Rs 2310</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>
        <!-- end of surface light 6w-->
         <!-- starting of 100w -->

        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Surface Light.png" alt="Surface light">

            <div class="street-light-text">
                <h3>Surface Light 12W</h3>
                <p class="price">Rs 1203</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of surface light 12W -->

        <!-- starting of council light 6w -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Council Light.png" alt="Council Light">

            <div class="street-light-text">
                <h3>Council Light 6W</h3>
                <p class="price">Rs 2031</p>

                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of council light 6w -->

        <!-- starting of council light 12w -->
        <div class="street-light">
            <img src="${pageContext.request.contextPath}/resources/images/system/Council Light.png" alt="Council Light">

            <div class="street-light-text">
                <h3>Council Light 12W</h3>
                <p class="price">Rs 3250</p>
                <div class="button">
                    <a href="#">Shop now</a>
                    <a href="#">Add to Cart</a>
                </div>
            </div>

        </div>

        <!-- end of council light 12w -->

    </section>
    
	<jsp:include page="footer.jsp" />
</body>
</html>