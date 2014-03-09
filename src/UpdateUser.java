

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
 * Servlet implementation class UpdateUser
 */
@WebServlet(description = "Edit User", urlPatterns = {"/UpdateUser"})
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String edit_user_id = request.getParameter("edit_user_id").trim();
		String f_name = request.getParameter("first_name").trim();
		String m_name = request.getParameter("middle_name").trim();
		String l_name = request.getParameter("last_name").trim();
		String password = request.getParameter("password").trim();
		String mobile_number = request.getParameter("mobile_number").trim();
		String email_id = request.getParameter("email_id").trim();
/*		String dob = request.getAttribute("dob").toString();*/
		try
			{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
		        Statement st=con.createStatement();
		        String query = "update tb_user set f_name = '"+f_name+"', m_name= '"+m_name+"', l_name= '"+l_name+"', password= '"+password+"', mob_num= '"+mobile_number+"', email= '"+email_id+"' where tb_user.user_id='"+edit_user_id+"'";
		        st.execute(query);
				con.close();
				request.setAttribute("message", "User Details updated successfully");
				request.getRequestDispatcher("pages/SuccessMessage.jsp").forward(request, response);
			}
			catch (Exception e) 
			{
				e.printStackTrace();
				System.err.println(e.getMessage());
			}
	}
	}

