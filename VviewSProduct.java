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
public class VviewSProduct extends HttpServlet {

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
            String query = "select * from seller_data";
            rs=st.executeQuery(query);
            /* TODO output your page here. You may use following sample code. */
             out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Seller Data View</title>");
            out.println("<style>");
            out.println("body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f4f6f9; margin: 0; padding: 0; }");
            out.println("h2 { text-align: center; color: #007bff; margin: 20px 0; }");
            out.println("table { width: 95%; margin: auto; border-collapse: collapse; background-color: #fff; box-shadow: 0 0 12px rgba(0,0,0,0.1); }");
            out.println("th, td { padding: 12px 10px; text-align: center; border: 1px solid #ddd; font-size: 13px; }");
            out.println("th { background-color: #007bff; color: white; }");
            out.println("tr:nth-child(even) { background-color: #f2f2f2; }");
            out.println("tr:hover { background-color: #e3f0ff; }");
            out.println("a.button { padding: 6px 12px; text-decoration: none; color: white; background-color: #dc3545; border-radius: 4px; font-size: 13px; transition: 0.3s ease; }");
            out.println("a.button:hover { background-color: #c82333; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");

            out.println("<h2>Seller Registration Records</h2>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<th>ID</th>");
            out.println("<th>First Name</th>");
            out.println("<th>Surname</th>");
            out.println("<th>Birth Day</th>");
            out.println("<th>Birth Month</th>");
            out.println("<th>Birth Year</th>");
            out.println("<th>Female</th>");
            out.println("<th>Male</th>");
            out.println("<th>Transgender</th>");
            out.println("<th>Email</th>");
            out.println("<th>Password</th>");
            out.println("<th>Preferred Language</th>");
            out.println("<th>Action</th>");
            out.println("</tr>");

            while (rs.next()) {
                int sid = rs.getInt("id");
                String fname = rs.getString("First_name");
                String sname = rs.getString("Surname");
                String bd = rs.getString("Birth_day");
                String bm = rs.getString("Birth_month");
                int by = rs.getInt("Birth_year");
                String gf = rs.getString("Genderf");
                String gm = rs.getString("Genderm");
                String gc = rs.getString("Genderc");
                String e = rs.getString("Email");
                String p = rs.getString("Password");
                String pl = rs.getString("preferred_language");

                out.println("<tr>");
                out.println("<td>" + sid + "</td>");
                out.println("<td>" + fname + "</td>");
                out.println("<td>" + sname + "</td>");
                out.println("<td>" + bd + "</td>");
                out.println("<td>" + bm + "</td>");
                out.println("<td>" + by + "</td>");
                out.println("<td>" + gf + "</td>");
                out.println("<td>" + gm + "</td>");
                out.println("<td>" + gc + "</td>");
                out.println("<td>" + e + "</td>");
                out.println("<td>" + p + "</td>");
                out.println("<td>" + pl + "</td>");
                out.println("<td><a class='button' href='Sdelete?id=" + sid + "'>Delete</a></td>");
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
