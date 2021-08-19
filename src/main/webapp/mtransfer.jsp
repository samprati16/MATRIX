<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.io.*"%>
<%
String acc_no=request.getParameter("acc-no");
String b_accno=request.getParameter("b-accno"); 
int amt=Integer.parseInt(request.getParameter("amt"));
Connection conn=null;
ResultSet rs = null;
Class.forName("com.mysql.cj.jdbc.Driver");
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg", "root", "");
HttpSession session1 = request.getSession();

int balance = Integer.parseInt(session.getAttribute("balance").toString());
String account = (String)session1.getAttribute("account");
String id = (String)session1.getAttribute("id");
String sender_email = (String)session1.getAttribute("email");
String debite ="debit";
String credit = "credit";
Statement st= conn.createStatement();
if(acc_no.equals(account))
{
		if (acc_no.equals(b_accno))
		{
			%>
			<script>
			  alert("Write Beneficiary Account Number!!!");
			  history.back();
			</script><% 	
		}else
		{
			if(amt<balance)
			{
				String sql = "select Balance,Email from register where Account = '"+b_accno+"' ";
				rs= st.executeQuery(sql);
					if(rs.next())
					{
					int b = rs.getInt(1);
					String rec_email =rs.getString(2); 
					balance = balance- amt;
					String sql1 = " Update register set Balance = "+balance+"  where Account = '"+account+"'  ";
					int i =st.executeUpdate(sql1);
					
					String sql3 =" insert into debit (Action,Sender_AC,Receiver_AC,Amount) values('"+debite+"','"+account+"','"+b_accno+"',"+amt+" ) ";
					st.executeUpdate(sql3);
					
					b = b+amt;
					String sql2 = " Update register set Balance = "+b+"  where Account = '"+b_accno+"' ";
					st.executeUpdate(sql2);
					
					String sql4 =" insert into credit(Action,Sender_AC,Receiver_AC,Amount) values('"+credit+"','"+account+"','"+b_accno+"',"+amt+" ) ";
					st.executeUpdate(sql4);
					
							   session1.setAttribute("balance", balance);
				        
								if(id.equals("personal"))
								{
									%>
									<script>
									  alert("Transaction Successful!!");
									  window.location = 'ptransfer.jsp';
									</script><% 
								}else if (id.equals("business"))
								{
									%>
									<script>
									  alert("Transaction Successful!!");
									  window.location = 'b-transfer.jsp';
									</script><% 
								}
					}else
					{
						%>
						<script>
						  alert("Beneficiary Account does not exist");
						  history.back();
						</script><% 
					}
				
			}
			else
			{
				st.close();
				conn.close();
				%>
				<script>
				  alert("Insufficient Balance!!");
				  history.back();
				</script><% 
			}
		}
}
else
{
	%>
	<script>
	  alert("Invalid Account Number!!");
	  history.back();
	</script><%
	
}
 %>