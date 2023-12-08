package ProjectServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentRegister
 */
@WebServlet("/StudentRegister")
public class StudentRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		
		String name=request.getParameter("name");
        String clas=request.getParameter("clas");
        String gen=request.getParameter("gen");
        String cont=request.getParameter("cont");
        String dob=request.getParameter("dob");
        String us=request.getParameter("user");
        String ps=request.getParameter("pass");
		
		String q = "insert into student(name,class,gen,cont,dob,user,pass) values('"+ name +"','"+ clas +"','"+ gen +"','"+ cont +"','"+ dob +"','"+ us +"','"+ ps +"')";
		
		try {
	          
            
            
            // Register the Driver
         		Class.forName("com.mysql.jdbc.Driver");
         			
         	// Create Connector
         		Connection connector = DriverManager.getConnection
         				("jdbc:mysql://localhost:3306/clas", "root", "root");
         			
         		// System.out.println("Now the Database is Connected to Java");
         			
         	// Create a Statement 
         		Statement stmt = connector.createStatement();
         		
         	// Execute Queries
         		stmt.executeUpdate(q);
         		
         	// Closing the Connection
         		connector.close();
   }
   catch(Exception e)
   {
                   out.println(e);
                   out.println("Try Again");
   }  
		
	}

}
