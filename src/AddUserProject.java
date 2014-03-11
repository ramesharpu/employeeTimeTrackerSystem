

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddUserProject
 */
@WebServlet(description = "Add User to Project", urlPatterns = { "/AddUserProject" })
public class AddUserProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUserProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String add_user_id = request.getParameter("add_user_id").trim();
		String add_project_id = request.getParameter("add_project_id").trim();
		String add_role_id = request.getParameter("add_role_id").trim();
		String role_id="";
		String message = "";
		String query= "";
		try
			{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
		        Statement st=con.createStatement();
		        query="insert into tb_user_project (user_id, role_id, project_id) select '"+add_user_id+"', tb_role.role_id, tb_project.project_id from tb_role,tb_project where role_name = '"+add_role_id+"' and project_name='"+add_project_id+"'";
		        st.execute(query);
		        con.close();
		        message = "User added to the project successfully";
				request.setAttribute("message", message);
				request.getRequestDispatcher("pages/AddUserToProject.jsp").forward(request, response);
		        	        
				/*if (!rs.next())
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
				}*/
			}
			catch(SQLException se){
				message = "User is already associated with this project";
				request.setAttribute("message", message);
				request.getRequestDispatcher("pages/AddUserToProject.jsp").forward(request, response);				
			}
			catch (Exception e) 
			{
				e.printStackTrace();
				System.err.println(e.getMessage());
			}
	}
		
	}


