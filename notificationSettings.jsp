<%-- 
    Document   : notificationSettings
    Created on : 21 Feb 2025, 8:21:51 pm
    Author     : thora
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Notification Settings</title>
</head>
<body>
    <h1>Notification Settings</h1>
    <form action="NotificationSettingsServlet" method="post">
        <label>
            <input type="checkbox" name="email_notifications" value="true"> Email Notifications
        </label><br><br>
        
        <label>
            <input type="checkbox" name="sms_notifications" value="true"> SMS Notifications
        </label><br><br>
        
        <label>
            <input type="checkbox" name="push_notifications" value="true"> Push Notifications
        </label><br><br>
        
        <input type="submit" value="Save Settings">
    </form>
</body>
</html>
