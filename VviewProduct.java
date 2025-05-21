/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author thora
 */
public class VviewProduct extends HttpServlet {

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
             Statement st;
            ResultSet rs;
              Class.forName("com.mysql.cj.jdbc.Driver"); // Use latest driver

            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");
            st=con.createStatement();
            String query = "select * from product";
            rs=st.executeQuery(query);
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>All Products - Admin View</title>");
out.println("<style>");
out.println("table { width: 90%; margin: 30px auto; border-collapse: collapse; background-color: #fff; box-shadow: 0 0 15px rgba(0,0,0,0.1); }");
out.println("th, td { padding: 14px; text-align: center; border-bottom: 1px solid #ddd; font-size: 14px; }");
out.println("th { background-color: #007BFF; color: white; }");
out.println("tr:hover { background-color: #f2f2f2; }");
out.println("a.button { padding: 6px 10px; text-decoration: none; color: white; border-radius: 4px; font-size: 13px; }");
out.println(".delete { background-color: #dc3545; }");
out.println(".edit { background-color: #28a745; }");
out.println("</style>");

out.println("<h2 style='text-align:center;'>Product Records</h2>");
out.println("<table>");
out.println("<tr>");
out.println("<th>ID</th>");
out.println("<th>Product Name</th>");
out.println("<th>Description</th>");
out.println("<th>Price (₹)</th>");
out.println("<th>Category</th>");
out.println("<th>Phone No.</th>");
out.println("<th>Quantity</th>");
out.println("<th>Delete</th>");
out.println("<th>Edit</th>");
out.println("</tr>");

while (rs.next()) {
    String sid = rs.getString("id");
    String sname = rs.getString("product_name");
    String description = rs.getString("product_description");
    String price = rs.getString("product_amount");
    String category = rs.getString("category");
    String phone = rs.getString("phone_no");
    String quantity = rs.getString("quantity");

    out.println("<tr>");
    out.println("<td>" + sid + "</td>");
    out.println("<td>" + sname + "</td>");
    out.println("<td>" + description + "</td>");
    out.println("<td>₹" + price + "</td>");
    out.println("<td>" + category + "</td>");
    out.println("<td>" + phone + "</td>");
    out.println("<td>" + quantity + "</td>");
    out.println("<td><a class='button delete' href='Vdelete?id=" + sid + "'>Delete</a></td>");
    out.println("<td><a class='button edit' href='VEdit?id=" + sid + "'>Edit</a></td>");
    out.println("</tr>");
}

out.println("</table>");
            out.println("</body>");
            out.println("</html>");

        }catch (Exception e) {
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
