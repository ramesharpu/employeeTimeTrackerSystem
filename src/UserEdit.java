

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserEdit
 */
@WebServlet(description = "Edit User", urlPatterns = { "/UserEdit"})
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String edit_user_id = request.getParameter("edit_user_id").trim();
		String f_name = "";
		String m_name = "";
		String l_name = "";
		String password = "";
		String mobile_number = "";
		String email_id = "";
		Date dob = null;
		int status = 0;
		String message = "";
		try
			{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
		        Statement st=con.createStatement();
		        String query = "select * from tb_user where tb_user.user_id='"+edit_user_id+"'";
		        ResultSet rs=st.executeQuery(query);
		        if (!rs.next())
				{
		        	message = "User Doesnot Exist";
					request.setAttribute("message", message);
					request.getRequestDispatcher("pages/EditUser.jsp").forward(request, response);
					con.close();
				}
		        else
				{
		        	f_name = rs.getString("f_name");
					m_name = rs.getString("m_name");
					l_name = rs.getString("l_name");
					password = rs.getString("password");
					mobile_number = rs.getString("mob_num");
					email_id = rs.getString("email");
					dob = rs.getDate("dob");
					status = rs.getInt("status");
					request.setAttribute("edit_user_id",edit_user_id);
					request.setAttribute("f_name", f_name);
					request.setAttribute("m_name", m_name);
					request.setAttribute("l_name", l_name);
					request.setAttribute("password", password);
					request.setAttribute("mobile_number", mobile_number);
					request.setAttribute("email_id", email_id);
					request.setAttribute("dob", dob);
					request.setAttribute("status", status);
					request.getRequestDispatcher("pages/EditUserDetails.jsp").forward(request, response);
					con.close();
				}
			}
			catch (Exception e) 
			{
				e.printStackTrace();
				System.err.println(e.getMessage());
			}
	}
	}

