<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<% 
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd"); 
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak","root","root");
		Statement stmt=con.createStatement();
		String sqlstmt="select id,pwd from details where id='"+id+"' and pwd='"+pwd+"';";
		out.println(sqlstmt);
		ResultSet rs=stmt.executeQuery(sqlstmt);
		int flag=0; 
		while(rs.next())
		{
		flag=1;
		}
		if(flag==0)
		{
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("signin.html");
			dispatcher.forward(request, response);
		}
		else
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("catalog.html");
			dispatcher.forward(request, response);
		}
		
%>