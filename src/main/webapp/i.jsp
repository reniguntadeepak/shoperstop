<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<% 
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak","root","root");
		Statement stmt=con.createStatement();
		File file=new File("C:\\Users\\renig\\OneDrive\\Desktop\\ShoppingStop\\u2.jpg");
		//FileOutputStream fos = new FileOutputStream(file);
		String sqlstmt="select * from image_tb1;";
		ResultSet rs=stmt.executeQuery(sqlstmt);
		ServletOutputStream sos=response.getOutputStream();

		while(rs.next()) {
		    byte[] buffer=new byte[1];

		    InputStream is=rs.getBinaryStream(2);
		    while(is.read(buffer)>0){
		      sos.write(buffer);
		}
		sos.println();
		sos.flush();
		}
		
		
		
%>