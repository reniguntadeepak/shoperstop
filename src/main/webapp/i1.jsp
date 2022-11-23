<%@ page import = "java.io.*,java.util.*,java.sql.*"%>

<% 

		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deepak","root","root");
		File file=new File("C:\\Users\\renig\\OneDrive\\Desktop\\ShoppingStop\\e3.webp");
		FileInputStream fis = new FileInputStream(file);
		PreparedStatement ps=con.prepareStatement("insert into image_tb1(name,image) values(?,?)");
		ps.setString(1,"ZARA");
		ps.setBinaryStream(2,fis,(int)file.length());
		int rs=ps.executeUpdate();
		if(rs==0){
			out.println("image not inserted");
		}
		else{
			out.println("image inserted");
		}
		
		
%>