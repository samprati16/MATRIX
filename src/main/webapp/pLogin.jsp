<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id = "";
String name = "";
String account = "";
String oname = "";
String balance = "";
String e = "";
String number = "";
String address = "";
String dob = "";
String gender = "";
String time = "";
String type = "";
String email=request.getParameter("email");
String password=request.getParameter("pwd");
Connection con =null;
HttpSession sessions;

Class.forName("com.mysql.cj.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg","root","");
Statement st= con.createStatement();

String q1 ="select * from register where Email='"+email+"' AND Password='"+password+"'  ";
ResultSet rs= st.executeQuery(q1);

if(rs.next())
{
	id = rs.getString(11);
	e = rs.getString(4);
	name = rs.getString(2)+"  "+ rs.getString(3);
	account = rs.getString(1);
	oname = rs.getString(10);
	balance = rs.getString(12);
	number = rs.getString(5);
	address = rs.getString(6);
	dob = rs.getString(8);
	gender = rs.getString(7);
	time = rs.getString(13);
	type = rs.getString(11);
}
if(id.equals("personal"))
{

	sessions=request.getSession();
	sessions.setAttribute("id", id);
	sessions.setAttribute("email", e);
	sessions.setAttribute("name", name);
	sessions.setAttribute("account", account);
	sessions.setAttribute("balance", balance);
	sessions.setAttribute("number", number);
	sessions.setAttribute("address", address);
	sessions.setAttribute("dob", dob);
	sessions.setAttribute("gender", gender);
	sessions.setAttribute("time", time);
	sessions.setAttribute("type", type);
	%>
	<script type="text/javascript">
	alert("Personal login successful");
		window.location = 'personaldash.jsp';
   </script>
	<%

}
else if (id.equals("business")) {
   sessions=request.getSession();
   sessions.setAttribute("email", e);
   sessions.setAttribute("id", id);
   sessions.setAttribute("oname", oname);
	sessions.setAttribute("account", account);
	sessions.setAttribute("balance", balance);
	sessions.setAttribute("number", number);
	sessions.setAttribute("address", address);
	sessions.setAttribute("time", time);
	sessions.setAttribute("type", type);
%>
	<script type="text/javascript">
	alert("Business login successful");
		window.location = 'businessdash.jsp';
   </script>
	<%
		
}
else{

%>
	<script type="text/javascript">
	alert("login failed");
		window.location = 'login.jsp';
   </script>
	<%
}


con.close();


%>