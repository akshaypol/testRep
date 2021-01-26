<%-- 
    Document   : testmail
    Created on : Nov 5, 2020, 5:08:19 PM
    Author     : Akki
--%>

<%@page import="Com.service.sendEmail1"%>
<%@page import="Com.service.sendEmail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
   <%
   String mail="akshaypol91@gmail.com";
    sendEmail.mailsend(mail, "Message11", "subjet");
   %>
    </body>
</html>
