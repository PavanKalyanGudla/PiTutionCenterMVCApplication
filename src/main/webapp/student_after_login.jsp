<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
 <%@ page import="com.Project.PiTutionCenter.Model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>PI Tution Center</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="favicon.ico " type="image/x-icon" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
    background-image: url('https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80');
    background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.main2{
    height: 500px;
    width:100%;
    background-image: url('https://wallpaperaccess.com/full/16668.jpg');
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
  color:white;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #333;
  color:white;
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
/*search*/
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
<!-- full tabs -->
<style>
* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
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
  display: none;
  padding: 100px 20px;
  height: 100%;
}
table{
width:100%;
align:center;
}
table, th, td {
  border: 1px solid black;
}
th, td {
  padding: 5px;
}
th{
color:red;
}
#Home,#News,#Contact,#About{background-color: white;color:black;}
</style>
<style>
input[type=text], input[type=password] {
  width: 100%;
  padding: 5px 5px;
  margin: 0px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
/* Set a style for all buttons */

button:hover {
  opacity: 0.8;
}
/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
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
	Student - ${studentObjectCopy.getName()}
	<button onclick="document.getElementById('cook').style.display='block'" style="width:auto;">Time Tables</button>
    <button id="myBtn">logout</button>
    
</div>
<div class="main">
	<div style="padding-top:100px;width:100%;height:300px;">
		  <div class="bg-img jumbotron mt-0">
		<h3>${studentObjectCopy.getName()} you can Search to find Courses Offered</h3>
		<form method="get" action="">
		<div class="input-group md-form form-sm form-1 pl-0  mt-0">
				<input class="form-control my-0 py-1" name="search" type="text"
				placeholder="Search Location" aria-label="Search">
				<input type="submit" value="search">
		</div>
			</form>
	</div>
	</div>
</div>
<div class="main2">
<button class="tablink" onclick="openPage('Home', this, '#333')" >Book a Course</button>
<button class="tablink" onclick="openPage('News', this, '#333')" id="defaultOpen">Courses</button>
<button class="tablink" onclick="openPage('Contact', this, '#333')">Faculty</button>
<button class="tablink" onclick="openPage('About', this, '#333')">Booked Courses</button>

<div id="Home" class="tabcontent">
  <form  action="/bookCourse" method="post">
  <table>
	<tr><td>Student Id</td><td>:</td><td><input type="text" name="sid" value="${studentObjectCopy.getId()}" ></td></tr>
	<tr><td>Student Name</td><td>:</td><td><input type="text" name="sname" value="${studentObjectCopy.getName()}" ></td></tr>
	<tr><td>Student Email</td><td>:</td><td><input type="text" name="email" value="${studentObjectCopy.getEmail()}" ></td></tr>
	<tr><td>Date</td><td>:</td><td><input type="date" name="date"></td></tr>
	<tr><td>Teacher</td><td>:</td><td>
			<select name="teacher" style="width:200px;padding:5px;">
			<c:forEach items="${teachers}" var="list" varStatus="loop">
			<option value="${list.getEmail()}">
				        ${list.getName()}
			</option>
			</c:forEach>
			</select></td>
			</tr>
			<tr><td>Slots</td><td>:</td><td><input type="radio" id="slot" name="slot" value="1">&emsp;Slot 1 (9 AM to 10 AM)<br>
			<input type="radio" id="slot" name="slot" value="2">&emsp;Slot 2 (11 AM to 12 PM)<br>
			<input type="radio" id="slot" name="slot" value="3">&emsp;Slot 3 (1 PM to 2 PM)<br>
			<input type="radio" id="slot" name="slot" value="4">&emsp;Slot 4 (3 PM to 4 PM)<br></td></tr>
			<tr><td>Course</td><td>:</td><td>
			<select name="subject" style="width:200px;padding:5px;">
			<c:forEach items="${subjects}" var="list" varStatus="loop">
			<option value="${list.getId()}">
				        ${list.getName()}
			</option>
			</c:forEach>
			</select></td></tr>
			<tr><td></td><td></td><td><input type="submit" value="Book"></td></tr>
			</table>
  </form>
</div>

<div id="News" class="tabcontent">
  <h5>Courses</h5>
  <table style="margin-top:10px;width:100%;">
					<tr style="color:red;"><td>ID</td><td>NAME</td><td>Fee Offered</td></tr>
						<c:forEach items="${subjects}" var="entry">
						<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getFee()}</td>
						<td></td></tr>
						</c:forEach> 
			</table>
</div>

<div id="Contact" class="tabcontent">
  <h3>Faculty</h3>
  <table style="margin-top:10px;border-collapse: collapse;width:100%;">
					<tr style="color:red;"><td>ID</td><td>NAME</td><td>PLACE</td><td>EMAIL</td><td>MOBILE</td></tr>
						<c:forEach items="${teachers}" var="entry">
						<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getPlace()}</td><td>${entry.getEmail()}</td><td>${entry.getMobile()}</td>
						</tr>
						</c:forEach> 
			</table>
</div>

<div id="About" class="tabcontent">
  <h3>Booked Courses</h3>
  <b><h5>Booking</h5></b>
      <table style="margin-top:10px;border-collapse: collapse;width:100%;">
			<tr><th>StudentID</th><th>StudentName</th><th>teacherID</th><th>Date</th><th>Slot</th><th>Course</th><th>Payment</th></tr>	
			<c:forEach items="${booked}" var="entry">
				<tr><td>${entry.getSid()}</td><td>${entry.getSname()}</td><td>${entry.getTeacherid()}</td><td>${entry.getDate()}</td><td>${entry.getSlot()}</td><td>${entry.getCourse()}</td><td>${entry.getPayment()}</td></tr>	
						</c:forEach> 
			</table>
</div>
<div id="myModal" class="modal">
		  <!-- Modal content -->
		  <div class="modal-content">
		    <span class="close">&times;</span>
		   	<form class="modal-content animate" action="/feedback" method="post">
		    feedback
		    <h4>Hi ${studentObjectCopy.getName()} please provide ur Rating</h4>
		    Very Bad <input type="radio" name="feedback" value="1"> 
		    Not Satisfied <input type="radio" name="feedback" value="2"> 
		    Average <input type="radio" name="feedback" value="3"> 
		    Good <input type="radio" name="feedback" value="4"> 
		    Excellent <input type="radio" name="feedback" value="5">
		    <input type="submit" value="Submit feedback and logout">
		    </form>
		    <a href="/studentLogout" class="right">Skip Feedback and logout</a>
		  </div>
		</div>
</div>
<div id="cook" class="modal">
    <div class="imgcontainer">
      <span onclick="document.getElementById('cook').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>
    <div class="container" style="color:black;background-color:white;">
      <table style="margin-top:10px;border-collapse: collapse;width:100%;">
				<tr><td>Teacher</td><td>Date</td><td>Subject</td><td>Slot1</td><td>Slot2</td><td>Slot3</td><td>Slot4</td></tr>
				<c:forEach items="${timetable}" var="entry">
					<tr><td>${entry.getId()}</td><td>${entry.getDate()}</td><td>${entry.getSubject()}</td><td>${entry.getSlot1()}</td><td>${entry.getSlot2()}</td><td>${entry.getSlot3()}</td><td>${entry.getSlot4()}</td>
					</tr>
				</c:forEach>
			</table>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('cook').style.display='none'" class="cancelbtn">Cancel</button>
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
// Get the modal
var modal = document.getElementById("myModal");
var btn = document.getElementById("myBtn");
var span = document.getElementsByClassName("close")[0];

btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>