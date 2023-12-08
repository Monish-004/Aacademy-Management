<%-- 
    Document   : AddLecture
    Created on : Jul 25, 2019, 8:39:36 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Lecture</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
         <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
               <h1 class="text-primary align-content-center">Welcome to New Life Academy !!</h1>
               <br/>
               <img src="learning.jpg" style="height: 650px; width: 100%;">
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
               <li class="nav-item">
                    <a class="nav-link " href="AdminHome.jsp">Home</a>
                </li>
               <li class="nav-item">
                    <a class="nav-link active" href="AddLecture.jsp">Add Lectures</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AddEvent.jsp">Add Events</a>
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
                  <h3 class="text-primary">Add Lecture Details</h3><br />
                <form>
                    <div class="form-group">
                        <label for="lecture">Lecture</label>
                        <input class="form-control" type="text" name="lect" placeholder="Enter Lecture" />
                    </div>

                    <div class="form-group">
                        <label for="faculty">Faculty Name</label>
                        <input class="form-control" type="text" name="f_name" placeholder="Enter Faculty Name" />
                    </div>                    

                    <div class="form-group">
                        <label for="date">Date</label>
                        <input class="form-control" type="text" name="date" placeholder="Enter Date" />
                    </div>  
                    
                    <div class="form-group">
                        <label for="s_time">Start Time</label>
                        <input class="form-control" type="text" name="s_time" placeholder="Enter Start Time" />
                    </div>  
                    
                    <div class="form-group">
                        <label for="e_time">End Time</label>
                        <input class="form-control" type="text" name="e_time" placeholder="Enter End Time" />
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
          
             String lect=request.getParameter("lect");
             String fname=request.getParameter("f_name");
             String dt=request.getParameter("date");
             String stm=request.getParameter("s_time");
             String et=request.getParameter("e_time");
             
             if(!lect.equals("null") && !fname.equals("null") && !dt.equals("null") && !stm.equals("null")
            		 && !et.equals("null"))
             {
            	 q="insert into lecture(lecture,f_name,date,s_time,e_time) values('"+ lect +"','"+ fname +"','"+ dt +"','"+ stm +"','"+ et +"')";
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