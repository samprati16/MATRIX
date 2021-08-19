<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*,java.util.*"%>
<%HttpSession session1 = request.getSession();%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transactions</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://kit.fontawesome.com/108191d04d.js" crossorigin="anonymous"></script>
</head>
<body> 
    <div class="grid-btransactions">
        <div class="dlogo1">
            <h2>M</h2>
        </div>
        <div class="cd-data"><h3>Debit Data</h3>
            <table>
                <tr>
                	<th>Id</th>
                    <th>Sender</th>
                    <th>Receiver</th>
                    <th>Amount</th>
                    <th>Date & Time</th>
                </tr>
<%
try{
	
     
     Connection con =null;
    

     Class.forName("com.mysql.cj.jdbc.Driver");
     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personalreg","root","");
     Statement st= con.createStatement();
     String email = (String)session1.getAttribute("account");
     String q1 ="select Sender_AC,Receiver_AC,id,Amount,Time from debit where Sender_AC='"+email+"' ";
     ResultSet resultSet= st.executeQuery(q1);
while(resultSet.next()){
%>
        	<tr>
        	<td><%=resultSet.getString("id") %></td>
        	<td><%=resultSet.getString("Sender_AC") %></td>
        	<td><%=resultSet.getString("Receiver_AC") %></td>
        	<td><%=resultSet.getString("Amount") %></td>
        	<td><%=resultSet.getString("Time") %></td>
        	</tr>
        	<%
}
%>
</table>
        </div>
        <div class="t-head1">
            <h3>Transactions</h3>
        </div>
        
<div class="db-data"><h3>Credit Data</h3>
            <table>
                <tr>
                	<th>Id</th>
                    <th>Sender</th>
                    <th>Receiver</th>
                    <th>Amount</th>
                    <th>Date & Time</th>
                </tr>
<%String q2 ="select Sender_AC,Receiver_AC,id,Amount,Time from credit where Receiver_AC='"+email+"' ";
ResultSet resultSet1= st.executeQuery(q2);
while(resultSet1.next()){
%>
   	<tr>
   	<td><%=resultSet1.getString("id") %></td>
   	<td><%=resultSet1.getString("Sender_AC") %></td>
   	<td><%=resultSet1.getString("Receiver_AC") %></td>
   	<td><%=resultSet1.getString("Amount") %></td>
   	<td><%=resultSet1.getString("Time") %></td>
   	</tr>	
   	<%
}




con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        </div>
        <div class="logout11">
            <h4><a href="businessdash.jsp"><button class="b-tbtn"><i class="fas fa-chevron-left"></i></h4>
        </div>
    </div>
</body>
</html>