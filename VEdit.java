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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author thora
 */
public class VEdit extends HttpServlet {

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
            out.println("<title>Servlet Edit</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Update Now</h1>");
            out.println("<form method='post' action='UpdateNow'>");
            out.println("<table width='500px'>");
            out.println("<tr>  <td><input type ='hidden' name='id' value='"+rs.getString("id")+"'></td>");
            out.println("<tr>");
            out.println("<td>");
            out.println("<input type='text' name='sname' value='"+rs.getString("product_name")+"'placeholder='pName'>");
               out.println("</td>");
               out.println("</tr>");
               out.println("<tr>");
            out.println("<td>");
            out.println("<input type='text' name='pdescription' value='"+rs.getString("product_description")+"'placeholder=' pdescription'>");
               out.println("</td>");
               out.println("</tr>");
               out.println("<tr>");
            out.println("<td>");
            out.println("<input type='text' name='pamount' value='"+rs.getString("product_amount")+"'placeholder=' pamount'>");
               out.println("</td>");
               out.println("</tr>");
               out.println("<tr>");
            out.println("<td>");
            out.println("<input type='text' name='pipath' value='"+rs.getString("product_image_path")+"'placeholder='pipath'>");
               out.println("</td>");
               out.println("</tr>");
                   out.println("<tr>");
            out.println("<td>");
            out.println("<input type='submit' value='Update'>");
            out.println("</td>");
               out.println("</tr>");
               out.println("</table>");
               out.println("</form>");
         
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
