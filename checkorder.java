import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class checkorder extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", "root", "123456");

            // This query joins the orders table with the product and user tables
            String query = "SELECT o.order_id, o.status, o.order_date, o.total_amount, " +
                           "p.product_name, p.product_description, p.product_amount, p.product_image_path, p.phone_no, " +
                           "u.name AS buyer_name, u.address AS buyer_address, u.phone AS buyer_phone, u.quantity " +
                           "FROM orders o " +
                           "JOIN product p ON o.product_id = p.id " +
                           "JOIN user u ON o.user_id = u.id";

            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();

            // Start HTML output
            out.println("<html><head><title>Confirmed Orders</title>");
            out.println("<style>");
            out.println("body { font-family: 'Segoe UI', sans-serif; background: linear-gradient(to right, #74ebd5, #ACB6E5); padding: 20px; }");
            out.println("table { width: 90%; margin: auto; border-collapse: collapse; background: #fff; box-shadow: 0 2px 20px rgba(0,0,0,0.1); border-radius: 10px; overflow: hidden; }");
            out.println("th, td { padding: 12px 15px; border-bottom: 1px solid #ddd; text-align: center; }");
            out.println("th { background-color: #00796b; color: white; }");
            out.println("tr:hover { background-color: #f1f1f1; }");
            out.println("h1 { text-align: center; color: #333; margin-bottom: 30px; }");
            out.println("img { width: 80px; height: auto; border-radius: 8px; }");
            out.println("</style>");
            out.println("</head><body>");
            out.println("<h1>📦 Confirmed Orders</h1>");
            out.println("<table>");
            out.println("<tr>");
            out.println("<th>Order ID</th>");
            out.println("<th>Status</th>");
            out.println("<th>Order Date</th>");
            out.println("<th>Total Amount</th>");
            out.println("<th>Product</th>");
            out.println("<th>Description</th>");
            out.println("<th>Price (₹)</th>");
            out.println("<th>Image</th>");
            out.println("<th>Seller Phone</th>");
            out.println("<th>Buyer Name</th>");
            out.println("<th>Buyer Address</th>");
            out.println("<th>Buyer Phone</th>");
            out.println("<th>Quantity</th>");
            out.println("</tr>");

            while (rs.next()) {
                out.println("<tr>");
                out.println("<td>" + rs.getInt("order_id") + "</td>");
                out.println("<td>" + rs.getString("status") + "</td>");
                out.println("<td>" + rs.getTimestamp("order_date") + "</td>");
                out.println("<td>₹" + rs.getDouble("total_amount") + "</td>");
                out.println("<td>" + rs.getString("product_name") + "</td>");
                out.println("<td>" + rs.getString("product_description") + "</td>");
                out.println("<td>₹" + rs.getDouble("product_amount") + "</td>");
                out.println("<td><img src='" + rs.getString("product_image_path") + "'></td>");
                out.println("<td>" + rs.getString("phone_no") + "</td>");
                out.println("<td>" + rs.getString("buyer_name") + "</td>");
                out.println("<td>" + rs.getString("buyer_address") + "</td>");
                out.println("<td>" + rs.getString("buyer_phone") + "</td>");
                out.println("<td>" + rs.getInt("quantity") + "</td>");
                out.println("</tr>");
            }

            out.println("</table>");
            out.println("</body></html>");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Displays confirmed orders with product and buyer details";
    }
}