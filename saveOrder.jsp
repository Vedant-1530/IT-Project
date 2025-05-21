<%-- 
    Document   : saveOrder
    Created on : 11 Mar 2025, 7:56:35 pm
    Author     : thora
--%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    String productId = request.getParameter("product_id");
    String name = request.getParameter("name");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String quantity = request.getParameter("quantity");
    String totalPrice = request.getParameter("total_price");

    if (productId != null && name != null && phone != null && address != null && quantity != null && totalPrice != null) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

            String query = "INSERT INTO user (product_id, name, phone, address, quantity, total_price) VALUES (?, ?, ?, ?, ?, ?)";
            ps = con.prepareStatement(query);
            ps.setString(1, productId);
            ps.setString(2, name);
            ps.setString(3, phone);
            ps.setString(4, address);
            ps.setString(5, quantity);
            ps.setString(6, totalPrice);

            int row = ps.executeUpdate();
            if (row > 0) {
                response.sendRedirect("payment.jsp");
            } else {
                out.println("<p>Error saving order</p>");
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            if (ps != null) ps.close();
            if (con != null) con.close();
        }
    } else {
        out.println("<p>Invalid Input</p>");
    }
%>
    </body>
</html>
