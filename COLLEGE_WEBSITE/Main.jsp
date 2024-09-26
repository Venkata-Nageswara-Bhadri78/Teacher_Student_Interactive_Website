<jsp:include page="Head.html"/>
<jsp:include page="Body.html"/>
<html>
	<head>
		 <style>
			html{
				scroll-behavior: smooth;
			}
		 </style>
	</head>
<%@ page import="java.sql.*, java.io.*, javax.servlet.*, javax.servlet.http.*" %> 

<%
		String url = "jdbc:mysql://localhost:3306/CollegeWebsite_LogInDetails";
		String username = "root";
		String password = "root";
	
		try{
			//PrintWriter out = response.getWriter();
			
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

%>
<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CollegeWebsite_LogInDetails", "root", "root");
		String courses = "select * from coursesData;";
		PreparedStatement state = conn.prepareStatement(courses);
		ResultSet set = state.executeQuery();
%>
<table>
<%		while(set.next()){ %>
			<jsp:include page="Course.jsp">
				<jsp:param name="courseName" value="<%= set.getString(1) %>" />
				<jsp:param name="price" value="<%= set.getInt(2) %>" />
				<jsp:param name="author" value="<%= set.getString(3) %>" />
			</jsp:include>
			<br>
<%		}
	}
	catch(Exception e){
		System.out.println("Hai");
	}
%>
</table>
<jsp:include page="Footer.html"/>

</html>