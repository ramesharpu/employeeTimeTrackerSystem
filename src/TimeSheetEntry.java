

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

import org.apache.catalina.Session;

/**
 * Servlet implementation class TimeSheetEntry
 */
@WebServlet(description = "Edit User", urlPatterns = { "/TimeSheetEntry"})
public class TimeSheetEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeSheetEntry() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id = (String) request.getSession().getAttribute("user_id");
		String date []= request.getParameterValues("date[]");
		String project[] = request.getParameterValues("project[]");
		String activity[] = request.getParameterValues("activity[]");
		String hour[] = request.getParameterValues("hour[]");
		String min[] = request.getParameterValues("min[]");
		String comment[]= request.getParameterValues("comment[]");
		float time = 0;
		int hour1=0;
		float min1 = 0;
		String query = "";
	/*	for(int i=0;i<date.length;i++)
		{
			System.out.println(date[i]);
		}*/
		try
		{
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        Connection con=DriverManager.getConnection("jdbc:sqlserver://RAMESH-PC\\SQLSERVER;databaseName=db_emp_timetracker","dbuser","password");
	        Statement st=con.createStatement();
	        for(int i=0;i<date.length;i++)
	        {
	        	int x=Integer.parseInt(min[i]);
	        	if(min[i].equals("00"))
	        		min1=(float) 0;
	        	else if(min[i].equals("15"))
	        			min1=(float)0.25;
	        	else if(min[i].equals("30"))
	        			min1=(float)0.5;
	        	else
	        		min1=(float)0.75;
	        	time = Integer.parseInt(hour[i])+min1;
		        query = "insert into tb_time_sheet values('"+user_id+"', "+Integer.parseInt(project[i])+", "+Integer.parseInt(activity[i])+" , '"+date[i]+"', '"+time+"', '"+comment[i]+"')";
		        System.out.println(query);
		        st.execute(query);
	        }
			con.close();
			String message = "Timesheet updated successfully";
			request.setAttribute("message", message);
			request.getRequestDispatcher("pages/TimeSheet.jsp").forward(request,
					response);
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			System.err.println(e.getMessage());
		}
		
	}

}
