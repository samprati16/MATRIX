<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Registration</title>
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
            <img src="p-reg.gif">
        </div>
        <div class="login">
            <h4>Create Account</h4><br>
            <form class="details" name = "signup" method="POST" action="insertData.jsp">
                <input type = "text" name="fname" placeholder="First name" required="required" class="fn"/>

                <input type = "text" name="sname" placeholder="Last name" required="required" class="sn" />
                <br> <br>

                <input type = "email" name="email" placeholder="Email" required="required" class="em"/>
                <br> <br>

                <input type = "text" name="mobileno" placeholder="Mobile number" maxlength="10" pattern="[6789][0-9]{9}" required="required" class="mob"/>
                <br> <br>
    
                <input type = "text" name="address" placeholder="Full Address" required="required" class="add"/>
                <br> <br>
                
                <select name="gender" class="gd" required>
                    <option value="">Gender</option> 
                    <option value="other">Male</option>
                    <option value="female">Female</option>
                    <option value="male">Other</option>
                  </select>            
  
                <input type = "date" name="dob" placeholder="DOB" required="required" class="dob"  min="1970-01-01" max="2050-01-01"/>
                <br> <br>

                <input type = "password" name="pwd" placeholder="Password" required="required" class="pwd" title="At least 8 characters with one lowercase, one uppercase, one number" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"/> 
                <br> <br>
                
                <input type = "password" name="cpwd" placeholder="Confirm "required="required"  class="cfpwd"/> 
                <br> <br>
                
                <input type="checkbox" title="Please accept terms and conditions" required>
                <label for="tnc" class="tnc">I accept the <a href="ptnc.jsp">Terms and Conditions</a></label><br> <br>
    
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