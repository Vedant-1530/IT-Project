<%-- 
    Document   : index
    Created on : 13 Feb 2025, 12:19:15 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP Page</title>
       
        <link rel='stylesheet' type='text/css' href='newcss.css' />
        <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background: url('https://images.unsplash.com/photo-1513151233558-d860c5398176?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZXZlbnQlMjBiYWNrZ3JvdW5kfGVufDB8fDB8fHww') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Header */
        .header {
            position: absolute;
            top: 20px;
            right: 30px;
        }

        .header a {
            background-color: green;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: 0.3s;
        }

        .header a:hover {
            background-color: darkgreen;
        }

        /* Login Box */
        .container {
            width: 90%;
            max-width: 400px;
            background: rgba(255, 255, 255, 0.85); /* Semi-transparent for elegance */
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
           margin-top: 5%;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .button-primary {
            width: 100%;
            background-color: #232f3e;
            color: white;
            padding: 12px;
            font-size: 17px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
            transition: 0.3s;
        }

        .button-primary:hover {
            background-color: #1a242f;
        }

        .button-secondary {
            background-color: green;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 10px;
            transition: 0.3s;
        }

        .button-secondary:hover {
            background-color: darkgreen;
        }

        .text-muted {
            font-size: 14px;
            color: #666;
            margin-top: 10px;
        }

        .text-muted a {
            color: #007bff;
            text-decoration: none;
        }

        .text-muted a:hover {
            text-decoration: underline;
        }

        /* Branding Section */
        .brand-section {
            text-align: center;
            margin-top: 1px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .brand-title {
            font-size: 40px;
            font-weight: bold;
        }

        .brand-subtext {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="header">
        <a href="Seller.jsp">Seller</a>
    </div>

    <div class="container">
        <form action="open" method="post">
            <h2>Login</h2>
            <input type="text" name="Email" class="input-field" placeholder="Email address or phone number" required>
            <input type="password" name="Password" class="input-field" placeholder="Password" required>
            <input type="submit" class="button-primary" value="Log in">
        </form>

        <p class="text-muted"><a href="Forget.jsp">Forgot password?</a></p>

        <form action="registration1.jsp" method="post">
            <input type="submit" class="button-secondary" value="Create New Account">
        </form>

        <p class="text-muted"><b>Create a page</b> for a celebrity, brand, or business.</p>
    </div>
    <div class="brand-section">
        <p class="brand-title">QUICK EVENT HUB</p>
        <p class="brand-subtext">Quick Event Hub helps improve your business<br>and makes your events memorable.</p>
    </div>
</body>
</html>
