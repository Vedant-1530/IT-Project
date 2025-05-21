/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
/**
 *
 * @author thora
 */
public class SelectLanguageServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        String language = request.getParameter("language");
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("Email"); // Assuming email is stored in session
        
        if (email == null) {
            out.println("<h2>User not logged in. Please log in first.</h2>");
            return;
        }
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");
            
            String query = "UPDATE data SET preferred_language = ? WHERE Email = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, language);
            ps.setString(2, email);
            
            int result = ps.executeUpdate();
            
            out.println("<html><body>");
            if (result > 0) {
                session.setAttribute("preferredLanguage", language);
                out.println("<h2>Language Preference Updated Successfully</h2>");
            } else {
                out.println("<h2>Error Updating Language Preference</h2>");
            }
            out.println("</body></html>");
            
            con.close();
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    }
}
