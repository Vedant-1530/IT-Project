<%-- 
    Document   : Vpost-product.jsp
    Created on : 11 Mar 2025, 2:15:31 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Centering the Form */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #f4f4f4;
        }

        /* Form Box */
        .form-box {
            background: #fff;
            width: 600px;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        /* Form Heading */
        .form-box h1 {
            margin-bottom: 20px;
            color: #333;
        }

        /* Input Group */
        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .input-group label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
        }

        .input-group input,
        .input-group textarea,
        .input-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        /* Textarea */
        .input-group textarea {
            height: 80px;
            resize: none;
        }

        /* Submit Button */
        .submit-btn {
            background: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            width: 100%;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            background: #218838;
        }
    </style>

</head>
<body>
    <br>
    <div class="container">
        <div class="form-box">
            <h1>Post a New Product</h1>

            <form method="post" action="VPostProductServlet">
                
                <div class="input-group">
                    <label>Product Image URL</label>
                    <input type="text" name="productImage" placeholder="Enter image URL" required>
                </div>

                <div class="input-group">
                    <label>Product Name</label>
                    <input type="text" name="productName" placeholder="Enter product name" required>
                </div>

                <div class="input-group">
                    <label>Description</label>
                    <textarea name="productDescription" placeholder="Enter product description" required></textarea>
                </div>

                <div class="input-group">
                    <label>Amount</label>
                    <input type="number" name="productPrice" placeholder="Enter product price" required>
                </div>

                <div class="input-group">
                    <label>Category</label>
                    <select name="category" required>
                        <option value="">Select Category</option>
                        <option value="Chairs">Chairs</option>
                        <option value="Tables">Tables</option>
                        <option value="Sound Systems">Sound Systems</option>
                        <option value="Lighting Equipment">Lighting Equipment</option>
                        <option value="Tents and Decorations">Tents and Decorations</option>
                    </select>
                </div>

                <div class="input-group">
                    <label>Phone Number</label>
                    <input type="text" name="phoneNo" placeholder="Enter phone number" required>
                </div>

                <div class="input-group">
                    <label>Quantity</label>
                    <input type="number" name="quantity" placeholder="Enter quantity" required>
                </div>

                <button type="submit" class="submit-btn">Post Product</button>
            </form>
        </div>
    </div>

</body>
</html>