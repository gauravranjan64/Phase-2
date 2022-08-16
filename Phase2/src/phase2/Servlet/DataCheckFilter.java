package phase2.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class DataCheckFilter
 */
@WebFilter("/DataCheckFilter")
public class DataCheckFilter implements Filter {

    /**
     * Default constructor. 
     */
    public DataCheckFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		PrintWriter pw=response.getWriter();
		String s1=request.getParameter("Name");
		String s2=request.getParameter("Age");
		if(s1.equals("Gaurav") && s2.equals("23")){
			chain.doFilter(request, response);
			pw.println();
			response.getWriter().write("Inside data check");
		}else{
			response.getWriter().write("Not valid!");
		}
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
