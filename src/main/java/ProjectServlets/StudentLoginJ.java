package ProjectServlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/StudentLoginJ")
public class StudentLoginJ extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String username = request.getParameter("name");
        String password = request.getParameter("pass");
		String fetch = "select * from student where user ='"+username+"' and pass='"+password+"'";
		try 
		{
			// REGISTER THE DRIVER
			Class.forName("com.mysql.jdbc.Driver");
			
			// CREATE CONNECTION
			Connection con = DriverManager.getConnection 
					("jdbc:mysql://localhost:3306/clas", "root", "root");
			
			// CREATE STATEMENT 
			Statement stmt = con.createStatement();
			
			// EXECUTE QUERIES
			ResultSet obj = stmt.executeQuery(fetch);
			
			 if(obj.next())
	          {
				 out.print("<h3>Welcome " + username+"</h3>");
	             out.println("<br><a href='StudentHome.jsp'>Click Here to Continoue..</a>");
	          }
	          else
	          {
	        	  out.println("Invalid Login<br>");
	              out.println("<a href='StudentLogin.jsp'>Try Again</a>");
	          }
			 
			 // CLOSE THE CONNECTION
			 obj.close();
	   }
		
		catch(Exception e)
		{
			out.println("Invalid Insertion<br>");
            out.println(e);
            out.println("<a href='StudentLogin.jsp'>Try Again</a>");
		}
		
	}

}