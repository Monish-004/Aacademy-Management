<%-- 
    Document   : AddFaculty
    Created on : Jul 25, 2019, 8:40:23 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Company</title>
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
                    <a class="nav-link" href="AddPlacedStudentsList.jsp">Add Placed Students List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="AddCompany.jsp">Add Company</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Logout</a>
                </li>             
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                  <h3 class="text-primary">Add Company</h3><br />
                <form>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input class="form-control" type="text" name="cmpny_name" placeholder="Enter Name" />
                    </div>

                          <div class="form-group">
                        <label for="contact">Location</label>
                        <input class="form-control" type="text" name="loc" placeholder="Enter Contacct" />
                    </div>              

                    <div class="form-group">
                        <label for="email">Eligibility</label>
                        <input class="form-control" type="text" name="eligibility" placeholder="Enter Email" />
                    </div>
                    
                    <div class="form-group">
                        <label for="salary">Salary</label>
                        <input class="form-control" type="text" name="sal" placeholder="Enter Salary" />
                    </div>
                    
                    <div class="form-group">
                        <label for="lname">Batch</label>
                        <input class="form-control" type="text" name="batch" placeholder="Enter Lecture Name" />
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
          
             String name=request.getParameter("cmpny_name");
             String loc=request.getParameter("loc");
             String eligible=request.getParameter("eligibility");
             String sal=request.getParameter("sal");
             String batch=request.getParameter("batch");
             
             if(!name.equals("null") && !loc.equals("null") && !eligible.equals("null") && !sal.equals("null") 
            		 && !batch.equals("null"))
             {
            	 q=" insert into company(company_name,location,eligibility,salary,passedout_batch) values ('"+ name +"','"+ loc +"','"+ eligible +"','"+ sal +"','"+ batch +"')";
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
