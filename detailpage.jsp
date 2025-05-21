<%-- 
    Document   : detailpage
    Created on : 11 Mar 2025, 7:38:35 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <style>
        /* General Page Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Checkout Container */
        .container {
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.15);
            width: 420px;
            text-align: center;
            transition: transform 0.3s ease-in-out;
        }

        .container:hover {
            transform: scale(1.02);
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        h3 {
            color: #34495e;
            margin-top: 20px;
        }

        /* Form Styling */
        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
            font-weight: 600;
            color: #555;
        }

        input, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            background: #f9f9f9;
            transition: 0.3s;
        }

        input:focus, textarea:focus {
            border-color: #3498db;
            background: #fff;
            outline: none;
            box-shadow: 0px 0px 8px rgba(52, 152, 219, 0.3);
        }

        textarea {
            resize: none;
            height: 80px;
        }

        /* Button Styling */
        .button-container {
            margin-top: 20px;
        }

        .btn {
            background: linear-gradient(to right, #28a745, #218838);
            color: white;
            padding: 14px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
            transition: 0.3s;
        }

        .btn:hover {
            background: linear-gradient(to right, #218838, #1e7e34);
            transform: scale(1.03);
        }

        /* Total Price Styling */
        #totalDisplay {
            font-size: 20px;
            color: #d9534f;
            font-weight: bold;
            margin: 15px 0;
            text-transform: uppercase;
        }
    </style>

    <script>
        function calculateTotal() {
            var price = parseFloat(document.getElementById("price").value);
            var quantity = parseInt(document.getElementById("quantity").value);
            if (!isNaN(price) && !isNaN(quantity) && quantity > 0) {
                document.getElementById("totalPrice").value = price * quantity;
                document.getElementById("totalDisplay").innerText = "Total Price: ₹" + (price * quantity);
            }
        }
    </script>
</head>
<body>

<%
    String productId = request.getParameter("id");
    String price = request.getParameter("price");
    String quantity = request.getParameter("quantity");
    double totalPrice = Double.parseDouble(price) * Integer.parseInt(quantity);
%>

<div class="container">
    <h2>Checkout</h2>

    <form action="saveOrder.jsp" method="post">
        <input type="hidden" name="product_id" value="<%= productId %>">
        <input type="hidden" id="price" value="<%= price %>">
        <input type="hidden" id="quantity" name="quantity" value="<%= quantity %>" oninput="calculateTotal()">
        <input type="hidden" id="totalPrice" name="total_price" value="<%= totalPrice %>">

        <p><strong>Product ID:</strong> <%= productId %></p>
        <p><strong>Quantity:</strong> <%= quantity %></p>
        <p id="totalDisplay"><strong>Total Price:</strong> ₹<%= totalPrice %></p>

        <h3>Enter Shipping Details</h3>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="phone">Phone No:</label>
        <input type="text" id="phone" name="phone" required>

        <label for="address">Address:</label>
        <textarea id="address" name="address" required></textarea>

        <div class="button-container">
            <button type="submit" class="btn">Confirm Order</button>
        </div>
    </form>
</div>

</body>
</html>
