<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<% 
		String id=request.getParameter("username");
		String pwd=request.getParameter("password"); 
		String name=request.getParameter("name");
		String age=request.getParameter("age");
		String number=request.getParameter("phon_no");
		String adress=request.getParameter("address");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak","root","root");
		Statement stmt=con.createStatement();
		String sqlstmt="select id,pwd from customerdetails where id='"+id+"' and pwd='"+pwd+"';";
		ResultSet rs=stmt.executeQuery(sqlstmt);
		int flag=0; 
		while(rs.next())
		{
		flag=1;
		}
		if(flag==0)
		{
			PreparedStatement stmt1=con.prepareStatement("insert into details values(?,?,?,?,?,?)");  
			stmt1.setString(1,id);
			stmt1.setString(2,pwd);
			stmt1.setString(3,name);
			stmt1.setString(4,age);
			stmt1.setString(5,number);  
			stmt1.setString(6,adress);
			int i=stmt1.executeUpdate();  
			RequestDispatcher requestDispatcher;
	        requestDispatcher=request.getRequestDispatcher("login.html");
	        requestDispatcher.forward(request, response);
		}
			
		else
		{	
			out.println("SORRY INVALID ID TRY AGAIN ID");
			
		}
		
		
		
%>