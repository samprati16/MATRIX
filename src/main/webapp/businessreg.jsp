<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BUSINESS ACCOUNT REGISTER</title>
    <link rel="stylesheet" href="index.css">
        <script src="https://kit.fontawesome.com/108191d04d.js" crossorigin="anonymous"></script>
    
</head>
<body>
    <div class="grid-login">
        <div class="top">
            <a href="index.html"><button class="banking-btnp"><i class="fas fa-chevron-left"></i></button></a>
        </div>
        <div class="bnk">
            <h2>M</h2>
        </div>
        <div class="cover-pic">
            <img src="b-reg.png" alt="">
        </div>
        <div class="login">
            <h3>Create Account</h3><br>
            <form class="details" name = "signup" method="POST" action="insertData1.jsp">
                <input type = "text" name="fname" placeholder="Name of Organization" required="required" class="org"/> <br>
                <br>

                <input type = "text" name="address" placeholder="Full Address" required="required" class="addr"/><br>
                <br>

                <input type = "text" name="number" placeholder="Phone number" maxlength="10" pattern="[6789][0-9]{9}" required="required" class="phno"/><br>
                <br>
    
                <input type = "email" name="email" placeholder="Email" required="required" class="eml"/><br>
                <br>
    
                <input type = "password" name="pwd" placeholder="Password" required="required" class="pwrd" title="At least 8 characters with one lowercase, one uppercase, one number" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"/>
                <br> <br>
    
                <input type = "password" name="cpwd" placeholder="Confirm" required="required"  class="cfpwrd"/> <br>
                <br>
                
                <input type="checkbox" title="Please accept terms and conditions" required>
                <label for="tnc" class="tnc1">I accept the <a href="btnc.jsp">Terms and Conditions</a></label><br> <br>
    
                <ul class="btns">
                    <li>
                        <input type = "submit" value="Signup" class="login-bt"/>
                    </li>
                    <li>
                        <input type = "reset" value="Reset" class="login-bt"/>
                    </li>
                </ul>
        </form>
        </div>
    </div>
</body>
</html>