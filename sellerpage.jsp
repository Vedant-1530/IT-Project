<%-- 
    Document   : sellerpage
    Created on : 5 Mar 2025, 8:04:58 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href="footer.css">
    
  
    
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
        .container {
    display: flex;
    padding: 0;
}

.sidebar {
    width: 220px;
    background: #232f3e;
    color: white;
    height: 600px;
    padding-bottom:  0;
}

.sidebar ul {
    list-style: none;
    padding: 0;
}

.sidebar ul li {
    padding: 10px 0;
}

.sidebar ul li a {
    color: white;
    text-decoration: none;
    display: block;
}

/* Main Content */
main {
    flex: 1;
    padding: 20px;
}

/* Form */
form {
    background: white;
    padding: 20px;
    border-radius: 10px;
}

input, textarea {
    width: 100%;
    margin: 10px 0;
    padding: 8px;
}

button {
    background: navy;
    color: white;
    padding: 10px;
    border: none;
    cursor: pointer;
}
        </style>
    </head>     
    <body>
  <div class="header">
        <h1>Quick Event Hub</h1>
        <div class="profile-menu">
            <button><i class="fas fa-user"></i> User Profile</button>
            <div class="dropdown-menu">
                <h1>""</h1>
                <hr>
                <a href="LogOut">Log Out</a>
            </div>
        </div>
    </div>
     <div class="container">
        <nav class="sidebar">
            <ul>
                <li><a align="center" href="post-product.jsp">📌 Post Product</a></li>
                <li><a align="center" href="viewProduct">📦 View All Products</a></li>
                <li><a align="center" href="deleteProduct">🗑️ Delete Product</a></li>
                <li><a align="center" href="updateProduct">✏️ Update Product</a></li>
            </ul>
        </nav>

        <main>
            <h2 align="center">Welcome to Quick Event Hub</h2>
            <p align="center">Manage your products seamlessly.</p>
        </main>
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
                </div>
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
<script>
            document.addEventListener("DOMContentLoaded", function () {
                const viewProductLink = document.querySelector("a[href='viewProduct']");

                viewProductLink.addEventListener("click", function (event) {
                    event.preventDefault(); // Prevent default link behavior

                    fetch('viewProduct') // Call the servlet
                            .then(response => response.text()) // Get response as text (HTML)
                            .then(data => {
                                document.getElementById('product-list').innerHTML = data; // Insert into div
                            })
                            .catch(error => console.error('Error loading products:', error));
                });
            });
            document.addEventListener("DOMContentLoaded", function () {
                const viewProductLink = document.querySelector("a[href='post-product.jsp']");

                viewProductLink.addEventListener("click", function (event) {
                    event.preventDefault(); // Prevent default link behavior

                    fetch('post-product.jsp') // Call the servlet
                            .then(response => response.text()) // Get response as text (HTML)
                            .then(data => {
                                document.getElementById('product-list').innerHTML = data; // Insert into div
                            })
                            .catch(error => console.error('Error loading products:', error));
                });
            });
            document.addEventListener("DOMContentLoaded", function () {
                const viewProductLink = document.querySelector("a[href='deleteProduct']");

                viewProductLink.addEventListener("click", function (event) {
                    event.preventDefault(); // Prevent default link behavior

                    fetch('deleteProduct') // Call the servlet
                            .then(response => response.text()) // Get response as text (HTML)
                            .then(data => {
                                document.getElementById('product-list').innerHTML = data; // Insert into div
                            })
                            .catch(error => console.error('Error loading products:', error));
                });
            });
            document.addEventListener("DOMContentLoaded", function () {
                const viewProductLink = document.querySelector("a[href='updateProduct']");

                viewProductLink.addEventListener("click", function (event) {
                    event.preventDefault(); // Prevent default link behavior

                    fetch('updateProduct') // Call the servlet
                            .then(response => response.text()) // Get response as text (HTML)
                            .then(data => {
                                document.getElementById('product-list').innerHTML = data; // Insert into div
                            })
                            .catch(error => console.error('Error loading products:', error));
                });
            });
            
        </script>
    
    </body>
</html>