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
    <div class="grid-bdetails">
        <div class="det-logo">
            <h2>M</h2>
        </div>
        <div class="x1"><h2>Dashboard</h2></div>
        <div class="x2"><a href="businessdash.jsp"><h3><i class="fas fa-home"></i> Home</h3></a></div>
        <div class="x3"><a href="b-transfer.jsp"><h3><i class="fas fa-random"></i> Fund Transfer</h3></a></div>
        <div class="x4"><a href="b-addmoney.jsp"><h3><i class="fas fa-rupee-sign" id="r-icon"></i> Add Money</h3></a></div>
        <div class="x5"><a href="demo1.jsp"><h4><i class="far fa-list-alt"></i> Transaction</h4></a></div>
        <div class="x6"><a href="bdetails.jsp"><h4><i class="fas fa-user"></i> Account Details</h4></a></div>
        <div class="x7">
            <h3>Account Details</h3>
        </div>
        <div class="bacc-details">
            <ul class="bacc-val1">
                <li><h2>Name</h2></li>
                <li><h3>Email</h3></li>
                <li><h3>Account No</h3></li>
                <li><h3>Address</h3></li>
                <li><h3>Phone no</h3></li>
                <li><h3>Account Type</h3></li>
            </ul>

            <ul class="bacc-val2">
                <li><h2><%=session1.getAttribute("oname")%></h2></li>
                <li><h3><%=session1.getAttribute("email")%></h3></li>
                <li><h3><%=session1.getAttribute("account")%></h3></li>
                <li><h3><%=session1.getAttribute("address")%></h3></li>
                <li><h3><%=session1.getAttribute("number")%></h3></li>
                <li><h3><%=session1.getAttribute("type")%></h3></li>
            </ul>
        </div>
        <div class="det-logout">
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