<%-- 
    Document   : myReviews.jsp
    Created on : 21 Feb 2025, 8:26:54 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>My Reviews</title>
</head>
<body>
    <h1>My Reviews</h1>
    <form action="MyReviewsServlet" method="post">
        <label for="review">Write a Review:</label><br>
        <textarea id="review" name="review" rows="4" cols="50"></textarea><br><br>
        <input type="submit" value="Submit Review">
    </form>
    
    <h2>Previous Reviews</h2>
    <ul>
        <%-- Fetch and display user reviews dynamically here --%>
    </ul>
</body>
</html>
