<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="../Images/favicon.ico" type="image/x-icon">
  <title>Login | Food Cuisine</title>
  <link rel='stylesheet' href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'>
  <link rel="stylesheet" href="../Styles/style.css">
  <!-- Add SweetAlert2 Stylesheet in the head -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">

  
  
  
</head>
<% 
    String loginMessage = (String) request.getAttribute("loginMessage");
    if (loginMessage != null) {
%>
    <script>
        alert("<%= loginMessage %>");
    </script>
<% 
    }
%>





<body style="background-image: url(../Images/Back.jpg) ">
    <!-- Custom Alert Box -->
<div id="alertBox" class="custom-alert">
    <span id="alertMessage"></span>
    <button onclick="closeAlert()">Close</button>
</div>

 
<div class="container">
  <h3>Login</h3>
  
  <form action="/LoginUser" method="post">
    <div class="field email-field">
      <div class="input-field">
        <input type="email" placeholder="Enter your email" class="email" name="Useremail" required />
      </div>
      <span class="error email-error">
        <i class="bx bx-error-circle error-icon"></i>
        <p class="error-text">Please enter a valid email</p>
      </span>
    </div>
    <div class="field create-password">
      <div class="input-field">
        <input type="password" placeholder="Password" class="password" name="Userpassword" required />
        <i class="bx bx-hide show-hide"></i>
      </div>
      <span class="error password-error">
        <i class="bx bx-error-circle error-icon"></i>
        <p class="error-text">
          Please enter atleast 8 charatcer with number, symbol, small and
          capital letter.
        </p>
      </span>
    </div>
   
    <div class="links">
      <a class="forgot" href="/Dynamic/forgetpasswordotp.jsp">Forgot Password</a>
    </div>
    <div class="input-field button">
      <input type="submit" value="Login Now" />
    </div>
    <div class="link">
      <p>Don't have an Account?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="../Dynamic/signup.jsp">Signup</a></p>
      
    </div>

    <div class="line"></div>
    <!-- Other Login Options -->
    
    <div class="thirdLogin field google">
        <i class='bx bxl-google face-icon'></i>
       <span> <a href="#" class="text">Login with google </a></span>
    </div>

    
  </form>

</div>

 <script  src="../Js/login.js"></script>




</body>
</html>