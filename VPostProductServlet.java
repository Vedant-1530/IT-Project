/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
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
public class VPostProductServlet extends HttpServlet {

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
             String sname = request.getParameter("productName");
               String description = request.getParameter("productDescription");
        String price = request.getParameter("productPrice");
       String filePart = request.getParameter("productImage");
        String category = request.getParameter("category");  // New Field
        String phoneNo = request.getParameter("phoneNo");  
        String quantity = request.getParameter("quantity"); 
        Class.forName("com.mysql.cj.jdbc.Driver");
            Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","123456");
             if (co != null) {
                System.out.println("Database Connected Successfully!");
            } else {
                System.out.println("Database Connection Failed!");
            }
             PreparedStatement ps = co.prepareStatement("INSERT INTO product (product_name,product_description,product_amount, product_image_path, category, phone_no, quantity) VALUES(?,?,?,?,?,?,?)");
//            
            ps.setString(1,sname);
            ps.setString(2,description);
            ps.setString(3,price);
            ps.setString(4,filePart);
             ps.setString(5, category);  // Set Category
            ps.setString(6, phoneNo);  
            ps.setInt(7, Integer.parseInt(quantity)); 
            int rowsInserted = ps.executeUpdate();
            /* TODO output your page here. You may use following sample code. */
           out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Myservlet</title>");
            out.println("</head>");
            out.println("<body>");
           if (rowsInserted > 0) {
                RequestDispatcher rd=request.getRequestDispatcher("adminpage.jsp");  
        rd.forward(request, response);
            } else {
                out.println("<font style='font-size: 30px; color: red;'>Failed to save data!</font>");
            }

            out.println("</body>");
            out.println("</html>");
        } catch(Exception e){
            System.out.println("e"+e);
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
