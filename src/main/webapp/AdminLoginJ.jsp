<%-- 
    Document   : AdminLoginJ
    Created on : Jul 25, 2019, 8:27:35 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login Page</title>
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
                   <%
                         
                   
               
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String name=request.getParameter("username");
             String pass=request.getParameter("password");
             
              if(name.equals("Monish@22") && pass.equals("Admin"))
              {
                  out.println("Admin Login Successfully...");
                  out.println("<a href='AdminHome.jsp'>Click Here To Continue</a>");
              }
              else
              {
                  out.println("<a href='index.html'>Try Again</a>");
              }
                      
             
             
             
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='CompanyRegister.jsp'>Try Again</a>");
    }  
    
   
            
   %>
           </div>
           </div>        
    </div>
    

    
    </body>
</html>