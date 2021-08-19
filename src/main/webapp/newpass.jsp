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
</head>
<body>
    <div class="grid-forgotpass">
        <div class="top">
            <h2>M</h2>
        </div>
        <div class="bnk">
            <a href="login.jsp"><button class="banking-btn">Back</button></a>
        </div>
        <div class="p-recover">
            <div class="fp-form"><br>
            <h3>Account Recovery</h3><br><br>
            <h4>Create new password</h4><br>
            <form class="details" name = "signup" method="POST" action="forget.jsp">
                <input type = "password" name="password" placeholder="Password" required="required" class="email1"/>
                <br><br><br>
                <input type = "password" name="confirm password" placeholder="Confirm" required="required" class="email1"/>
                <br><br><br>
                <input type = "submit" value="Submit" class="submit-btn"/>
            </form>
            </div>
        </div>
    </div>
</body>
</html>