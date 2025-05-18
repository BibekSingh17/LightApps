<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />
<link href="https://fonts.googleapis.com/css2?family=Fira+Code:wght@300..700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dashboard.css"/>
<title>Dashboard</title>
</head>
<body>

	
	<!-- top bar start -->
    <!-- header section -->
    <div class="navigation">

        <div class="logo">
                    <img src="${pageContext.request.contextPath}/resources/images/system/logo of lightApp.png" alt="dashboard" >
                    <div class="lightApp"><p>LightApp</p></div>
        </div>

        <div class="nav">
            <ul class="list">
                <li><a class="nav-text" href="${pageContext.request.contextPath}/DashboardController">Dashbaord</a></li>
                <li><a class="nav-text" href="${pageContext.request.contextPath}/ProductList">Product</a></li>
                <li><a class="nav-text" href="${pageContext.request.contextPath}/CustomerList">Customer</a></li>
            </ul>

        </div>

        <div class="admin-profile">
            <a class="nav-text" href="${pageContext.request.contextPath}/UserProfile"><i class="fa-solid fa-user"></i>Profile</a>
            <form action="">
                <button> Log out <i class="fa-solid fa-arrow-right"></i></button>
            </form>

        </div>

    </div>
    <!-- top bar end -->
     <!-- end of header section -->

    <!-- data of light app start -->
    <div class="insight">

        <div class="heading">
            <p>Welcome to Dashboard</p>
        </div>

        <div class="data-insight">
            <!-- data of sale -->
            <div class="sale"> 
                <img src="${pageContext.request.contextPath}/resources/images/system/Total Sale.png" alt="Total Sale">
                <div>
                    <h3>Total Revenue</h3>
                    <p>Rs 24,325</p>
                </div> 
            </div>

            <!-- data of purchase -->
            <div class="sale">
                <img src="${pageContext.request.contextPath}/resources/images/system/Total Purchase.png" alt="Total Purchase">
                <div>
                    <h3>Total Purchase</h3>
                    <p>Rs 15,654</p>
                </div> 

            </div>

            <!-- data of Expense -->
            <div class="sale">
                <img src="${pageContext.request.contextPath}/resources/images/system/Total Expense.png" alt="Total Expense">
                <div>
                    <h3>Total Expense</h3>
                    <p>Rs 2,365</p>
                </div> 

            </div>

            <!-- data of total product -->
            <div class="sale">
                <img src="${pageContext.request.contextPath}/resources/images/system/Total Product.png" alt="Total Product">
                <div>
                    <h3>Total Product</h3>
                    <p>50</p>
                </div> 

            </div>



        </div>


    </div>
    <!-- data of light app end -->

    <div class="main-container">

        <!-- customer information container and product information -->

        <div class="container-customer-product">
            <div class="customer-information">
    
                <div class="customer-info-heading">
                    <h4>Overview of Customer Details</h4>
                </div>
        
                <div class="heading-customer-info">
                    <div class="f-name">First name</div>
                    <div class="l-name">Last name</div>
                    <div class="email">Email</div>
                    <div class="number">Phone Number</div>
                    
                </div>
        
                <div class="heading-customer-data">
                    <div class="f-name">Bibek</div>
                    <div class="l-name">Singh</div>
                    <div class="email">bbek1ingh@gmail.com</div>
                    <div class="number">9821716490</div>
                    
                </div>
                <hr>
        
                <div class="heading-customer-data">
                    <div class="f-name">Samir</div>
                    <div class="l-name">Yadav</div>
                    <div class="email">samir223@gmail.com</div>
                    <div class="number">9874521030</div>
                    
                </div>
                <hr>
        
                <div class="heading-customer-data">
                    <div class="f-name">Prabin</div>
                    <div class="l-name">Gupta</div>
                    <div class="email">prabin557@gmail.com</div>
                    <div class="number">9835102468</div>
                    
                </div>
                <hr>
        
                <div class="heading-customer-data">
                    <div class="f-name">Sabin</div>
                    <div class="l-name">Adhikari</div>
                    <div class="email">samir32451@gmail.com</div>
                    <div class="number">9865203201</div>
                    
                </div>
                <hr>
        
                <div class="heading-customer-data">
                    <div class="f-name">Sabina</div>
                    <div class="l-name">Thapa</div>
                    <div class="email">sabina6253@gmail.com</div>
                    <div class="number">9841023201</div>
                    
                </div>
                <hr>
        
        
        
        
            </div>
    
            <div class="Product-information">
    
                <div class="Product-info-heading">
                    <h4>Overview of Product Details</h4>
                </div>
        
                <div class="heading-product-info">
                    <div class="Product name">Product name</div>
                    <div class="Brand">Brand</div>
                    <div class="Model number">Model number</div>
                    <div class="category">Category</div>
                    <div class="cost">Cost Price</div>

                    
                </div>
        
                <div class="heading-product-data">
                    <div class="Product name">LED Bulb 9W</div>
                    <div class="Brand">Philips</div>
                    <div class="Model number">PH-LED9W</div>
                    <div class="category">Bulb</div>
                    <div class="cost">Rs. 80</div>

                    
                </div>
                <hr>
        
                <div class="heading-product-data">
                    <div class="Product name">Flood Light 50W</div>
                    <div class="Brand">Syska</div>
                    <div class="Model number">SYS-FL50</div>
                    <div class="category">Floodlight</div>
                    <div class="cost">Rs. 950</div>
                    
                </div>
                <hr>
        
                <div class="heading-product-data">
                    <div class="Product name">Panel Light 12W Round</div>
                    <div class="Brand">Wipro</div>
                    <div class="Model number">WP-PL12R</div>
                    <div class="category">Panel Light</div>
                    <div class="cost">Rs. 260</div>
                    
                    
                </div>
                <hr>
        
                <div class="heading-product-data">
                    <div class="Product name">Emergency Light</div>
                    <div class="Brand">Bright</div>
                    <div class="Model number">BL-EML2025</div>
                    <div class="category">Emergency Light</div>
                    <div class="cost">Rs. 700</div>
                    
                    
                    
                </div>
                <hr>
                
                <div class="heading-product-data">
                    <div class="Product name">Tube Light 36W</div>
                    <div class="Brand">Orient</div>
                    <div class="Model number">OR-TL36</div>
                    <div class="category">Tube Light</div>
                    <div class="cost">Rs. 230</div>
                    
                    
                    
                    
                </div>
                <hr>
        
        
             </div>
    
        </div>

        <!-- low stock information -->
        <div class="low-stock-data">

            <div class="Outer-heading">
                <h2>Low Stock Item</h2>
                <hr>
            </div>

            <div class="secondary-whole"> <!-- for copy paste of it-->
                <!-- low stock of street light 30w -->
                <div class="info">
                    <div class="heading-sku">
                        <p id="h-name">Street Light 30W</p>
                        <p id="p-name">SKU: 123ASD</p>
                    </div>

                    <div  class="left-heading">
                        <p id="h-left-name">5 Left</p>
                        <p id="p-left-name">Min: 10</p>
                    </div>
                </div>
                <hr>

                <!-- low stock of focus light -->
                <div class="info">
                    <div class="heading-sku">
                        <p id="h-name">Focus Light</p>
                        <p id="p-name">SKU: 1534DD</p>
                    </div>

                    <div  class="left-heading">
                        <p id="h-left-name">4 Left</p>
                        <p id="p-left-name">Min: 20</p>
                    </div>
                </div>
                <hr>

                <!-- low stock of surface light -->
                <div class="info">
                    <div class="heading-sku">
                        <p id="h-name">Surface Light</p>
                        <p id="p-name">SKU: 24GAS</p>
                    </div>

                    <div  class="left-heading">
                        <p id="h-left-name">2 Left</p>
                        <p id="p-left-name">Min: 30</p>
                    </div>
                </div>
                <hr>
                
                 <!-- low stock of desco light -->
                 <div class="info">
                    <div class="heading-sku">
                        <p id="h-name">Disco Light</p>
                        <p id="p-name">SKU: 454DFF</p>
                    </div>

                    <div  class="left-heading">
                        <p id="h-left-name">6 Left</p>
                        <p id="p-left-name">Min: 15</p>
                    </div>
                </div>
                <hr>
            </div>

        </div>

    </div>



   
    <!-- information of customer start -->
    
    <!-- information of customer end -->

    <!-- information of product start -->
    
     <!-- information of product end -->


     <!-- brand, Tob product,  -->





</body>
</html>