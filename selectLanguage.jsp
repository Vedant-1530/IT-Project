<%-- 
    Document   : selectLanguage
    Created on : 21 Feb 2025, 8:07:05 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Select Language</title>
</head>
<body>
    <h1>Select Your Preferred Language</h1>
    <form action="SelectLanguageServlet" method="post">
        <label for="language">Choose Language:</label>
        <select id="language" name="language">
            <option value="English">English</option>
            <option value="Spanish">Spanish</option>
            <option value="French">French</option>
            <option value="German">German</option>
            <option value="Chinese">Chinese</option>
            <option value="Hindi">Hindi</option>
            <option value="Marathi">Marathi</option>
        </select>
        <br><br>
        <input type="submit" value="Save Language">
    </form>
</body>
</html>
