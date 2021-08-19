<%@page import="java.sql.*,java.util.*,java.io.*"%>

<%
String type = "personal";
String first_name=request.getParameter("fname");
String last_name=request.getParameter("sname");
String email=request.getParameter("email");
String number=request.getParameter("mobileno");
String address=request.getParameter("address");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String password=request.getParameter("pwd");
String cpassword=request.getParameter("cpwd");
Connection conn=null;
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
		    String sql= "insert into register (Fname,Sname,Email,Number,Address,Gender,DOB,Password,Type) values (?,?,?,?,?,?,?,?,?)";
		    PreparedStatement st= conn.prepareStatement(sql);
		    st.setString(1,first_name);
		    st.setString(2,last_name);
		    st.setString(3,email);
		    st.setString(4,number);
		    st.setString(5,address);
		    st.setString(6,gender);
		    st.setString(7,dob);
		    st.setString(8,password);
		    st.setString(9,type);
		    int i=st.executeUpdate();
		    conn.close();
		    %>
			<script>
			  alert("Registration Successful");
			  window.location='login.jsp';
			</script><% 
		    
		}
		catch(Exception e)
		{
		    out.println(e);
		}
	}else
	{
		%>
		<script>
		  alert("Confirm Password incorrect");
		</script><% 
	}
}
else
{
	%>
	<script>
	  alert("Email already exists !");
	</script><% 	
}
%>
