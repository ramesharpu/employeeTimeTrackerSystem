

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		 boolean Result = false;
		    if(request.getSession(true) != null)
		    {    
		        request.getSession().invalidate();
		        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	            response.setDateHeader("Expires", 0);
		        response.sendRedirect("index.jsp");
		    }
//		    return Result;
		}
	}

