<%@ page import="java.sql.*,java.util.*" %>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg","root","");
Statement st=con.createStatement();
String email=request.getParameter("email");
String password=request.getParameter("password");
String cpassword=request.getParameter("cpassword");
String strQuery = "SELECT Email FROM register where Email='"+email+"'";
ResultSet sr = st.executeQuery(strQuery);

if(rs.next())
{
	String Countrow = rs.getString(1);
	if(password.equals(cpassword))
	{
		String strUpdate = "UPDATE  register update  Password='"+password+"'  where Email='"+email+"'";
		int i = st.executeUpdate(strUpdate);
		
		if(i>0)
		{
			%>
			<script>
			  alert("Password Changed Successfully");
			  window.location = 'login.jsp';
			</script><% 
		}
	}
	else
	{
		%>
		<script>
		  alert("Incorrect Password!!!");
		  history.back();
		</script><% 
	}

}
else{
	%>
	<script>
	  alert("Write Your Registered Email !!!");
	  history.back();
	</script><% 
}
}
catch (Exception e){
e.printStackTrace();
}
%>


