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
public class UpdateNow extends HttpServlet {

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
           String product_id = request.getParameter("id");
            String product_name = request.getParameter("sname");
            String description = request.getParameter("pdescription");
            String quantity = request.getParameter("edit");
            String price = request.getParameter("pamount");
            String imagePath = request.getParameter("pipath");

            // Connect to DB
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/facebook", "root", "123456");

            // Correct SQL update query
            String sql = "UPDATE product SET product_name = ?, product_description = ?, "
                       + "product_amount = ?, product_image_path = ?, quantity = ? WHERE id = ?";
            
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, product_name);
            st.setString(2, description);
            st.setString(3, price);
            st.setString(4, imagePath);
            st.setString(5, quantity);
            st.setString(6, product_id);

            int row = st.executeUpdate();

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head><title>Update Product</title>");
            out.println("<style>");
            out.println("body { font-family: 'Segoe UI'; background-color: #f8f9fa; text-align: center; padding: 50px; }");
            out.println(".message { background: #d4edda; color: #155724; padding: 20px; margin: auto; border: 1px solid #c3e6cb; border-radius: 10px; width: 50%; }");
            out.println("</style></head>");
            out.println("<body>");

            if (row > 0) {
                out.println("<div class='message'><h2>✅ Product updated successfully!</h2></div>");
            } else {
                out.println("<div class='message' style='background: #f8d7da; color: #721c24; border-color: #f5c6cb;'><h2>❌ Failed to update product.</h2></div>");
            }

            out.println("</body>");
            out.println("</html>");

            // Clean up
            st.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
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
