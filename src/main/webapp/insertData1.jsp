<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>

<%
Connection conn =null;
String type ="business";
String Oname=request.getParameter("fname");
String email=request.getParameter("email");
String number=request.getParameter("number");
String address=request.getParameter("address");
String password=request.getParameter("pwd");
String cpassword=request.getParameter("cpwd");
Class.forName("com.mysql.cj.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg", "root", "");

String str="select COUNT(*) from register where Email = '"+email+"'  ";
PreparedStatement st1= conn.prepareStatement(str);
ResultSet rs = st1.executeQuery();
rs.next();

String Countrow = rs.getString(1);

if(Countrow.equals("0"))
{
	if(cpassword.equals(password))
	{
	try
	{
	String sql= "insert into register (Email,Number,Address,Password,Oname,Type) values (?,?,?,?,?,?)";
	PreparedStatement st= conn.prepareStatement(sql);
	st.setString(1,email);
	st.setString(2,number);
	st.setString(3,address);
	st.setString(4,password);
	st.setString(5,Oname);
	st.setString(6,type);
	int i=st.executeUpdate();
	 %>
		<script>
		  alert("Registration Successful");
		  window.location='login.jsp';
		</script><% 


	conn.close();
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}
	}
	else{
		%>
		<script>

		  alert("Confirm Password incorrect");

		</script><% 
		}
}
else{
	%>
	<script>
	  alert("Email already exists !");
	</script>
	<% 
   }
  %>
