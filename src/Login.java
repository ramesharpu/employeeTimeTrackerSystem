
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 * Servlet implementation class Login
 */
@WebServlet(description = "Login Validation", urlPatterns = { "/Login" })
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException{
		{
			String user_id = request.getParameter("user_name").trim();
			String password = request.getParameter("password").trim();
			String db_userid = "";
			String db_password="";
			String message = " ";
			String query = " ";
			if (user_id.equals("")||password.equals(""))
			{
				message = "Oops!!! Invalid Credentials";
				request.setAttribute("message", message);
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}
			else
			{
				try
				{
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","sa","Tiger123$");
			        Statement st=con.createStatement();
			        query = "Select * from tb_user where user_id='"+user_id+"'";
			        ResultSet rs=st.executeQuery(query);
					while(rs.next())
					{
						db_userid =rs.getString("user_id");
						db_password =rs.getString("password");
					}
					con.close();
					if(password.equals(db_password))
					{
						HttpSession session = request.getSession(true);
						response.sendRedirect("pages/main.jsp");
					}
					else
					{
						message = "Oops!!! Invalid Credentials";
						request.setAttribute("message", message);
						request.getRequestDispatcher("/index.jsp").forward(request,
								response);
					}
				}
				catch (Exception e) 
				{
					e.printStackTrace();
					System.err.println(e.getMessage());
				}
			} 
		}
	}
}

