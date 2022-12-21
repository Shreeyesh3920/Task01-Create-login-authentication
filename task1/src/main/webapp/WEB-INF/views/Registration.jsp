<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
     <head>

   <script  src='<c:url value="/resources/JAVASCRIPT/validate.js"/>' type="text/javascript"></script> 
  <link href='<c:url value="/resources/CSS/style.css" />' rel="stylesheet" />
    <title>Registration-Form</title>
  </head>
</head>
<body>
       <form method="post" action="registerprocess" onsubmit="return validateform()">
        <div class="container-parent">
            
      
        <h1>Registration Form</h1>
      
        <p>Kindly fill in this form to Register.</p>
        <label for="username"><b>Username</b></label>
        <input
          type="text"
          placeholder="Enter username"
          name="name"
          id="username"
          
        />

        <label for="email"><b>Email</b></label>
        <input
          type="text"
          placeholder="Enter Email"
          name="email"
          id="email"
          
        />

        <label for="pwd"><b>Password</b></label>
        <input
          type="password"
          placeholder="Enter Password"
          name="pwd"
          id="pwd"
          
        />

        <label for="pwd-repeat"><b>Repeat Password</b></label>
        <input
          type="password"
          placeholder="Repeat Password"
          name="pwdR"
          id="pwd-repeat"
         
        />

        <button type="submit">Register</button>
        <p>Already have an account? <a href="login">Log in</a>.</p>
      </div>
  
   
    </form>


</body>
</html>