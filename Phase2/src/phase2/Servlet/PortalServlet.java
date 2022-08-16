package phase2.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PortalServlet
 */
@WebServlet("/PortalServlet")
public class PortalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PortalServlet() {
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
		PrintWriter pw=response.getWriter();
		String s1=request.getParameter("productId");
		String s2=request.getParameter("name");
		String s3=request.getParameter("price");
		String s4=request.getParameter("purchaseDate");
		try{
			pw.print("<div align='center'><table border='2px' bgcolor='LightYellow' width='300px' height='200px'><tr><td><b>Product Details</b><br><br>");
			pw.println("Product Id: "+s1+"<br>"+"Name: "+s2+"<br>"+"Price: "+s3+"<br>"+"Purchase Date: "+s4);
			pw.print("</td></tr></table></div>");
		}catch(Exception e){
			pw.println(e);
		}
		
	}

}
