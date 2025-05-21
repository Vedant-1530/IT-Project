<%-- 
    Document   : showorder
    Created on : 22 Apr 2025, 7:39:51 pm
    Author     : thora
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Booked Orders</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(to right, #a1c4fd, #c2e9fb);
                margin: 0;
                padding: 20px;
            }

            h1 {
                text-align: center;
                color: #333;
                margin-bottom: 40px;
            }

            table {
                width: 90%;
                margin: 0 auto;
                border-collapse: collapse;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
                background-color: #fff;
                border-radius: 12px;
                overflow: hidden;
            }

            th, td {
                padding: 14px 16px;
                border-bottom: 1px solid #ddd;
                text-align: center;
            }

            th {
                background-color: #009688;
                color: white;
                font-size: 16px;
            }

            tr:hover {
                background-color: #f1f1f1;
            }

            .back-btn {
                display: block;
                margin: 30px auto;
                text-align: center;
                background: #009688;
                color: #fff;
                padding: 12px 30px;
                border-radius: 8px;
                text-decoration: none;
                font-weight: bold;
                transition: 0.3s;
            }

            .back-btn:hover {
                background: #00796b;
            }
        </style>
    </head>
    <body>

        <h1>📦 Your Booked Orders</h1>

        <%
            Connection con = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");
                stmt = con.createStatement();
                rs = stmt.executeQuery("SELECT * FROM user");
        %>

        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Product ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th>Quantity</th>
                    <th>Total Price (₹)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while(rs.next()) {
                %>
                <tr onclick="location.href='productpage.jsp?id=<%= rs.getInt("product_id") %>'" style="cursor: pointer;">
                    <td><%= rs.getInt("id") %></td>
                    <td><%= rs.getInt("product_id") %></td>
                    <td><%= rs.getString("name") %></td>
                    <td><%= rs.getString("phone") %></td>
                    <td><%= rs.getString("address") %></td>
                    <td><%= rs.getInt("quantity") %></td>
                    <td><%= String.format("%.2f", rs.getDouble("total_price")) %></td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <%
            } catch(Exception e) {
                out.println("<p style='color:red; text-align:center;'>Error: " + e.getMessage() + "</p>");
            } finally {
                if(rs != null) try { rs.close(); } catch(Exception e) {}
                if(stmt != null) try { stmt.close(); } catch(Exception e) {}
                if(con != null) try { con.close(); } catch(Exception e) {}
            }
        %>

        <a href="Welcome.jsp" class="back-btn">← Back to Home</a>

    </body>
</html>
