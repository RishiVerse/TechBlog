<%-- 
    Document   : register
    Created on : 15-Dec-2023, 6:24:32 am
    Author     : rishabhmaurya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="tech.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/nav-bar.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .clipping
            {
                clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 70%, 80% 88%, 50% 100%, 23% 87%, 0 92%, 0% 35%, 0 0);
                
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%@include file="nav_bar.jsp" %>
        
        <main class="d-flex align-items-center primary-color clipping" style="height: 95vh">
            <div class="container">
                <div class="row justify-content-center">
                    
                    <div class="col-md-6">
                        <div class="card mt-0">
                            <div class="card-header">
                                <h1>Register</h1>
                            </div>
                            <div class="card-body" method="post">
                                <form id="reg-form" action="RegisterServlet">
                                    <div class="mb-3">
                                        <label for="user_name" class="form-label">User Name</label>
                                        <input name="user_name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="user_name" class="form-text"></div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                                        <input name="email_address" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                                    </div>
                                    <div class="mb-3">
                                        <label for="exampleInputPassword1" class="form-label">Password</label>
                                        <input name="password" type="password" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    <div class="mb-3">
                                        <label for="gender" class="form-label">Gender</label>
                                        <br>
                                        <input type="radio" id="gender" name="gender" value="male">Male
                                        <input type="radio" id="gender" name="gender" value="female">Female
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" name="about" id="" cols="30" rows="1.1" placeholder="Something about yourself"></textarea>
                                        
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Terms and Conditions</label>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Javascript -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
        <script>
            $('#reg-form').on('submit', function(event){
                event.preventDefault();
                let formData = $(this).serialize();
    
                $.ajax({
                    url: "RegisterServlet",
                    type: 'POST',
                    data: formData,
                    success: function(data, textStatus, jqXHR) {
                        console.log(data);
                        Swal.fire({
                            title: 'Success!',
                            text: 'Do you want to continue',
                            icon: 'success',
                            confirmButtonText: 'Okay'
                        }).then((result) => {
                            // Redirect to another page after the user clicks 'Okay' on the Swal modal
                            if (result.isConfirmed) {
                                window.location.href = "login.jsp"; // Replace with your desired page URL
                            }
                        });
                        // Handle success
                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        console.log(jqXHR);
                        // Handle errors
                    }
                });
            });
        </script>
        
    </body>
</html>
