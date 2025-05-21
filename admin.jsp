<%-- 
    Document   : admin
    Created on : 20 Feb 2025, 5:37:46 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login | Quick Event Hub</title>
<!--    <link rel="stylesheet" href="admin1.css">
    <link rel="stylesheet" href="admin2.css">-->
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
        }

        .branding {
            text-align: center;
            margin-bottom: 25px;
        }

        .branding h1 {
            font-size: 28px;
            margin: 0;
            color: #0072ff;
        }

        .branding p {
            color: #555;
            font-size: 14px;
            margin-top: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
        }

        .button {
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #218838;
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
            color: #777;
        }

        @media screen and (max-width: 500px) {
            .login-container {
                padding: 25px;
            }
        }
    </style>
</head>
<body>

    <div class="login-container">
        <div class="branding">
            <h1>Quick Event Hub</h1>
            <p>Admin Login Portal</p>
        </div>

        <form method="post" action="adminpage.jsp">
            <input type="text" name="userName" placeholder="Username" required />
            <input type="password" name="Password" placeholder="Password" required />
            <input type="submit" class="button" value="Login" />
        </form>

        <div class="footer-text">
            &copy; 2025 Quick Event Hub. All rights reserved.
        </div>
    </div>

</body>
</html>