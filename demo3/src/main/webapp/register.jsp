<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://kit.fontawesome.com/3cbf1090e8.js" crossorigin="anonymous"></script>
<title> ANYPAY </title>
<style type="text/css">
#border{
    position:absolute;
    left:50px;
    top:20px;
    font-size: 10px;
}
ul {
  list-style-type: none;
  font-size:10px;
}
::placeholder {
  color: #0288A5;
  opacity: 1;
}
.side-view{
    position:absolute;
    top:150px;
    left: 180px;
    height : 400px;
    width: 30%;
}
.login-box{
   position:absolute;
   top:120px;
   right:250px;
   height : 50%;
   width : 10%;
}
input:focus,input:hover{
   border:none;
   background-color:#1DE3D4;
   font-size:13px;
   color:#41807B ;
}
#requirements-list{
	position:absolute;
	top:400px;
	right:90px;
	background-color:white;
	width:150px;
	heigth:80px;
	border-radius:5px;
	opacity:10px;
	display:none;
	box-shadow: 8px 5px 5px black;
}
input{
height:15%;width:220px;border-radius:5px;border:none;background-color:#A7E0EC; font-size:13px;color:black;margin:9px;
}
#click{
height:15%;width:220px;border-radius:5px;border:none;background-color:#0C46EC; font-size:13px;margin:9px;color:white;cursor:pointer;
}
#click:hover{
background-color:green;transition: 0.6s;
}
body{
 font-family: 'Muli',sans-serif;
 color:black;
}
</style>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="border">
      <h1 style="color:green;">A&nbspN&nbspY&nbspP&nbspA&nbspY </h1>
</div>
<div class="side-view">
 
 <h2 style="font-size:40px;">Sign up</h2>
 <h4 style="position:absolute;top:55px;left:50px;">&nbspA&nbspN&nbspY&nbspP&nbspA&nbspY</h4>
 <p> If You are with ANYPAY. Just go there</p><a href="index.jsp" style="text-decoration: none;font-weight: bold;"> Login Here </a>
</div>
 <img style="height:40%;width:40%;margin-top:200px;margin-left:400px;" src="./images/login-pic.png">
<div class="login-box" > 
    <h2> Sign up </h2>
    <input required id="email" type="email" placeholder = "    Enter Email">
    <input required id="name" type="text" placeholder = "    Enter name">  
    <input required id="username" type="text" placeholder = "    Enter Username"> 
    <input onfocus="passcheck()" id="password" type="password" placeholder = "    Enter Password">
    <input onfocus="confirm()" required id="cpd" type="password" placeholder = "    Confirm Password">
    <button onclick="confromvalidation()" id="click"> sign up </button>    
</div>
 <div id="requirements-list">
    <ul id="requirements">
      <li><i id="uppercase" class="far fa-check-circle"></i>&nbspUppercase</li>
      <li><i id="number" class="far fa-check-circle"></i>&nbspNumber</li>
      <li><i id="special" class="far fa-check-circle"></i>&nbspSpecial Characters</li>
      <li><i id="eight-chars" class="far fa-check-circle"></i>&nbsp6+ Characters</li>
    </ul>
  </div>
  </body>

<script src="./scripting/registerpage.js"></script>

</html>