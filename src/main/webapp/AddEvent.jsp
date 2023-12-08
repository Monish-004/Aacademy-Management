<%-- 
    Document   : AddEvent
    Created on : Jul 25, 2019, 8:39:57 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Event</title>
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
                    <a class="nav-link" href="AdminHome.jsp">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link" href="AddLecture.jsp">Add Lectures</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="AddEvent.jsp">Add Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddPlacedStudentsList.jsp">Add Placed Students List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddCompany.jsp">Add Company</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Logout</a>
                </li>              
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">Add Events</h3><br />
                <form >
                    <div class="form-group">
                        <label for="event">Event Name</label>
                        <input class="form-control" type="text" name="ename" placeholder="Enter the Event name" />
                    </div>

                    <div class="form-group">
                        <label for="descr">Description</label>
                        <input class="form-control" type="text" name="descr" placeholder="Enter Description" />
                    </div>  
                    
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input class="form-control" type="text" name="date" placeholder="Enter Date" />
                    </div>  

                    <button type="submit" class="btn btn-primary">Add</button>
                    <br>
                    
                </form> 
                   <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";

        
   
    try {
    	
    	String ename=request.getParameter("ename");
        String descr=request.getParameter("descr");
        String dt=request.getParameter("date");             
        
        if(!ename.equals("null") && !descr.equals("null") && !dt.equals("null"))
        {
        	q="insert into event(e_name,descr,date) values('"+ ename +"','"+ descr +"','"+ dt +"')";
        }
              Class.forName("com.mysql.jdbc.Driver").newInstance();
              c1=DriverManager.getConnection("jdbc:mysql://localhost/clas","root","root");
             
             st = c1.createStatement();
             
             
            st.executeUpdate(q);
             
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("Try Again");
    }        
            
   %>
           </div>
           </div>        
    </div>
    </body>
</html>