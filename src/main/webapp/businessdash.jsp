<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%HttpSession session1= request.getSession(); %>
    <%
if(session1.getAttribute("account")!=null){
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DASHBOARD</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://kit.fontawesome.com/108191d04d.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <div class="grid-businessd">
        <div class="blogo">
            <h2>M</h2>
        </div>
        <div class="b12"><h2>Dashboard</h2></div>
        <div class="home2"><a href="businessdash.jsp"><h3><i class="fas fa-home"></i> Home</h3></a></div>
        <div class="transfer2"><a href="b-transfer.jsp"><h3><i class="fas fa-random"></i> Fund Transfer</h3></a></div>
        <div class="b22"><a href="b-addmoney.jsp"><h3><i class="fas fa-rupee-sign" id="r-icon"></i> Add Money</h3></a></div>
        <div class="b32"><a href="demo1.jsp"><h4><i class="far fa-list-alt"></i> Transaction</h4></a></div>
        <div class="b42"><a href="bdetails.jsp"><h4><i class="fas fa-user"></i> Account Details</h4></a></div>
        <div class="dbname">
            <h3>Overview</h3>
        </div>
        <div class="name1"><h2><%=session1.getAttribute("oname")%></h2></div>
        <div class="acc-number"><h2>Account Number</h2><span id="value"><h3><%=session1.getAttribute("account")%></h3></span></div>
        <div class="b5"><h4>Branch</h4><span id="value3"><h3>Indore</h3></span></div>
        <div class="c3"><h2>Account Type</h2><span id="value"><h3><%=session1.getAttribute("type")%></h3></span></div>
        <div class="b6"><h2>Balance</h2><span id="value"><h3><i class="fas fa-rupee-sign" id="r-icon">&nbsp;</i><%=session1.getAttribute("balance")%></h3></span></div>
        <div class="logout">
            <h4><a href="logout.jsp"><button class="logout-btn"><i class="fas fa-sign-out-alt" id="signout"></i> Logout</button></a></h4>
        </div>
    </div>
</body>
</html>
<%
}
else{
    response.sendRedirect("login.jsp");
}
%>