import java.sql.*;
import javax.servlet.*;
import java.io.*;

public class RegisterJavaCode extends GenericServlet{
	
	private static final String url = "jdbc:mysql://localhost:3306/CollegeWebsite_LogInDetails";
	private static final String username = "root";
	private static final String password = "root";
	
	public void service(ServletRequest request, ServletResponse response){
		
		try{
			PrintWriter out = response.getWriter();
			String userDesignation = request.getParameter("usertype");
			String fullname = request.getParameter("full_name");
			String email = request.getParameter("eemail");
			String userpassword = request.getParameter("pass");

			String mobileNumber = request.getParameter("mobileNumber");
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, username, password);
			String query;
			if(userDesignation.equals("TEACHER")){
				query = "insert into teacherLogIn values(null, ?, ?, ?, ?)";
			}
			else{
				query = "insert into studentLogIn values(null, ?, ?, ?, ?)";
			}
			PreparedStatement state = conn.prepareStatement(query);
			
			state.setString(1, fullname);
			state.setString(2, email);
			state.setString(3, userpassword);
			state.setString(4, mobileNumber);
			state.executeUpdate();
			out.println("Register Sucessful");
		}
		catch(Exception e){
			System.out.println("Issue : "+e);
		}
	}
}