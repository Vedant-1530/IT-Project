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

/**
 * EditProfileServlet class to handle the profile update requests.
 */
@WebServlet("/EditProfileServlet")
public class EditProfileServlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP GET and POST methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Set content type for the response
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // Get the form data from the request
        String name = request.getParameter("First_name");
        String password = request.getParameter("Password");
        String email = request.getParameter("Email");
        
        // Check if the required parameters are not null or empty
        if (name == null || password == null || email == null || name.isEmpty() || password.isEmpty() || email.isEmpty()) {
            out.println(getErrorPage("All fields are required to update the profile."));
            return;
        }

        // Database connection and update logic
        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection with the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

            // SQL query to update user data in the database
            String query = "UPDATE data SET First_name = ?, Password = ? WHERE Email = ?";
            PreparedStatement ps = con.prepareStatement(query);

            // Set the parameters for the PreparedStatement
            ps.setString(1, name);
            ps.setString(2, password);
            ps.setString(3, email);
            
            // Execute the update query
            int result = ps.executeUpdate();

            // Check result and return corresponding page
            if (result > 0) {
                out.println(getSuccessPage("Profile updated successfully!"));
            } else {
                out.println(getErrorPage("Error: Unable to update profile. Please try again later."));
            }

            // Close the connection
            con.close();
        } catch (Exception e) {
            // Print the error message if an exception occurs
            out.println(getErrorPage("Error: " + e.getMessage()));
        }
    }

    // Handles the GET method
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    // Handles the POST method
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    // Returns a short description of the servlet
    @Override
    public String getServletInfo() {
        return "Servlet for updating user profile data";
    }

    // Generate success page HTML with background GIF
    private String getSuccessPage(String message) {
        return "<html>"
            + "<head>"
            + "<style>"
            + "body { "
            + "font-family: Arial, sans-serif; "
            + "background-image: url('https://i.pinimg.com/originals/9b/80/22/9b802212ee9a9879d3240cafd740223d.gif');"  // Replace with your own GIF URL or path
            + "background-size: cover; "
            + "background-position: center; "
            + "background-attachment: fixed; "
            + "margin: 0; padding: 0; display: flex; justify-content: center; align-items: center; height: 100vh; }"
            + ".container { background-color: rgba(255, 255, 255, 0.8); padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); max-width: 500px; width: 100%; }"
            + ".header { text-align: center; color: #2C3E50; font-size: 24px; margin-bottom: 20px; }"
            + ".message { font-size: 18px; text-align: center; color: #27ae60; margin-bottom: 20px; }"
            + ".button { display: block; width: 100%; padding: 10px; background-color: #3498db; color: white; border: none; border-radius: 5px; cursor: pointer; text-align: center; font-size: 16px; text-decoration: none; }"
            + ".button:hover { background-color: #2980b9; }"
            + "</style>"
            + "</head>"
            + "<body>"
            + "<div class='container'>"
            + "<div class='header'>Profile Update</div>"
            + "<div class='message'>" + message + "</div>"
            + "<a href='index.jsp' class='button'>Go Back to Your Profile</a>"
            + "</div>"
            + "</body>"
            + "</html>";
    }

    // Generate error page HTML with background GIF
    private String getErrorPage(String message) {
        return "<html>"
            + "<head>"
            + "<style>"
            + "body { "
            + "font-family: Arial, sans-serif; "
            + "background-image: url('https://mir-s3-cdn-cf.behance.net/project_modules/hd/ab0c1e57515093.59d8c6eb16d19.gif');"  // Replace with your own GIF URL or path
            + "background-size: cover; "
            + "background-position: center; "
            + "background-attachment: fixed; "
            + "margin: 0; padding: 0; display: flex; justify-content: center; align-items: center; height: 100vh; }"
            + ".container { background-color: rgba(255, 255, 255, 0.8); padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0, 0, 0, 0.1); max-width: 500px; width: 100%; }"
            + ".header { text-align: center; color: #e74c3c; font-size: 24px; margin-bottom: 20px; }"
            + ".message { font-size: 18px; text-align: center; color: #e74c3c; margin-bottom: 20px; }"
            + ".button { display: block; width: 100%; padding: 10px; background-color: #3498db; color: white; border: none; border-radius: 5px; cursor: pointer; text-align: center; font-size: 16px; text-decoration: none; }"
            + ".button:hover { background-color: #2980b9; }"
            + "</style>"
            + "</head>"
            + "<body>"
            + "<div class='container'>"
            + "<div class='header'>Error</div>"
            + "<div class='message'>" + message + "</div>"
            + "<a href='index.jsp' class='button'>Try Again</a>"
            + "</div>"
            + "</body>"
            + "</html>";
    }
}