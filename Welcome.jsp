<%-- 
    Document   : Welcome
    Created on : 20 Feb 2025, 8:28:41 pm
    Author     : thora
--%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
 
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
     <%--   <marquee>😊 WELCOME TO QUICK EVENT HUB MAKE YOUR EVENT MEMORABLE 😊 </marquee>--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
     <link rel="stylesheet" href="click.css">
      <link rel="stylesheet" href="slider.css">
       <link rel="stylesheet" href="footer.css">
        
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        <script defer src="script.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #232f3e;
            color: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .header h1 {
            margin: 0;
        }
        .profile-menu {
            position: relative;
            display: inline-block;
        }
        .profile-menu button {
            background: none;
            border: none;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }
        .dropdown-menu {
            display: none;
            position: absolute;
            right: 0;
            background: white;
            color: black;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            min-width: 200px;
            z-index: 1000;
        }
        .dropdown-menu a {
            display: block;
            padding: 10px;
            text-decoration: none;
            color: black;
        }
        .dropdown-menu a:hover {
            background: #f1f1f1;
        }
        .profile-menu:hover .dropdown-menu {
            display: block;
        }
        .container {
            padding: 20px;
        }
        .category {
            background: #f8f9fa;
            padding: 10px;
            margin-bottom: 10px;
        }
    .product-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 20px;
    }
    .product-card {
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        width: 280px;
        transition: transform 0.3s ease-in-out;
        text-align: center;
        padding: 15px;
    }
    .product-card:hover {
        transform: scale(1.05);
    }
    .product-image {
        width: 100%;
        height: 180px;
        object-fit: cover;
        border-radius: 8px;
    }
    .product-title {
        font-size: 18px;
        font-weight: bold;
        color: #333;
        margin-top: 10px;
    }
    .Quantity {
        font-size: 16px;
        color: #444;
        margin-top: 10px;
    }
    .Phone_no{
        font-size: 15px;
        color: #555;
        margin-top: 10px;
    }
    .product-description {
        font-size: 14px;
        color: #666;
        margin: 10px 0;
    }
    .product-price {
        font-size: 16px;
        font-weight: bold;
        color: #27ae60;
    }
    .product-btn {
        display: block;
        width: 100%;
        background: #232f3e;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
    }
    .product-btn:hover {
        background: #1a252f;
    }
    .mainv{
        background: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        width: 98%;
        margin: auto;
        transition: transform 0.3s ease-in-out;
        text-align: center;
        padding: 30px;
    }
           

    </style>
</head>
<body>
  <div class="header">
        <h1>Quick Event Hub</h1>
        <div class="profile-menu">
            <button><i class="fas fa-user"></i> User Profile</button>
            <div class="dropdown-menu">
               
                <a href="editProfile.jsp">Edit Profile</a>
                <a href="showorder.jsp"> Order </a>
                <hr>
                <a href="LogOut">Log Out</a>
            </div>
        </div>
    </div>
    <br>
     
         
     <div class="category-container">
    <a href="Welcome.jsp?category=Chairs" class="category">
        <img src="https://s.alicdn.com/@sc04/kf/H08e37fb10c4a4184a19b4e9f7ae675b3h.png" alt="🎉 Chairs">
        <span>🎉 Chairs</span>
    </a>
    <a href="Welcome.jsp?category=Tables" class="category">
        <img src="https://m.media-amazon.com/images/I/71fQB3wtSNL.jpg" alt="🎊 Tables">
        <span>🎊 Tables</span>
    </a>
    <a href="Welcome.jsp?category=Sound Systems" class="category">
        <img src="https://5.imimg.com/data5/SELLER/Default/2023/6/313928201/DM/MS/RC/190852559/pa-sound-system-500x500-500x500.jpg" alt="🔊 Sound Systems">
        <span>🔊 Sound Systems</span>
    </a>
    <a href="Welcome.jsp?category=Lighting Equipment" class="category">
        <img src="https://c8.alamy.com/comp/2JKNREP/a-purple-themed-decoration-on-stage-lighting-equipment-over-bar-chairs-and-table-for-party-event-2JKNREP.jpg" alt="💡 Lighting Equipment">
        <span>💡 Lighting Equipment</span>
    </a>
    <a href="Welcome.jsp?category=Tents and Decorations" class="category">
        <img src="https://m.media-amazon.com/images/I/71OsS8ZYbtL.jpg" alt="🎪 Tents and Decorations">
        <span>🎪 Tents and Decorations</span>
    </a>
