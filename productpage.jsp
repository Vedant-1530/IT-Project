<%-- 
    Document   : productpage
    Created on : 11 Mar 2025, 6:09:22 pm
    Author     : thora
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
        <style>
            body {
                font-family: 'Poppins', sans-serif;
                background: url('https://images.unsplash.com/photo-1464047736614-af63643285bf?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZXZlbnQlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww') no-repeat center center/cover;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
                position: relative;
            }
            
            body::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.4);
            }

            .product-card {
                background: white;
                padding: 25px;
                border-radius: 12px;
                box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
                width: 420px;
                text-align: center;
                transition: transform 0.3s ease-in-out;
                position: relative;
                z-index: 1;
            }

            .product-card:hover {
                transform: scale(1.02);
            }

            h2 {
                color: #2c3e50;
                margin-bottom: 10px;
            }

            .product-img {
                width: 200px;
                height: auto;
                border-radius: 8px;
                margin-bottom: 15px;
            }

            p {
                font-size: 16px;
                color: #555;
                margin: 5px 0;
            }

            label {
                display: block;
                text-align: left;
                font-weight: bold;
                margin: 10px 0 5px;
            }

            input {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 8px;
                font-size: 16px;
                background: #f9f9f9;
                transition: 0.3s;
            }

            input:focus {
                border-color: #3498db;
                background: #fff;
                outline: none;
                box-shadow: 0px 0px 8px rgba(52, 152, 219, 0.3);
            }

            .btn {
                background: linear-gradient(to right, #28a745, #218838);
                color: white;
                padding: 12px;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                cursor: pointer;
                width: 100%;
                margin-top: 15px;
                transition: 0.3s;
            }

            .btn:hover {
                background: linear-gradient(to right, #218838, #1e7e34);
                transform: scale(1.03);
            }

            .error-message {
                color: red;
                font-size: 16px;
                font-weight: bold;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <%
            String productId = request.getParameter("id");

            if (productId != null && !productId.isEmpty()) {
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

                    String query = "SELECT * FROM product WHERE id = ?";
                    ps = con.prepareStatement(query);
                    ps.setString(1, productId);
                    rs = ps.executeQuery();

                    if (rs.next()) {
        %>
        <div class="product-card">
            <h2>Product Details</h2>
            <img src="<%= rs.getString("product_image_path") %>" alt="Product Image" class="product-img">
            <p><strong>ID:</strong> <%= rs.getInt("id") %></p>
            <p><strong>Name:</strong> <%= rs.getString("product_name") %></p>
            <p><strong>Description:</strong> <%= rs.getString("product_description") %></p>
            <p><strong>Price per unit:</strong> ₹<%= rs.getDouble("product_amount") %></p>

            <form action="detailpage.jsp" method="get">
                <input type="hidden" name="id" value="<%= rs.getInt("id") %>">
                <input type="hidden" name="price" value="<%= rs.getDouble("product_amount") %>">

                <label>Enter Quantity:</label>
                <input type="number" name="quantity" required min="1">

                <button type="submit" class="btn">Proceed to Checkout</button>
            </form>
        </div>
        <%
                    } else {
                        out.println("<p class='error-message'>No product found with this ID.</p>");
                    }
                } catch (Exception e) {
                    out.println("<p class='error-message'>Error: " + e.getMessage() + "</p>");
                } finally {
                    if (rs != null) rs.close();
                    if (ps != null) ps.close();
                    if (con != null) con.close();
                }
            } else {
                out.println("<p class='error-message'>Invalid Product ID</p>");
            }
        %>    
    </body>
</html>
