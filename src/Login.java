
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
			String db_password="";
			int role_id = 0;
			String f_name="";
			String l_name="";
			int status = 0;
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
			        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
			        Statement st=con.createStatement();
			        query = "select tb_user.password, tb_user.f_name, tb_user.l_name, tb_user.status, tb_user_role.role_id from tb_user INNER JOIN tb_user_role on tb_user.user_id = tb_user_role.user_id where tb_user.user_id='"+user_id+"'";
			        ResultSet rs=st.executeQuery(query);
					while(rs.next())
					{
						db_password =rs.getString("password");
						f_name=rs.getString("f_name");
						l_name=rs.getString("l_name");
						status=rs.getInt("status");
						role_id=rs.getInt("role_id");
					}
					con.close();
					if (status==0)
					{
						message = "User Inactive";
						request.setAttribute("message", message);
						request.getRequestDispatcher("/index.jsp").forward(request, response);
					}
					if(password.equals(db_password))
					{
						HttpSession session = request.getSession(false);
						session.setAttribute("user_id", user_id);
						session.setAttribute("f_name", f_name);
						session.setAttribute("l_name", l_name);
						if(role_id==1)
							session.setAttribute("role", "admin");
						else
							session.setAttribute("role", "user");
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

