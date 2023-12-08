<%-- 
    Document   : StudentRegister
    Created on : Jul 24, 2019, 6:36:55 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student Register</title>
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
    
    <form action="StudentRegister" method="Get">
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
                    <a class="nav-link" href="index.html">Admin Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="StudentLogin.jsp">Student Login</a>
                </li>                
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">Student Registration</h3><br />
                <form action="Home.jsp">
                    <div class="form-group">
                        <label for="inputName">Name</label>
                        <input class="form-control" type="text" name="name" placeholder="Enter Username" />
                    </div>

                    <div class="form-group">
                        <label for="inputClass">Class</label>
                        <input class="form-control" type="text" name="clas" placeholder="Enter Class" />
                    </div>                    
                    
                    <div class="form-group">
                        <label for="inputBus"> Gender</label>
                       <select name="gen" class="form-control">
                            <option>--Select--</option>
                            <option>Male</option>
                           <option>Female</option>
                        </select>
                    </div>
                       
                    <div class="form-group">
                        <label for="inputContact">Contact</label>
                        <input class="form-control" type="text" name="cont" placeholder="Enter Contact" />
                    </div>                    
                    
                    <div class="form-group">
                        <label for="inputDOB">Date of Birth</label>
                        <input class="form-control" type="text" name="dob" placeholder="Enter Date of Birth" />
                    </div>    
                    
                    <div class="form-group">
                        <label for="inputUser">Username</label>
                        <input class="form-control" type="text" name="user" placeholder="Enter Username" />
                    </div>                    
                    
                    <div class="form-group">
                        <label for="inputPass">Password</label>
                        <input class="form-control" type="text" name="pass" placeholder="Enter Password" />
                    </div>                    
                    <button type="submit" class="btn btn-primary">
                    	<a href="StudentLogin.jsp"> Login </a>
                    </button>
                    <br>
                    
                </form> 
                  <a href="StudentLogin.jsp">Click Here To Login</a>
                   <%
                         
      /*  Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String name=request.getParameter("name");
             String clas=request.getParameter("clas");
             String gen=request.getParameter("gen");
             String con=request.getParameter("con");
             String dob=request.getParameter("dob");
             String us=request.getParameter("user");
             String ps=request.getParameter("pass");
             
             
          // Register the Driver
          	Class.forName("com.mysql.jdbc.Driver").newInstance();
          
          // Create Connector
          	c1=DriverManager.getConnection("jdbc:mysql://localhost/clas","root","root");
             
          // Creating the statement 
             st = c1.createStatement();
             q="insert into student(name,class,gen,cont,dob,user,pass) values('"+ name +"','"+ clas +"','"+ gen +"','"+ con +"','"+ dob +"','"+ us +"','"+ ps +"')";
             
          // Execute Queries
            st.executeUpdate(q);
             
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("Try Again");
    }   */     
            
   %>
           </div>
           </div>        
    </div>
    
    </form>
    
    </body>
</html>