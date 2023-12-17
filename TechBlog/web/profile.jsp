<%-- 
    Document   : profile
    Created on : 17-Dec-2023, 6:06:46 pm
    Author     : rishabhmaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="tech.servlet.*" %>
<%@ page import="tech.entities.*" %>



<%
User user=(User)session.getAttribute("currentUser");
if(user==null)
{
response.sendRedirect("login.jsp");
}

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <p>hello's</p>


    </body>
</html>
