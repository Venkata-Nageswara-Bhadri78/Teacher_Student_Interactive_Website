import java.sql.*;
import javax.servlet.*;
import java.io.*;
import javax.servlet.http.*; // Import HttpServlet classes

public class JavaCode extends GenericServlet{
	
	private final String url = "jdbc:mysql://localhost:3306/CollegeWebsite_LogInDetails";
	private final String username = "root";
	private final String password = "root";
	
	public void service(ServletRequest request, ServletResponse response){
		
		try{
			PrintWriter out = response.getWriter();
			
			String userName = request.getParameter("username");
			String userPassword = request.getParameter("pass");
			String userType = request.getParameter("userType");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn = DriverManager.getConnection(url, username, password);
			String query;
			if(userType.equals("TEACHER")){
				query = "select * from teacherLogIn where email = ? and password=?;";
			}
			else{
				query = "select * from StudentLogin where email = ? and password=?;";
			}
			PreparedStatement state = conn.prepareStatement(query);
			state.setString(1, userName);
			state.setString(2, userPassword);
			ResultSet set = state.executeQuery();
			if(set.next()){
				out.println("LogIn Sucessfull");
				HttpServletResponse httpResponse = (HttpServletResponse) response;
				httpResponse.sendRedirect("Main.jsp");
			}
			else{
				out.println("Invalid Credential");
			}
		}
		catch(Exception e){
			System.out.println("Issue : "+ e);
		}
	}
}