</div>
 
   
   <div class="slider-container">
        <div class="slider">
            <div class="slide" id="slider">
                <img src="https://www.angara.com/blog/wp-content/uploads/2023/08/Make-Decor-Orange-ments-1-1.jpg"  alt="Slide 1 Chairs">
            </div>
            <div class="slide" id="slider">
                <img src="https://thumbs.dreamstime.com/b/buffet-table-mini-hamburgers-snacks-canape-appetizers-luxury-wedding-reception-copy-space-serving-food-restaurant-233230473.jpg" alt="Slide 2">
            </div>
            <div class="slide" id="slider">
                <img src="https://static.vecteezy.com/system/resources/previews/034/087/358/non_2x/disco-party-vibe-colorful-speakers-in-the-background-creating-excitement-ai-generated-photo.jpg" alt="Slide 3">
            </div>
            <div class="slide" id="slider">
                <img src="https://media.istockphoto.com/id/1220706537/photo/dancing-girl.jpg?s=612x612&w=0&k=20&c=MNWxzjFeSV5_N2kbkzXJeMi9sErIDnT6nG-yABHb-l0=" alt="Slide4">
            </div>
            <div class="slide" id="slider">
                <img src="https://media.istockphoto.com/id/1415056757/photo/colorful-wedding-tents-at-night.jpg?s=612x612&w=0&k=20&c=tJ5NgHKJQs1gJuHTEpd1Uv6peTVxGs5puZUm9zpwT64=" alt="Slide5">
            </div>
        </div>
        <!-- Navigation Buttons -->
        <button class="prev" onclick="moveSlide(-1)">&#10094;</button>
        <button class="next" onclick="moveSlide(1)">&#10095;</button>
    </div>

    
   
   <br>
   <%
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String categoryFilter = request.getParameter("category");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

        String query = "SELECT * FROM product";
        if (categoryFilter != null && !categoryFilter.isEmpty()) {
            query += " WHERE category=?";
        }

        ps = conn.prepareStatement(query);

        if (categoryFilter != null && !categoryFilter.isEmpty()) {
            ps.setString(1, categoryFilter);
        }

        rs = ps.executeQuery();
%>

<div class="product-container">
    <% while (rs.next()) { %>
        <a href='productpage.jsp?id=<%= rs.getString("id") %>'>
            <div class="product-card">
                <img class="product-image" src="<%= rs.getString("product_image_path") %>" alt="Product Image">
                <div class="product-title"><%= rs.getString("product_name") %></div>
                <div class="Quantity"><%= rs.getString("quantity") %></div>
                <div class="product-description"><%= rs.getString("product_description") %></div>
                <div class="product-price">&#8377 <%= rs.getDouble("product_amount") %></div>
                <div class="Phone_no"><%= rs.getString("phone_no") %></div>
            </div>
        </a>
    <% } %>
</div>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (conn != null) conn.close();
    }
%>
   
<br> <br>
<div class="mainv">
    <h2 align="left">Quick Event Hub – Your One-Stop Event Rental Marketplace</h2>
    <br>
    <p align="left"><b>About Quick Event Hub</b></p>
    <p align="left">Quick Event Hub is an innovative eCommerce platform designed to make event planning seamless and stress-free. Whether you're organizing a wedding, corporate event, birthday party, or any special occasion, we provide a wide range of rental products to meet your needs. From chairs, tables, and décor to sound systems, lighting, and catering equipment, we connect event organizers with reliable sellers offering high-quality rental items.</P>
    <br>
    <p align="left"><b>Why Choose Quick Event Hub?</b></p>u
    <br><p align="left">
        1. Hassle-Free Rentals
