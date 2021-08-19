<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<script>
function logout() 
{
    var r = confirm("Are you sure to logout !");
    if (r == true) {
    	<%
    	 HttpSession session1=request.getSession();                      
    	   session1.invalidate();   	        
    	%>
    	 window.location = 'login.jsp';
    }
    else {
        txt = " ";
    }
}
</script>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body onload = "logout()">


</body>
</html>