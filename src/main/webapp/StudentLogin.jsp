<%-- 
    Document   : StudentLogin
    Created on : Jul 25, 2019, 8:01:22 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
            
               <h1 class="text-primary align-content-center">New Life Academy</h1>
               <br><br>
               <img src="Academy.jpg" style="height: 650px; width: 100%;">
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
               <li class="nav-item">
                    <a class="nav-link" href="index.html"><img src="admin.png" style="height: 100px; width: 60px;">Admin Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="StudentLogin.jsp"><img src="student.png" style="height: 100px; width: 60px;">Student Login</a>
                </li>                
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">Student Login</h3><br />
                <form action="StudentLoginJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control" type="text" name="name" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="inputPass">Password</label>
                        <input class="form-control" type="password" name="pass" placeholder="Enter Password" />
                    </div>                    

                    <button type="submit" class="btn btn-primary">Login</button>
                    <br>
                    <a href="StudentRegister.jsp">Student Registration</a>
                </form> 
           </div>
           </div>        
    </div>
    </body>
</html>