<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ACCOUNT RECOVERY</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://kit.fontawesome.com/108191d04d.js" crossorigin="anonymous"></script>
</head>
<body>
    <div class="grid-forgotpass">
        <div class="top">
        	<a href="login.jsp"><button class="banking-btnp"><i class="fas fa-chevron-left"></i></button></a>
        </div>
        <div class="bnk">
            <h2>M</h2>
        </div>
        <div class="p-recover">
            <div class="fp-form"><br>
            <h3>Account Recovery</h3><br><br>
            <h4>Please enter your registered email id</h4><br>
            <form class="details" name = "signup" method="POST" action="forget.jsp" >
                <input type = "email" name="email" placeholder="Email" required="required" class="email1"/>
                <br><br><br>
               <input type = "password" name="password" placeholder="Password" required="required" class="email1" title="At least 8 characters with one lowercase, one uppercase, one number" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"/>
                <br><br><br>
                <input type = "password" name="cpassword" placeholder="Confirm" required="required" class="email1"/>
                <br><br><br>
                <input type = "submit" value="Submit" class="submit-btn"/>
            </form>
            </div>
        </div>
    </div>
</body>
</html>