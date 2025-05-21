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
public class seller_account extends HttpServlet {

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
              String name = request.getParameter("First_name");
    String sur_name = request.getParameter("Surname");
     int Bday=Integer.parseInt(request.getParameter("day"));
      int Bmonth=Integer.parseInt(request.getParameter("month"));
            int Byear=Integer.parseInt(request.getParameter("year"));
            String genderf=request.getParameter("genderf");
           String genderm=request.getParameter("genderm");
           String genderc=request.getParameter("genderc");
            String email=request.getParameter("Email");
            String password=request.getParameter("Password");

    // Load MySQL JDBC Driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Establish Connection
    Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

    // Insert Query (Ensure other columns allow NULL/default values)
    PreparedStatement ps = co.prepareStatement("INSERT INTO seller_data (First_name, Surname,Birth_day, Birth_month, Birth_year, Genderf, Genderm, Genderc, Email, Password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    ps.setString(1, name);
    ps.setString(2, sur_name);
       ps.setInt(3,Bday);
            ps.setInt(4,Bmonth);
            ps.setInt(5,Byear);
           ps.setString(6,genderf);
              ps.setString(7,genderm);
              ps.setString(8,genderc);
                ps.setString(9,email);
                 ps.setString(10,password);


    int rowsInserted = ps.executeUpdate();

    // Close Resources
    ps.close();
    co.close();

    // Respond to Client
    out.println("<!DOCTYPE html>");
    out.println("<html>");
    out.println("<head>");
    out.println("<title>Servlet Account</title>");
    out.println("</head>");
    out.println("<body>");
    
    if (rowsInserted > 0) {
         RequestDispatcher rd=request.getRequestDispatcher("Seller.jsp");  
        rd.forward(request, response); 
        
    } else {
        out.println("<h1>Failed to Save Data</h1>");
    }

    out.println("</body>");
    out.println("</html>");

}catch (ClassNotFoundException e) {
    e.printStackTrace();
    response.getWriter().println("<h1>Driver Error: " + e.getMessage() + "</h1>");
}
        // Print SQL-specific errors in the server logs
        // Print error on webpage
         catch (Exception e) {
    e.printStackTrace();
    response.getWriter().println("<h1>Unexpected Error: " + e.getMessage() + "</h1>");
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
