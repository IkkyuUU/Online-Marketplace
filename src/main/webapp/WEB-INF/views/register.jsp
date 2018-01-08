<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <head>
    <title>Registration</title>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script
       src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script
       src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript" src="../js/register.js" defer></script>

    <link rel="stylesheet"
	  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


    <style>
      html, body{
      height: 105%;
      width: 100%;
      /* border: 1px solid black; */
      background: linear-gradient(to top, #f2f6fb, #b3cae3);
      }
    </style>

  </head>
  <body>


    <div class="container">
      
      <div class="row ">
	<div class="col-lg-1  col-lg-offset-10 "><a href="login.html">Log In</a></div>
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
	  <span style="font-style: bold; font-size: large; ">Sign Up</span>
	</div>
      </div>
      
      <div class="row">
	<div class="col-lg-offset-5">

	  <form class="form-horizontal" action="RegisterProcess" method="post">

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="text" class="form-control" name="username" id="username" placeholder="UserName"  style="border-color: grey; background-color: white">
		<span width="5" name="usernameResult" id="usernameResult"></span>	  	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="password" class="form-control" name="password" id="password" placeholder="Password" style="border-color: grey; background-color: white">
		<span width="5" name="passwordResult" id="passwordResult"></span>	  	
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="password" class="form-control" name="passwordConfirm" id="passwordConfirm" placeholder="Confirm Password" style="border-color: grey; background-color: white">
	      </div>
	      <div class="col-lg-1">
		<span width="5" name="passwordConfirmResult" id="passwordConfirmResult"></span>	  	
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="text" class="form-control" name="firstname" id="firstname" placeholder="First Name" style="border-color: grey; background-color: white">
		<span width="5" name="firstnameResult" id="firstnameResult"></span>	  	
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="text" class="form-control" name="lastname" id="lastname" placeholder="Last Name" style="border-color: grey; background-color: white">
		<span width="5" name="lastnameResult" id="lastnameResult"></span>	  	
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="email" class="form-control" name="email" id="email" placeholder="Email" style="border-color: grey; background-color: white">
	      </div>
	      <div class="col-lg-5">
		<span width="5" name="emailResult" id="emailResult"></span>	  	
	      </div>
	    </div>
	    
	    <div class="form-group">
	      <div class="col-lg-5">
		<input type="text" class="form-control" name="address" id="address" placeholder="Address" style="border-color: grey; background-color: white">
		<span width="5" name="addressResult" id="addressResult"></span>	  	
	      </div>
	    </div>

	    <div class="form-group">
	      <div class="col-lg-offset-3 col-lg-5">
		<input type="submit" id="register" name="register" value="Sign Up">		
	      </div>
	    </div>
	  </form>

	  
	</div>
      </div>
    </div>
    
    
  </body>

</html>
