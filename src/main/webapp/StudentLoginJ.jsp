<%-- 
    Document   : StudentLoginJ
    Created on : Jul 27, 2019, 5:17:14 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Student Login2</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
    
    	
    	
        <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
               <h1 class="text-primary align-content-center">Welcome to New Life Academy !!</h1>
               <br><br>
               <img src="learning.jpg" style="height: 650px; width: 100%;">
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
                  
                   <%
       Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
        try {
         String lgnm=request.getParameter("name");
         String ps1=request.getParameter("pass");
       
      	// Register the Driver
            Class.forName("com.mysql.jdbc.Driver").newInstance();
      
       	// Creating the Connector
            c1=DriverManager.getConnection("jdbc:mysql://localhost/clas","root","root");
             
       	// Creating the statement      
             st=c1.createStatement();
             q="select * from student where user='"+lgnm+"' and pass='"+ps1+"'";
             
         // Executing the Query
            rs1=st.executeQuery(q);
           if(rs1.next())
          {
              
              
                out.print("<h3>Welcome " + lgnm+"</h3>");
            	out.println("<br><a href='StudentHome.jsp'>Click Here to Continoue..</a>");
           
          }
           else
          {
              out.println("Invalid Login<br>");
              
              out.println("<a href='StudentLogin.jsp'>Try Again</a>");
             }
            
             }
    catch(Exception e)
    {
                    out.println("Invalid Insertion<br>");
                    out.println(e);
                     out.println("<a href='StudentLogin.jsp'>Try Again</a>");
    }     
                    %>
           </div>
           </div>        
    </div>
    
    
    
    </body>
</html>