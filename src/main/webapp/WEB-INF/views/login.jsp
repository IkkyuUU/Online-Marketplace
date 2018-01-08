<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Login</title>
    <style>
      html, body{
      height: 100%;
      width: 100%;
      /* border: 1px solid black; */
      background: linear-gradient(to top, #f2f6fb, #b3cae3);
      }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script
       src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
       src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <style>
  </style>

  <body>

    <div class="container">
      
      <div class="row ">
	<div class="col-lg-1  col-lg-offset-10 "><a href="register.html">Sign Up</a></div>
	<div class="col-lg-1">
	  <img id="userphoto" alt="" src="../images/ProjectDepotLogo.png"
	       class="img-circle" style="height: 60px; width: 60px;" />
	</div>
      </div>

      <div class="row">
	<div class="col-lg-offset-5">
	  <img id="logo" alt="" src="../images/Logo copy.png"
	       class="img-rounded" style="height: 300px; width: 300px;" />
	</div>
      </div>
      
      <div class="row">
	<div class="col-lg-offset-6">
	  <span style="font-style: bold; font-size: large; ">${response}</span>
	</div>
      </div>

      <div class="row">
	<div class="col-lg-offset-6">
	  <span style="font-style: bold; font-size: large; ">Log In</span>
	</div>
      </div>
      
      <div class="row">
	<div class="col-lg-offset-5">

	  <form class="form-horizontal" action="LoginProcess">

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="text" name="usernameOrEmail" id="usernameOrEmail" class="form-control"  placeholder="UserName or Email" style="border-color: grey; background-color: white">
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="password" name="password" id="password" class="form-control" placeholder="Password" style="border-color: grey; background-color: white">
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-offset-3 col-lg-5">
		<input type="submit" id="login" name="login" value="Log In">
	      </div>
	    </div>

	  </form>

	  	  
	</div>
      </div>
    </div>
    
    
  </body>

</html>
