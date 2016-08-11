<!doctype html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Bootstrap web page</title>
 </head>
 <body>
 
 <img src="E:\images\sportsstadium.jpg" class="img-rounded" alt="stadium" width="1400" height="236"> <br><br>
  
  <form action="home.jsp" class="form-inline" role="form">
  <center>
  <div class="form-group" >
    <label for="username">UserName:</label>
    <input type="name" class="form-control" id="username">
  </div> <br><br>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="password">
  </div> <br><br>
  <div class="checkbox">
    <label><input type="checkbox">Remember me</label>
  </div> <br><br>
  <button type="submit" class="btn btn-default">login</button>
  <button type="Reset" class="btn btn-default">Reset</button> <br><br>
	<a href="register.jsp">Sign up</a>
  </center>
</form>
 </body>
</html>
