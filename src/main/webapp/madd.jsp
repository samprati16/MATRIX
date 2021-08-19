<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.io.*"%>
 <%
    HttpSession session1 = request.getSession();
	String acc_no=request.getParameter("acc-no");
	int amt=Integer.parseInt(request.getParameter("amt"));
	Connection conn=null;
	ResultSet rs = null;
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg", "root", "");
	
	
	int balance = Integer.parseInt(session.getAttribute("balance").toString());
	String sender_email = (String)session1.getAttribute("email");
	String account = (String)session1.getAttribute("account");
	String type = (String)session1.getAttribute("id");
	String addm ="add money";
	Statement st= conn.createStatement();
		if (acc_no.equals(account))
		{
			balance = balance +amt;
			String sql1 = " Update register set Balance = "+balance+"  where Account = '"+account+"'  ";
			int i =st.executeUpdate(sql1);
			
			String sql3 =" insert into credit(Action,Sender_AC,Receiver_AC,Amount) values('"+addm+"','"+account+"','"+account+"',"+amt+" ) ";
			st.executeUpdate(sql3);
			
			
			 session1.setAttribute("balance", balance);
			 if(type.equals("personal"))
			 {
			%>
			<script>
			  alert("Transaction Successful!!");
			  window.location = 'paddmoney.jsp';
			</script><% 
			 }else
			 {
				 %> <script>
				  alert("Transaction Successful!");
				  window.location = 'b-addmoney.jsp';
				</script><% 
			 }
			
		}
		else
		{
			 if(type.equals("personal"))
			 {
			%>
			<script>
			  alert("Transaction Successful!!");
			  window.location = 'paddmoney.jsp';
			</script><% 
			 }else
			 {
				 %> <script>
				  alert("Transaction Successful!!");
				  window.location = 'b-addmoney.jsp';
				</script><% 
			 }
		}
%>