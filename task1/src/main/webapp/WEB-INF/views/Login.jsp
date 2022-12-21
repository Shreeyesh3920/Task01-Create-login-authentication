<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<html>

     <head>
     <title>Login-Form</title>
   <link href='<c:url value="/resources/CSS/style.css" />' rel="stylesheet" />
    
  </head>

<body>
       <form method="post" action="loginprocess">
        <div class="container-parent">
            
      
        <h1>Login</h1>
        
        <label for="username"><b>Username</b></label>
        <input
          type="text"
          placeholder="Enter username"
          name="username"
          id="username"
          required
        />

    
        <label for="pwd"><b>Password</b></label>
        <input
          type="password"
          placeholder="Enter Password"
          name="pwd"
          id="pwd"
          required
        />

       

        <button type="submit">Login</button>
        <p>Don't have an account? <a href="register">Register Here</a>.</p>
      </div>
  
   
    </form>


</body>
</html>