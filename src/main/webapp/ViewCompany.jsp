<%-- 
    Document   : ViewSchedule
    Created on : Jul 25, 2019, 8:40:46 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>View Company</title>
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
		                    <a class="nav-link active" href="ViewCompany.jsp">View Company</a>
		              </li>
	                  <li class="nav-item">
	                    <a class="nav-link" href="ViewPlacedStudentsList.jsp">View Placed Students List</a>
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
                  <h3 class="text-primary">View Company</h3><br />
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
             q="select S_NO,company_name,location,eligibility,salary,passedout_batch from company";
             rs1=st.executeQuery(q);
               
             out.println("<table class=table-striped>");
             out.println("<tr align=center><th>  S_NO  </th><th> company_name </th><th> location </th><th> eligibility </th><th> salary </th><th> passedout_batch </th></tr>");
             while(rs1.next())
             {
                 int S_NO = rs1.getInt("S_NO");
                 String name = rs1.getString("company_name");
                 String loc = rs1.getString("location"); 
                 String eligibility = rs1.getString("eligibility");
                 String salary = rs1.getString("salary"); 
                 String batch = rs1.getString("passedout_batch");
                 
                 out.println("<tr><td align=center>"+ S_NO +"</td><td align=center>"+ name +"</td><td align=center>"+ loc +"</td><td align=center>"+ eligibility +"</td><td align=center>"+ salary +"</td><td align=center>"+ batch +"</td></tr>");
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