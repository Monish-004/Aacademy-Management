<%-- 
    Document   : ViewHolidays
    Created on : Jul 25, 2019, 8:41:23 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <title>View Placed Students List</title>
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
                    <a class="nav-link active" href="ViewPlacedStudentsList.jsp">View Placed Students List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ViewEvent.jsp">View Events</a>
                </li>               
                <li class="nav-item">
                    <a class="nav-link" href="StudentLogin.jsp">Logout</a>
                </li>             
            </ul>                        
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">View Placed Students List</h3><br />
                
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
             q=" select name,company,course,packagee,passed_year,placed_year from placedStudents_list ";
             rs1=st.executeQuery(q);
               
             out.println("<table class=table-striped>");
             out.println("<tr <th> </th>  <th> name </th> <th> company </th> <th> course </th> <th> packagee </th> <th> passed_year </th> <th> placed_year </th> </tr>");
             while(rs1.next())
             {
                 //int S_NO = rs1.getInt("S_NO");
                 String name = rs1.getString("name");
                 String company = rs1.getString("company");
                 String course = rs1.getString("course"); 
                 String packagee = rs1.getString("packagee"); 
                 String passed_year = rs1.getString("passed_year");
                 String placed_year = rs1.getString("placed_year");
                 
                 out.println("<tr> <td >"+ name +"</td> <td >"+ company +"</td> <td >"+ course +"</td> <td >"+ packagee +"</td> <td >"+ passed_year +"</td> <td >"+ placed_year +"</td> </tr>");
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