

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

/**
 * Servlet implementation class AddNewProject
 */
@WebServlet(description = "Add New User", urlPatterns = {"/AddNewProject"})
public class AddNewProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String project_name = request.getParameter("project_name").trim();
		String message = "";
		String query= "";
		if(project_name!="")
		{
		try
			{
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
		        Statement st=con.createStatement();
		        query="select * from tb_project where tb_project.project_name='"+project_name+"'";
		        ResultSet rs=st.executeQuery(query);
				if (!rs.next())
				{
					query = "insert into tb_project (project_name) values ('"+project_name+"')";
					st.execute(query);
					message = "Project added successfully";
					request.setAttribute("message", message);
					request.getRequestDispatcher("pages/AddProject.jsp").forward(request, response);
					con.close();
				}
				else
				{
					message = "Project Name already exists";
					request.setAttribute("message", message);
					request.getRequestDispatcher("pages/AddProject.jsp").forward(request, response);
					con.close();
				}
			}
			catch (Exception e) 
			{
				e.printStackTrace();
				System.err.println(e.getMessage());
			}
	}
	else
	{
		message = "Project Name Cannot be blank";
		request.setAttribute("message", message);
		request.getRequestDispatcher("pages/AddProject.jsp").forward(request, response);
		
	}
	}

}
