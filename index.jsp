<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.label{
color:#800000;
font-weight:bold;
font-family:arial;
}
h1{
color:black;
font-weight:bold;
font-size:25px;
text-decoration:underline;
}
a{
	font-size:20px;
}
p{
font-weight:bold;
font-family:Tahoma Sans-Serif Geneva;
line-height:60px;
border-radius:10px;
}
#check{
width:200px;
height:20px:
moz-border-radius:15px;
-webkit-border-radius:20px;
border: 2px solid green;
padding:2px;
}
nav {    
  display: block;
  text-align: center;
}
nav ul {
  margin: 0;
  padding:0;
  list-style: none;
}
.nav a {
  display:block; 
  background: #111; 
  color: #fff; 
  text-decoration: none;
  padding: 0.8em 1.8em;
  text-transform: uppercase;
  font-size: 80%;
  letter-spacing: 2px;
  text-shadow: 0 -1px 0 #000;
  position: relative;
}
.nav{  
  vertical-align: top; 
  display: inline-block;
  box-shadow: 
    1px -1px -1px 1px #000, 
    -1px 1px -1px 1px #fff, 
    0 0 6px 3px #fff;
  border-radius:6px;
}
.nav li {
  position: relative;
}
.nav > li { 
  float: left; 
  border-bottom: 4px #aaa solid; 
  margin-right: 1px; 
} 
.nav > li > a { 
  margin-bottom: 1px;
  box-shadow: inset 0 2em .33em -0.5em #555; 
}
.nav > li:hover, 
.nav > li:hover > a { 
  border-bottom-color: orange;
}
.nav li:hover > a { 
  color:orange; 
}
.nav > li:first-child { 
  border-radius: 4px 0 0 4px;
} 
.nav > li:first-child > a { 
  border-radius: 4px 0 0 0;
}
.nav > li:last-child { 
  border-radius: 0 0 4px 0; 
  margin-right: 0;
} 
.nav > li:last-child > a { 
  border-radius: 0 4px 0 0;
}
.nav li li a { 
  margin-top: 1px;
}
.nav li a:first-child:nth-last-child(2):before { 
  content: ""; 
  position: absolute; 
  height: 0; 
  width: 0; 
  border: 5px solid transparent; 
  top: 50% ;
  right:5px;  
 }
.nav ul {
  position: absolute;
  white-space: nowrap;
  border-bottom: 5px solid  orange;
  z-index: 1;
  left: -99999em;
}
.nav > li:hover > ul {
  left: auto;
  margin-top: 5px;
  min-width: 100%;
}
.nav > li li:hover > ul { 
  left: 100%;
  margin-left: 1px;
  top: -1px;
}
/* arrow hover styling */
.nav > li > a:first-child:nth-last-child(2):before { 
  border-top-color: #aaa; 
}
.nav > li:hover > a:first-child:nth-last-child(2):before {
  border: 5px solid transparent; 
  border-bottom-color: orange; 
  margin-top:-5px
}
.nav li li > a:first-child:nth-last-child(2):before {  
  border-left-color: #aaa; 
  margin-top: -5px
}
.nav li li:hover > a:first-child:nth-last-child(2):before {
  border: 5px solid transparent; 
  border-right-color: orange;
  right: 10px; 
}
#header {
position:fixed;
top:0px;
left:0px;
width:100%;
color:#00FFFF;
background:#333;
padding:15px;
font-weight:bold;
font-size:40px;
}

</style>
</head><body background="shop.jpg">
<script type="text/javascript">
function validate()
{
if(document.form1.uname.value==="")
{
alert("Please enter your username");
return false;
}
if(document.form1.pwd.value==="")
{
alert("Enter the password");
return false;
}

else            
{
alert("Login successfully");
return true;
}
}</script>
<div id="header">
My Lil Collection</div><br><br><br><br>
<nav>
  <ul class="nav">
    <li><a href="#">About</a></li>
    <li><a href="#">Electronics</a>
      <ul>
        <li><a href="#">Mobile</a></li>
        <li><a href="#">TV</a></li>
        <li><a href="#">Laptop</a></li>
        <li><a href="#">Mobile Accessories</a></li>
      </ul>
    </li>
    <li><a href="#">Appliances</a>
      <ul>
        <li><a href="#">Home Entertainment</a></li>
        <li><a href="#">Kitchen Appliances</a>
          <ul>
            <li><a href="#">Microwave Ovens</a></li>
            <li><a href="#">Mixer/Juicer/Grinder</a></li>
            <li><a href="#">Coffee Makers</a></li>
            <li><a href="#">Popup Toastes</a></li>
          </ul>
        </li>
        <li><a href="#">Refrigerator</a></li>
        <li><a href="#">Washing Machine</a></li>
      </ul>
    </li>
    <li><a href="#">Men</a></li>
    <li><a href="#">Women</a>
      <ul>
        <li><a href="#">Foot Wear</a></li>
        <li><a href="#">Clothing</a></li>
        <li><a href="#">Watches</a></li>
        <li><a href="#">Accessories</a></li>
      </ul>
    </li>
    <li><a href="#">Contact</a></li>
  </ul>
</nav>
<br><br>
<center>
<form class="label" method="post" name="form1" onsubmit="return validate()" action="loginsuccess.jsp"><br><br><br><br>
<h1>LOGIN FORM</h1><br><br>
<label>USERNAME:</label>
<input type="text" name="uname"><br><br><br>

<label>PASSWORD:</label>
<input type="password" name="pwd"><br><br>
<input type="submit" value="SUBMIT">
<br><br><br><br><div id="check">
New User..<a href="register.jsp">Click Here </a></div></form></center>



</body>
</html>