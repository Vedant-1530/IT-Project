<%-- 
    Document   : trackOrders
    Created on : 21 Feb 2025, 7:44:53 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Help Center & Track Orders</title>
</head>
<body>
    <h1>Help Center</h1>
    <p>Welcome to the Help Center. Here you can find answers to common questions.</p>
    
    <h2>Track Your Orders</h2>
    <form action="TrackOrdersServlet" method="post">
        <label>Enter Order ID:</label>
        <input type="text" name="orderId" required>
        <input type="submit" value="Track Order">
    </form>
</body>
</html>
