<%-- 
    Document   : payment
    Created on : 11 Mar 2025, 8:04:38 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <style>
        /* Background Styling */
        body {
            font-family: Arial, sans-serif;
            background: url('https://st.depositphotos.com/1491329/2998/i/450/depositphotos_29985213-stock-photo-violet-abstract-christmas-background.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Container Styling */
        .container {
            background: rgba(255, 255, 255, 0.9); /* Slight transparency for readability */
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 360px;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        /* Payment Option Styling */
        .payment-option {
            display: flex;
            align-items: center;
            justify-content: center;
            background: #f9f9f9;
            padding: 12px;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }

        .payment-option:hover {
            background: #e0e0e0;
        }

        .payment-option input {
            margin-right: 12px;
            transform: scale(1.2);
        }

        .payment-option label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
        }

        /* Confirm Button Styling */
        .confirm-btn {
            background: linear-gradient(to right, #28a745, #218838);
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
            transition: 0.3s;
        }

        .confirm-btn:hover {
            background: linear-gradient(to right, #218838, #1e7e34);
            transform: scale(1.03);
        }
    </style>
    <script>
        function confirmOrder() {
            var cod = document.getElementById("cod").checked;
            if (cod) {
                window.location.href = "order_success.jsp"; // Redirect to order success page
            } else {
                alert("Please select a payment method to proceed.");
            }
        }
    </script>
</head>
<body>

    <div class="container">
        <h2>Select Payment Method</h2>

        <div class="payment-option">
            <input type="radio" id="cod" name="payment" value="COD">
            <label for="cod">Cash on Delivery (COD)</label>
        </div>

        <button class="confirm-btn" onclick="confirmOrder()">Confirm Order</button>
    </div>

</body>
</html>