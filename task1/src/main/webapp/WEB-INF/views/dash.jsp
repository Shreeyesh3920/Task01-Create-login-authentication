<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<html>
<head>
     <head>
<link href='<c:url value="/resources/CSS/style.css" />' rel="stylesheet" />
    <title>DashBoard</title>
  </head>
</head>
<body>

	
    <div class="container-dash" style="margin-left:32px;">
    <h3>  Welcome <b  style="color:red;">${username }</b> to the Dash-Board!</h3>
      </div>
</body>
</html>