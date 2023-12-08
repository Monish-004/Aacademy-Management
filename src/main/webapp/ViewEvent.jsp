<%-- 
    Document   : ViewEvent
    Created on : Jul 25, 2019, 8:41:01 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>View Event</title>
       <link rel="stylesheet" href="table.css">
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
                    <a class="nav-link" href="StudentHome.jsp">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="ViewCompany.jsp">View Company</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ViewPlacedStudentsList.jsp">View Placed Students List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="ViewEvent.jsp">View Events</a>
                </li>               
                <li class="nav-item">
                    <a class="nav-link" href="StudentLogin.jsp">Logout</a>
                </li>             
            </ul>                   
               </div>
           </div>
           <div class="row">
           
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">View Events</h3><br />
                 
                <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/clas","root","root");
           
             st = c1.createStatement();
             q="select e_id,e_name,descr,date from event";
             rs1=st.executeQuery(q);
               
             out.println("<table class=table-striped>");
             out.println("<tr align=center><th>  Id  </th><th> event name </th><th> description </th><th> date </th></tr>");
             while(rs1.next())
             {
                 int id=rs1.getInt("e_id");
                 String en=rs1.getString("e_name");
                 String descr=rs1.getString("descr");                                  
                 String date=rs1.getString("date");                                  
                 out.println("<tr><td align=center>"+ id +"</td><td align=center>"+ en +"</td><td align=center>"+ descr +"</td><td align=center>"+ date +"</td></tr>");
                 out.println("</div>");
             }   
              }
             catch(Exception e)
             {
                   out.print(e);
             }
            
   %>
           </div>
           </div>        
    </div>
    </body>
</html>