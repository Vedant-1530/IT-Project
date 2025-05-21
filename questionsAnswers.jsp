<%-- 
    Document   : questionsAnswers.jsp
    Created on : 21 Feb 2025, 8:26:32 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Questions & Answers</title>
</head>
<body>
    <h1>Questions & Answers</h1>
    <form action="QuestionsAnswersServlet" method="post">
        <label for="question">Ask a Question:</label><br>
        <textarea id="question" name="question" rows="4" cols="50"></textarea><br><br>
        <input type="submit" value="Submit Question">
    </form>
    
    <h2>Previous Questions & Answers</h2>
    <ul>
        <%-- Fetch and display user questions and answers dynamically here --%>
    </ul>
</body>
</html>
