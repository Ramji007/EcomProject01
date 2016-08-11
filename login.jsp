<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>ShoppingCartloginpage</title>
</head>
<body>
<form name="myForm" action="ShoppingServlet" method="post">
<div align="center">

	<label for ="username">UserName</label> &nbsp&nbsp
	<input type ="text" name="username" placeholder="name"><br><br>
    <label for="password">Password</label> &nbsp&nbsp&nbsp&nbsp
    <input type="password" name="password" placeholder="password"> <br><br>

	<input type="submit" value ="login">
	<input type="Reset" value="Reset"> <br><br>
	<a href="home.html">Signup</a>
	
</div>


</form>
</body>
</html>