<%-- 
    Document   : profile
    Created on : 17-Dec-2023, 6:06:46 pm
    Author     : rishabhmaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="tech.entities.User" %>




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
         <link href="css/nav-bar.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <title>Profile</title>
        
    </head>
    <body>
        
        
<!--        Navbar     -->

<nav class="navbar navbar-expand-lg navbar-dark primary-color">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp"><i class="glyphicon glyphicon-cloud"
                                            style="font-size:28px;">
            </i>TechBlog</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Learn with Rishabh</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Subjects
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Data Structure</a></li>
                        <li><a class="dropdown-item" href="#">Java</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled">More...</a>
                </li>
                
                 <li class="nav-item">
                    <a class="nav-link" href="register.jsp">Register</a>
                </li>
            </ul>
            <form class="d-flex text-white" role="search">
              
                                    <a class="nav-link" href="LogoutServlet">Logout</a>

                                    <a class="nav-link"><%= user.getName()%></a>

        
            </form>
        </div>
    </div>
</nav>
    


<!--End -->


    </body>
</html>
