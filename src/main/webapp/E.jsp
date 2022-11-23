<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd"); 
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
		
	}
	else
	{
		out.println("move to catalog");
	} %>
</body>
</html>