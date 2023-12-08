package ProjectServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() 
    {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("HI");
		
		String name= (String) request.getParameter("username");
        String pass= (String) request.getParameter("password");
        
		 try 
		 {
	          
	          System.out.println(name);
	             
	          if(name.equals("Admin") && pass.equals("Admin"))
	          {
	              out.println("Admin Login Successfully...");
	              out.println("<a href='AdminHome.jsp'>Click Here To Continue</a>");
	          }
	          else
	          {
	              out.println("<a href='index.html'>Try Again</a>");
	          }
	    }
	    catch(Exception e)
	    {
	    	out.println(e);
	        out.println("<a href='CompanyRegister.jsp'>Try Again</a>");
	    } 
	}

}
