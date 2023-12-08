<%-- 
    Document   : AddHoliday
    Created on : Jul 25, 2019, 8:40:09 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add PlacedStudents List</title>
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
                    <a class="nav-link" href="AddEvent.jsp">Add Events</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="AddPlacedStudentsList.jsp">Add Placed Students List</a>
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
                  <h3 class="text-primary">Add Placed Students List</h3><br />
                <form>
                    <div class="form-group">
                        <label for="reason">Name</label>
                        <input class="form-control" type="text" name="stud_name" placeholder="Enter the name" />
                    </div>

                    <div class="form-group">
                        <label for="date">Company</label>
                        <input class="form-control" type="text" name="cmpny" placeholder="Enter the Company Name" />
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Course</label>
                        <input class="form-control" type="text" name="course" placeholder="Enter the Course" />
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Package</label>
                        <input class="form-control" type="text" name="pckg" placeholder=" Enter the Salary amount Per Year" />
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Passed Year</label>
                        <input class="form-control" type="text" name="passed" placeholder="Enter the Passed Year" />
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Placed Year</label>
                        <input class="form-control" type="text" name="placed" placeholder="Enter the Placed Year" />
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
          
             String name = request.getParameter("stud_name");
             String company = request.getParameter("cmpny");
             String course = request.getParameter("course");
             String pack = request.getParameter("pckg");
             String passed = request.getParameter("passed");
             String placed = request.getParameter("placed");
             
             if(!name.equals("null") &&  !company.equals("null") && !course.equals("null") && !pack.equals("null") && 
            		 !passed.equals("null") && !placed.equals("null") )
             {
            	 q=" insert into placedStudents_list(name,company,course,packagee,passed_year,placed_year) values ( '"+ name +"','"+ company +"','"+ course +"','"+ pack +"','"+ passed +"','"+ placed +"') ";
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
