<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="index.css">
    <script src="https://kit.fontawesome.com/108191d04d.js" crossorigin="anonymous"></script>
    <script src="dark.js"></script>
</head>
<body class="light-theme">
    <div class="grid-banklogin">
        <div class="ltop">
            <a href="index.html"><button class="banking-btnl"><i class="fas fa-chevron-left"></i></button></a>
        </div>
        <div class="lbnk">
            <h2>M</h2>
        </div>
        <div class="lcover-pic">
            <img src="b-login.gif">
        </div>
        <div class="llogin" id="plogin">
            <h3>Welcome back </h3><br><br>
            <form class="details" name = "signup" method="POST" action="pLogin.jsp">
                <input type = "email" name="email" placeholder="Email" required="required" class="email" id="lemail"/>
                <br><br>
    
                <input type = "password" name="pwd" placeholder="Password" required="required" class="pswd" id="lpswd"/> <br>
                <br><br>
                <ul class="btns">
                    <li>
                        <input type = "submit" value="Login" class="llogin-bt"/>
                    </li>
                    <li>
                        <p><a href="forgotpass.jsp" class="fp">Forgot Password?</a></p>
                    </li>
                </ul>
                <br>
                <div class="create-acc">
                    <button class="accbtn">Create Account</button>
                    <div class="dropdown-details">
                      <a href="personalreg.jsp">Personal</a> <br>  <br>
                      <a href="businessreg.jsp">Business</a>
                    </div>
                </div>        
            </form>
            <h5 class="dark-mode"> <button onclick="darktheme()" class="toggle-btn" id="t-btn"><i class="fas fa-adjust">&nbsp;</i></button></h5>
        </div>
    </div>
</body>
</html>