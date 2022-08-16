package phase2.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet2
 */
@WebServlet("/Servlet2")
public class Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		try{  
		    response.setContentType("text/html");  
		    PrintWriter out = response.getWriter();  
		      
		    Cookie ck1[]=request.getCookies();  
		    
		    for(int i=0;i<ck1.length;i++){  
		    	 out.print("<br>"+ck1[i].getName()+" "+ck1[i].getValue());//printing name and value of cookie  
		    	} 
		    
		    Cookie ck2[]=request.getCookies();  
		    
		    for(int i=0;i<ck2.length;i++){  
		    	 out.print("<br>"+ck2[i].getName()+" "+ck2[i].getValue());//printing name and value of cookie  
		    	} 
	        out.close();  
	         }
		catch(Exception e)
		{
			System.out.println(e);
		}  
	}

}