Easily browse, compare, and rent party essentials in just a few clicks. No more calling multiple vendors—everything you need is available in one place!

2. Sell & Grow Your Business
Are you a small business owner renting event supplies? Join as a seller and expand your reach! Quick Event Hub provides an easy-to-use platform where you can list your products, set prices, and connect with customers looking for event rentals.

3. User-Friendly & Secure
Our website is designed for everyone, from professional event planners to individuals organizing small gatherings. With a simple interface, secure payment options, and reliable customer support, renting and selling event equipment has never been easier.

4. Wide Range of Products
Seating & Tables – Chairs, sofas, dining tables, cocktail tables
Décor & Lighting – Stage setups, flower arrangements, LED lights
Sound & Entertainment – Speakers, DJ systems, projectors
Catering & Utilities – Buffet setups, cooking equipment, dinnerware
    </p>
     <br>
     <p align="left"><b>How It Works?</b></p>
    <br><p align="left">
        ✅ For Customers: Browse products → Add to cart → Book & rent → Enjoy your event!<br>
✅ For Sellers: Register → List your products → Get orders → Grow your business!
    </p>
     <br>
     <p align="left"><b> Start Renting & Selling Today!</b></p>
     <p align="left">
         💻 Visit: www.QuickEventHub.com<BR>
         📧 Contact Us: support@quickeventhub.com<BR>

Quick Event Hub – Making Every Event Hassle-Free! 🎉
     </p>
     </div>
    <br>
    <footer class="footer">
        <div class="footer-container">
            <div class="footer-section">
                <h3>ABOUT</h3>
                <ul>
                    <li><a href="#">Contact Us</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Press</a></li>
                    <li><a href="#">Corporate Info</a></li>
                </ul>
            </div>

            <div class="footer-section">
                <h3>HELP</h3>
                <ul>
                    <li><a href="#">Payments</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Cancellations</a></li>
                    <li><a href="#">FAQ</a></li>
                </ul>
            </div>

            <div class="footer-section">
                <h3>CONSUMER POLICY</h3>
                <ul>
                    <li><a href="#">Return Policy</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Security</a></li>
                    <li><a href="#">Privacy</a></li>
                    <li> <a href="admin.jsp">Admin</a></li>
                </ul>
            </div>

            <div class="footer-section">
                <h3>Mail Us:</h3>
                <p>Quick Event Hub Pvt Ltd,</p>
                <p>123 Event Street, Tech Park,</p>
                <p>City Name, 560103, India</p>
            </div>

            <div class="footer-section">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-x-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>y
            </div>
        </div>

        <div class="footer-bottom">
            <div class="footer-links">
                <a href="#">Become a Seller</a>
                <a href="#">Advertise</a>
                <a href="#">Gift Cards</a>
                <a href="#">Help Center</a>
            </div>
            <p>© 2025 Quick Event Hub</p>
            <div class="payment-icons">
                <img src="https://upload.wikimedia.org/wikipedia/commons/4/41/Visa_Logo.png" alt="Visa">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhS10Z3faXSEb1Jqm3xOACdvNtY67E8wWWtw&s" alt="MasterCard">
                <img src="https://upload.wikimedia.org/wikipedia/commons/a/a4/Paypal_2014_logo.png" alt="PayPal">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ05JrxGohzdEF-YyLh5W8NaaOJaJEhKkRmpA&s" alt="Rupay">
            </div>
        </div>
    </footer>
<div style="text-align: center; margin: 20px;">
    <a href="Welcome.jsp">
        <button class="product-btn">More Shopping</button>
    </a>
</div>
    
</body>
</html>
