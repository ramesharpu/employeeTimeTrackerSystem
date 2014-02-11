
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			System.out.println(user_id +" "+password );
			String db_userid = "";
			String db_password="";
			String message = " ";
			String query = " ";
			if (user_id.equals("")||password.equals(""))
			{
				System.out.println("Entered null loop");
				System.out.println("failure");
				message = "Oops!!! Invalid Credentials";
				request.setAttribute("message", message);
//				response.sendRedirect("/main.jsp");
				request.getRequestDispatcher("/index.jsp").forward(request,
						response);
			}
			else
			{
				try
				{
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","sa","Tiger123$");//repalce your databse name and user name
			        Statement st=con.createStatement();
			        query = "Select * from tb_user where user_id='"+user_id+"'";
			        ResultSet rs=st.executeQuery(query);//replace your table name
					while(rs.next())
					{
						db_userid =rs.getString("user_id");
						db_password =rs.getString("password");
						System.out.println("UserID: "+db_userid+" Password: "+db_password);

					}
					con.close();
					System.out.println("password validation");
					if(password.equals(db_password))
					{
						System.out.println("redirecting to main.jsp");
						response.sendRedirect("/main.jsp");
//						request.getRequestDispatcher("/main.jsp");
					}
					else
					{
						System.out.println("entered else loop");
						System.out.println("failure");
						message = "Oops!!! Invalid Credentials";
						request.setAttribute("message", message);
						request.getRequestDispatcher("/index.jsp").forward(request,
								response);
					}
				}
				catch (Exception e) 
				{
					// handle the exception
					e.printStackTrace();
					System.err.println(e.getMessage());
				}
			} 
		}
	}
}

