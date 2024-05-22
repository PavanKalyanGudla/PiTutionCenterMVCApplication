<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PI Tution Center</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="favicon.ico " type="image/x-icon" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  /* default */
* {
  box-sizing: border-box;
}
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}
.main{
    height: 500px;
    width:100%;
    /* background-image: url('https://uploads-ssl.webflow.com/5fdb938891c733ccdda1d08f/5fdfc3af18a0bb24357214f4_eibopengraphy.jpg'); */
    /* background-image: url('https://thumbs.dreamstime.com/b/coaching-woman-using-her-smartphone-couch-coaching-woman-using-smartphone-125784228.jpg'); */
    /* background-image: url('https://www.wur.nl/upload_mm/e/6/c/560f75c8-e421-46df-b4c7-7c03ef822c09_Print%20version%20300%20DPI-shutterstock_379989526_vrouw_computer_9cbbdf10_750x400.jpg'); */
    background-image: url('https://mk0thinkificig8baqk3.kinstacdn.com/wp-content/themes/thinkific/assets/images/home/home-features-background.jpg');
    background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
/* Style the header */
.header {
  text-align: center;
  background: white;
  color: #333;
}
/* Increase the font size of the h1 element */
.header h1 {
  font-size: 40px;
}
/* Style the top navigation bar */
.navbar {
  overflow: hidden;
  background-color: #333;
}
/* Style the navigation bar links */
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
/* Right-aligned link */
.navbar a.right {
  float: right;
}
/* Change color on hover */
.navbar a:hover {
  background-color: #ddd;
  color: black;
}
/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #333;
  color:white;
}
/* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 700px) {
  .row {   
    flex-direction: column;
  }
}
/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .navbar a {
    float: none;
    width:100%;
  }
}
/* default */
/* footer */
.fa {
  padding: 20px;
  font-size: 20px;
  width: 60px;
  height: 60px;
  text-align: center;
  text-decoration: none;
  margin: 5px 5px;
  border-radius: 50%;
}
.fa:hover {
    opacity: 0.7;
}
.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}.fa-google {
  background: #dd4b39;
  color: white;
}
.fa-linkedin {
  background: #007bb5;
  color: white;
}
.fa-youtube {
  background: #bb0000;
  color: white;
}
.fa-instagram {
  background: #125688;
  color: white;
}
/* footer */
/* tablink */
/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}
/* Style tab links */
.tablink {
  background-color: #333;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
}
.tablink:hover {
  background-color: #777;
}
/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  padding: 100px 20px;
  height: 100%;
}
#Home {color:black;
    background-image: url('https://uploads-ssl.webflow.com/5fdb938891c733ccdda1d08f/5fdfc3af18a0bb24357214f4_eibopengraphy.jpg');
  }
#Admin {background-color: white; color:black;}
#Tutor {background-color:  white;color:black;}
#Student {background-color:  white;color:black;}
/* tablink */
/* login -reg */
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}
button:hover {
  opacity: 0.8;
}
/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}
/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}
img.avatar {
  width: 40%;
  border-radius: 50%;
}
.container {
  padding: 16px;
}
span.psw {
  float: right;
  padding-top: 16px;
}
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}
/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}
/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}
.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}
/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}
@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
} 
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}
/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
/* login-reg close */
</style>
</head>
<body>
<div class="header">
    <div>
        <h3>PI Tution Center</h3>
        <marquee><p style="color:red;">&#128512; &#128513; &#128514; &#128515; Pi Tution Center is Available only for Saturday and Sunday &#128526; .</p></marquee>
    </div>
</div>
<div class="navbar">
  <!-- <a href="#" >Home</a> -->
  <!-- <a href="#" class="right">Student</a>
  <a href="#" class="right">Admin</a>
  <a href="#" class="right">Tutor</a>
  <a href="#" class="right"><button onclick="document.getElementById('id1').style.display='block'">Quiz 1</button></a>
  <a href="#" class="right"><input type="button" value="PhysicianRegistration" onclick="openFormdata(1)"></a> -->
  <button class="tablink" onclick="openPage('Home', this, '')" id="defaultOpen">Home</button>
