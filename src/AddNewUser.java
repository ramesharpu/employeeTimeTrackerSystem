

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(description = "Add New User", urlPatterns = { "/AddNewUser" })
public class AddNewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddNewUser() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = request.getParameter("user_id").trim();
		String f_name = request.getParameter("f_name").trim();
		String m_name = request.getParameter("m_name").trim();
		String l_name = request.getParameter("l_name").trim();
		String password = request.getParameter("password").trim();
		String mobile_number = request.getParameter("mobile_number").trim();
		String email_id = request.getParameter("email_id").trim();
		String dob = request.getParameter("dob").trim();
		String gender = request.getParameter("gender").trim();
		String message = "";
		String query= "";
		System.out.println(query);
		try
			{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
		        Statement st=con.createStatement();
		        query="select * from tb_user where tb_user.user_id='"+user_id+"'";
		        ResultSet rs=st.executeQuery(query);
				if (!rs.next())
				{
					query = "insert into tb_user (user_id,f_name,m_name,l_name,login_id,password,mob_num,email,dob,gender,status) values ('"+user_id+"','"+f_name+"','"+m_name+"','"+l_name+"','"+user_id+"','"+password+"','"+mobile_number+"','"+email_id+"','"+dob+"','"+gender+"',1)";
					st.execute(query);
					message = "User added successfully";
					request.setAttribute("message", message);
					request.getRequestDispatcher("pages/AddUser.jsp").forward(request, response);
					con.close();
				}
				else
				{
					message = "User Id already taken";
					request.setAttribute("message", message);
					request.getRequestDispatcher("pages/AddUser.jsp").forward(request, response);
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