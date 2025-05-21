/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author thora
 */
public class updateProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             HttpSession session = request.getSession(false);
            int userID=0;
            if (session != null && session.getAttribute("userID") != null) 
                 userID = (Integer) session.getAttribute("userID");
            
          

            // Print user ID anywhere in Servlet output
            out.println("<h3>User ID: " + userID + "</h3>");
            System.out.println("User ID in Console: " + userID);
          Class.forName("com.mysql.cj.jdbc.Driver"); // Use latest driver

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

// Use PreparedStatement to avoid SQL injection and errors
            String query = "SELECT * FROM product WHERE user_id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, userID);

            ResultSet rs = pst.executeQuery();

            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Update Products</title>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }");
            out.println("h1 { text-align: center; margin-top: 20px; color: #333; }");
            out.println("table { width: 90%; margin: 20px auto; border-collapse: collapse; background-color: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }");
            out.println("th, td { padding: 12px; text-align: center; border-bottom: 1px solid #ddd; }");
            out.println("th { background-color: #4CAF50; color: white; }");
            out.println("tr:hover { background-color: #f1f1f1; }");
            out.println("img { width: 100px; height: auto; border-radius: 5px; }");
            out.println("a.button { padding: 6px 12px; text-decoration: none; color: white; border-radius: 5px; margin: 0 4px; }");
            out.println(".delete { background-color: #e74c3c; }");
            out.println(".edit { background-color: #3498db; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Your Products</h1>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>Name</th>");
            out.println("<th>Description</th>");
            out.println("<th>Price (₹)</th>");
            out.println("<th>Image</th>");
            out.println("<th>Category</th>");
            out.println("<th>Phone No.</th>");
            out.println("<th>Quantity</th>");
            out.println("<th>Actions</th>");
            out.println("</tr>");

            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("product_name");
                String description = rs.getString("product_description");
                String price = rs.getString("product_amount");
                String imagePath = rs.getString("product_image_path");
                String category = rs.getString("category");
                String phone = rs.getString("phone_no");
                String quantity = rs.getString("quantity");

                out.println("<tr>");
                out.println("<td>" + id + "</td>");
                out.println("<td>" + name + "</td>");
                out.println("<td>" + description + "</td>");
                out.println("<td>₹" + price + "</td>");
                out.println("<td><img src='" + imagePath + "' alt='Product Image'></td>");
                out.println("<td>" + category + "</td>");
                out.println("<td>" + phone + "</td>");
                out.println("<td>" + quantity + "</td>");
                out.println("<td>");
                out.println("<a class='button edit' href='Edit?id=" + id + "'>Edit</a>");
                out.println("</td>");
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("</body>");
            out.println("</html>");


        } catch (Exception e) {
            System.out.println("e" + e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
