<%@ page import="java.sql.*,java.util.*" %>
<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg","root","");
Statement st=con.createStatement();
String password=request.getParameter("pwd");
String cpassword=request.getParameter("cpwd");
String sess=(String)session.getAttribute("account");

if(password.equals(cpassword))
{
	String strUpdate = "UPDATE TABLE register SET  Password='"+password+"'  where Account='"+sess+"'";
	int i = st.executeUpdate(strUpdate);
	
	if(i>0)
	{
		%>
		<script>
		  alert("Password Change Successfully\n Required to logout");
		  window.location = 'logout.jsp';
		</script><% 
	}
}
else
{
	%>
	<script>
	  alert("Check Your Confirm Password!!!");
	  history.back();
	</script><% 
}
}
catch (Exception e){
e.printStackTrace();
}
%>