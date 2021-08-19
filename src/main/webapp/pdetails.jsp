<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%HttpSession session1 =request.getSession(); %>
        <%
     if(session1.getAttribute("account")!=null){%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account details</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://kit.fontawesome.com/108191d04d.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="grid-dashboard">
        <div class="dlogo">
            <h2>M</h2>
        </div>
        <div class="b1"><h2>Dashboard</h2></div>
        <div class="home"><a href="personaldash.jsp"><h3><i class="fas fa-home"></i> Home</h3></a></div>
        <div class="ptransfer"><a href="ptransfer.jsp"><h3><i class="fas fa-random"></i> Fund Transfer</h3></a></div>
        <div class="b2"><a href="paddmoney.jsp"><h3><i class="fas fa-rupee-sign" id="r-icon"></i> Add Money</h3></a>
            <br><br>
        </div>
        <div class="b3"><a href="demo.jsp"><h4><i class="fas fa-list-alt"></i> Transactions</h4></a></div>
        <div class="b4"><a href="pdetails.jsp"><h4><i class="fas fa-user"></i> Account Details</h4></a></div>
        <div class="dbname1">
            <h3>Account Details</h3>
        </div>
        <div class="pname"><h2><%=session1.getAttribute("name")%></h2></div>
        <div class="pacc-number"><h2>Account Number</h2><span id="value"><h3><%=session1.getAttribute("account")%></h3></span></div>
        <div class="b-5"><h2>Mobile No.</h2><span id="value9"><h3><%=session1.getAttribute("number")%></h3></span></div>
        <div class="b-6"><h4>Email</h4><span id="yemail"><h3><%=session1.getAttribute("email")%></h3></div>
        <div class="b-7"><span class="pd1"><h2>Address</h2><span id="value12"><h3></i><%=session1.getAttribute("address")%></h3></span></span><h3></h3>
            <div class="ch1"><h3>Gender</h3><span id="gender"><h3><%=session1.getAttribute("gender")%></h3></span></div>
        </div>
        <div class="b-8"><span class="pd12"><h2>Account Type</h2><span id="value12"><h3><%=session1.getAttribute("type")%></h3></span></span>
            <div class="ch12"><h3>Date of Birth</h3><span id="pdob"><h3><%=session1.getAttribute("dob")%></h3></span></div>
        </div>
        <div class="logout1">
            <h4><a href="logout.jsp"><button class="plogout-btn"><i class="fas fa-sign-out-alt" id="signout"></i> Logout</button></a></h4>
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