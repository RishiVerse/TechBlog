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

                                    <a class="nav-link" href="#!" data-bs-toggle="modal" data-bs-target="#ProfileModal"><%= user.getName()%></a>

        
            </form>
        </div>
    </div>
                                    
</nav>
    


<!--End -->




<!-- Modal -->
<div class="modal fade" id="ProfileModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header primary-color text-center text-white">
        <h1 class="modal-title fs-5 " id="exampleModalLabel"> TechBlog</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

      </div>
      <div class="modal-body" >
          <div class="container text-center">
          <img src="images/null.png" class="img-fluid">
          <br>
          <h5 class="modal-title"> <%= user.getName()%> </h5>
          </div>
          <div class="container text-white text-center" id="edit">
              <form action="EditServlet" method="post" enctype="multipart/form-data">
    <table class="table">
    <tr>
      <td>Id</td>
      <td><%= user.getId()%></td>
    
    </tr>
    <tr>
      <td>Name</td>
      <td><input name="name" type="text" value="<%= user.getName()%>" class="form-control" ></td>
    
    </tr>
    <tr>
    
      <td>Email</td>
      <td><input name="email" type="email" value="<%= user.getEmail()%>" class="form-control"  aria-describedby="emailHelp"></td>
      
    </tr>
    <tr>
     
      <td>Gender</td>
      <td><input name="gender" type="text" value="<%= user.getGender()%>" class="form-control" ></td>
    </tr>
     <tr>
     
      <td>About</td>
      <td><input name="About" type="text" value="<%= user.getAbout()%>" class="form-control" ></td>
    </tr>
         <tr>
     
      <td>Profile Pic</td>
      <td><input name="photo" type="file" class="btn" ></td>
    </tr>

     <div class="container">
          
        <button  name ="save" type="submit" class="btn btn-primary">Save</button>
      </div>
              </table>

              </form>
    
          </div>
                 
          
           
          <table class="table">

              <tbody id="information">
    <tr>
      <td>Name</td>
      <td><%= user.getName()%></td>
    
    </tr>
    <tr>
    
      <td>Email</td>
      <td><%= user.getEmail()%></td>
      
    </tr>
    <tr>
     
      <td>Gender</td>
      <td><%= user.getGender()%></td>
    </tr>
     <tr>
     
      <td>About</td>
      <td><%= user.getAbout()%></td>
    </tr>
              </tbody>
          </table>
     
    
      <div class="modal-footer">
          
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button id="edit-btn" type="button" class="btn btn-primary">Expand</button>
      </div>
    </div>
  </div>
</div>



        <!-- Javascript -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
        <script>
            $(document).ready(function()
            {
                let flag=false;
                $("#edit").hide();
                $('#edit-btn').click(function()
                {
                    if(flag==false){
                    $("#information").hide();
                                    $("#edit").show();

                                            flag=true

                    }
                    else
                    {
                        $("#information").show();
                         $("#edit").hide();
                        flag=false
                    }
                    
                })
            })
            
        </script>    
        
    </body>
</html>