<button class="tablink" onclick="openPage('Admin', this, '')" >Admin</button>
<button class="tablink" onclick="openPage('Tutor', this, '')">Tutor</button>
<button class="tablink" onclick="openPage('Student', this, '')">Student</button>
</div>
<div class="main">
  <div id="Home" class="tabcontent">
    <h3>Home</h3>
    <p style="color:red"><strong>${msg}</strong></p>
  </div>
  
  <div id="Admin" class="tabcontent">
    <div style="margin:auto;top:0;right: 0;bottom: 0;left: 0;">
      <h3>Admin</h3>
    <p>Some news this fine day!</p>
    <button onclick="document.getElementById('adreg').style.display='block'" style="width:auto;">Admin-Registration</button>
    <button onclick="document.getElementById('adlog').style.display='block'" style="width:auto;">Admin-Login</button>
    
    </div>
  </div>
  <div id="Tutor" class="tabcontent">
    <h3>Tutor</h3>
    <p>Get in touch, or swing by for a cup of coffee.</p>
    <button onclick="document.getElementById('tutreg').style.display='block'" style="width:auto;">Tutor-Registration</button>
    <button onclick="document.getElementById('tutlog').style.display='block'" style="width:auto;">Tutor-Login</button>
  </div>
  <div id="Student" class="tabcontent">
    <h3>Student</h3>
    <p>Who we are and what we do.</p>
    <button onclick="document.getElementById('stureg').style.display='block'" style="width:auto;">Student-Registration</button>
    <button onclick="document.getElementById('stulog').style.display='block'" style="width:auto;">Student-Login</button>
  </div>
</div>
<div class="footer">
    <br>
    <p id="footer"><strong>Copyright &copy 2021</strong></p><br>
    <a href="#" class="fa fa-facebook"></a>
    <a href="#" class="fa fa-twitter"></a>
    <a href="#" class="fa fa-google"></a>
    <a href="#" class="fa fa-linkedin"></a>
    <a href="#" class="fa fa-youtube"></a>
    <a href="#" class="fa fa-instagram"></a>
    <br><br>
</div>
<!-- Admin-->
<div id="adreg" class="modal">
  <form class="modal-content animate" action="/adminregister" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('adreg').style.display='none'" class="close" title="Close Modal">&times;</span>
      <b><h5>Admin - Registration</h5></b>
    </div>
    <div class="container">
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="First Name" name="name" required>
      <label for="place"><b>Place</b></label>
      <input type="text" placeholder="Place" name="place" required>
      <label for="mobile"><b>Phone Number</b></label>
      <input type="text" placeholder="Mobile" name="mobile" required>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Email" name="email" required>
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      <button type="submit">Register</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('adreg').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<div id="adlog" class="modal">
  <form class="modal-content animate" action="/adminlogin" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('adlog').style.display='none'" class="close" title="Close Modal">&times;</span>
      <b><h5>Admin - Login</h5></b>
    </div>
    <div class="container">
      <label for="email"><b>Username (Email)</b></label>
      <input type="text" placeholder="Enter Username" name="email" required>
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      <button type="submit">Login</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('adlog').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>
<!-- Tutor-->
<div id="tutreg" class="modal">
  <form class="modal-content animate" action="/teacherregister" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('tutreg').style.display='none'" class="close" title="Close Modal">&times;</span>
      <b><h5>Tutor - Registration</h5></b>
    </div>
    <div class="container">
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="First Name" name="name" required>
      <label for="place"><b>Place</b></label>
      <input type="text" placeholder="Place" name="place" required>
      <label for="mobile"><b>Phone Number</b></label>
      <input type="text" placeholder="Mobile" name="mobile" required>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Email" name="email" required>
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      <button type="submit">Register</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('tutreg').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<div id="tutlog" class="modal">
  <form class="modal-content animate" action="/teacherlogin" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('tutlog').style.display='none'" class="close" title="Close Modal">&times;</span>
      <b><h5>Tutor - Login</h5></b>
    </div>
    <div class="container">
      <label for="email"><b>Username (Email)</b></label>
      <input type="text" placeholder="Enter Username" name="email" required>
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      <button type="submit">Login</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('tutlog').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<!-- Student -->
<div id="stureg" class="modal">
  <form class="modal-content animate" action="studentregister" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('stureg').style.display='none'" class="close" title="Close Modal">&times;</span>
      <b><h5>Student - Registration</h5></b>
    </div>
    <div class="container">
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder="First Name" name="name" required>
      <label for="place"><b>Place</b></label>
      <input type="text" placeholder="Place" name="place" required>
      <label for="mobile"><b>Phone Number</b></label>
      <input type="text" placeholder="Mobile" name="mobile" required>
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Email" name="email" required>
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      <button type="submit">Register</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('stureg').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>

<div id="stulog" class="modal">
  <form class="modal-content animate" action="/studentlogin" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('stulog').style.display='none'" class="close" title="Close Modal">&times;</span>
      <b><h5>Student - Login</h5></b>
    </div>
    <div class="container">
      <label for="email"><b>Username (Email)</b></label>
      <input type="text" placeholder="Enter Username" name="email" required>
      <label for="pswd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pswd" required>
      <button type="submit">Login</button>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('stulog').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>
</body>
</html>

<script>
  function openPage(pageName,elmnt,color) {
	  
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;
  }
  // Get the element with id="defaultOpen" and click on it
  document.getElementById("defaultOpen").click();
  </script>
  <script>
      var modal = document.getElementById(k);
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>