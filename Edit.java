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
public class Edit extends HttpServlet {

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
             String sid =request.getParameter("id");
             
            Statement st;
            Connection con;
            ResultSet rs;
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","123456");
            st=con.createStatement();
 String p = "SELECT * FROM product WHERE id = '" + sid + "'";  
            rs=st.executeQuery(p);
            while (rs.next()){
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<meta charset='UTF-8'>");
                out.println("<title>Edit Product</title>");
                out.println("<style>");
                out.println("body { font-family: 'Segoe UI', sans-serif; background-color: #f4f6f8; padding: 20px; }");
                out.println(".container { max-width: 700px; margin: auto; background: #fff; padding: 30px 40px; border-radius: 15px; box-shadow: 0 0 15px rgba(0,0,0,0.1); }");
                out.println("h2 { text-align: center; color: #333; margin-bottom: 25px; }");
                out.println(".form-group { margin-bottom: 18px; }");
                out.println("label { display: block; margin-bottom: 6px; color: #555; font-weight: 500; }");
                out.println("input[type='text'], input[type='number'] { width: 100%; padding: 10px 14px; border: 1px solid #ccc; border-radius: 8px; background-color: #fdfdfd; font-size: 15px; }");
                out.println("input[type='submit'] { width: 100%; padding: 12px; background: #28a745; border: none; color: white; font-size: 16px; border-radius: 8px; cursor: pointer; transition: background 0.3s; }");
                out.println("input[type='submit']:hover { background: #218838; }");
                out.println("</style>");
                out.println("</head>");
                out.println("<body>");
                out.println("<div class='container'>");
                out.println("<h2>Update Product</h2>");
                out.println("<form method='post' action='UpdateNow'>");

                out.println("<input type='hidden' name='id' value='" + rs.getString("id") + "'>");

                out.println("<div class='form-group'>");
                out.println("<label>Product Name</label>");
                out.println("<input type='text' name='sname' value='" + rs.getString("product_name") + "' required>");
                out.println("</div>");

                out.println("<div class='form-group'>");
                out.println("<label>Description</label>");
                out.println("<input type='text' name='pdescription' value='" + rs.getString("product_description") + "' required>");
                out.println("</div>");

                out.println("<div class='form-group'>");
                out.println("<label>Amount (₹)</label>");
                out.println("<input type='number' name='pamount' value='" + rs.getString("product_amount") + "' required>");
                out.println("</div>");

                out.println("<div class='form-group'>");
                out.println("<label>Image Path</label>");
                out.println("<input type='text' name='pipath' value='" + rs.getString("product_image_path") + "' required>");
                out.println("</div>");

                out.println("<div class='form-group'>");
                out.println("<label>Quantity</label>");
                out.println("<input type='number' name='edit' value='" + rs.getString("quantity") + "' required>");
                out.println("</div>");

                out.println("<input type='submit' value='Update Product'>");

                out.println("</form>");
                out.println("</div>");
                out.println("</body>");
                out.println("</html>");

            }
        }catch(Exception e)
        {
            System.out.println(e.getMessage());
        
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
