<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <title>Class Room Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
               <h1 class="text-primary align-content-center">Class Room Management System</h1>
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
               <li class="nav-item">
                    <a class="nav-link active" href="index.html">Admin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="StudentLogin.jsp">Student</a>
                </li>                
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">                   
                  <h3 class="text-primary">Admin Login</h3><br />
                <form action="AdminLoginJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Username</label>
                        <input class="form-control" type="text" name="name" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="inputPass">Password</label>
                        <input class="form-control" type="password" name="pass" placeholder="Enter Password" />
                    </div>                    

                    <button type="submit" class="btn btn-primary">Login</button>
                </form>                    
           </div>
           </div>        
    </div>
    </body>
</html>
 