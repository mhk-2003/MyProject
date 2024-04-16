<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
#border{
    position:absolute;
    left:50px;
    top:20px;
    font-size: 10px;

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
input{
height:15%;width:220px;border-radius:5px;border:none;background-color:#A7E0EC; font-size:13px;color:black;margin:9px;
}
#click{
height:15%;width:220px;border-radius:5px;border:none;background-color:#0C46EC; font-size:13px;margin:9px;color:white;cursor:pointer;
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
 
 <h2 style="font-size:40px;">Sign in to</h2>
 <h4 style="position:absolute;top:50px;left:70px;">&nbspA&nbspN&nbspY&nbspP&nbspA&nbspY</h4>
 <p> If You not with ANYPAY. Join with Us</p><a href="register.jsp" style="text-decoration: none;font-weight: bold;"> Register Here </a>
</div>
 <img style="height:25%;width:25%;margin-top:200px;margin-left:480px;" src="./images/signup.png">
<div class="login-box" > 
    <h2> Sign in </h2>
    <input id="name" type="text" placeholder = "    Enter username or Email"> 
    <input id="password" type="password" placeholder = "    Enter Password">
    <a href="#" style="text-decoration: none;font-weight:bold;font-size:10px;margin-left:20px;color:#B4B6BD;">forgot password ?</a> 
    <button id="click" onclick="login()" > sign in </button>
    
</div>

<script src="./scripting/Login.js"></script>

</body>
         
</html>