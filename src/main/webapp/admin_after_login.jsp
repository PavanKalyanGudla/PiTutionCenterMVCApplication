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
    background-image: url('https://images.unsplash.com/photo-1501163109389-abf37ca1276a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1500&q=80');
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
/* vertical tabs */
/* Style the tab */
.verticaltab{
padding:30px 20px;
}
.tab {
  float: left;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
  width: 30%;
  height: 450px;
}

/* Style the buttons inside the tab */
.tab button {
  display: block;
  background-color: inherit;
  color: black;
  padding: 22px 16px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  background-color:white;
  opacity:0.8;
  float: left;
  padding: 0px 12px;
  border: 1px solid #ccc;
  width: 70%;
  border-left: none;
  height: 450px;
  padding-top:10px;
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
/* end vertical tabs */
table{
width:100%;
align:center;
}
table, th, td {
  border: 1px solid black;border-collapse: collapse;
}
th, td {
  padding: 15px;
}
th{
color:red;
}

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
</head>
<body>
<div class="header">
    <div>
        <h3>PI Tution Center</h3>
        <marquee><p style="color:red;">&#9760; Admin <span style="color:black;">${adminObj.getName()}</span> you have control for Every Thing in the Portal.</p></marquee>
    </div>
</div>
<div class="navbar">
    <a href="/adminLogout" class="right">logout</a>
</div>
<div class="main">
    <div class="verticaltab">
        <div class="tab">
            <button class="tablinks" onclick="openCity(event, 'one')" id="defaultOpen">Admin info &#129333;&#127995;</button>
            <button class="tablinks" onclick="openCity(event, 'two')">Students List</button>
            <button class="tablinks" onclick="openCity(event, 'three')">Admins List</button>
            <button class="tablinks" onclick="openCity(event, 'four')">Tutors List</button>
            <button class="tablinks" onclick="openCity(event, 'five')">Subjects List</button>
            <button class="tablinks" onclick="openCity(event, 'six')">Timetables</button>
            <button class="tablinks" onclick="openCity(event, 'seven')">Feedback Reviews</button>
          </div>  
          <div id="one" class="tabcontent">
            <table>
            <tr><th>Admin Id</th><th>:</th><td>${adminObj.getId()}</td></tr>
            <tr><th>Admin Name</th><th>:</th><td>${adminObj.getName()}</td></tr>
            <tr><th>Admin Place</th><th>:</th><td>${adminObj.getPlace()}</td></tr>
            <tr><th>Admin Mobile</th><th>:</th><td>${adminObj.getMobile()}</td></tr>
            <tr><th>Admin Email</th><th>:</th><td>${adminObj.getEmail()}</td></tr>
            </table>
          </div>
          <div id="two" class="tabcontent">
            <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                   <caption>Students</caption>
					<tr style="color:red;"><td>ID</td><td>NAME</td><td>PLACE</td><td>EMAIL</td><td>MOBILE</td></tr>
						<c:forEach items="${students}" var="entry">
						<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getPlace()}</td><td>${entry.getEmail()}</td><td>${entry.getMobile()}</td>
						</tr>
						</c:forEach> 
			</table>
          </div>
          <div id="three" class="tabcontent">
           <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                   <caption>Admins</caption>
					<tr style="color:red;"><td>ID</td><td>NAME</td><td>PLACE</td><td>EMAIL</td><td>MOBILE</td></tr>
						<c:forEach items="${admins}" var="entry">
						<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getPlace()}</td><td>${entry.getEmail()}</td><td>${entry.getMobile()}</td></tr>
						</c:forEach> 
			</table>
          </div>
          <div id="four" class="tabcontent">
            <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                   <caption>Teachers</caption>
					<tr style="color:red;"><td>ID</td><td>NAME</td><td>PLACE</td><td>EMAIL</td><td>MOBILE</td></tr>
						<c:forEach items="${teachers}" var="entry">
						<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getPlace()}</td><td>${entry.getEmail()}</td><td>${entry.getMobile()}</td>
						</tr>
						</c:forEach> 
			</table>
          </div>
          <div id="five" class="tabcontent">
            <table style="margin-top:10px;border-collapse: collapse;width:100%;">
                   <caption>Subjects</caption>
					<tr style="color:red;"><td>ID</td><td>NAME</td><td>Fee Offered</td><td></td></tr>
						<c:forEach items="${subjects}" var="entry">
						<tr><td>${entry.getId()}</td><td>${entry.getName()}</td><td>${entry.getFee()}</td><td><a href="/deleteSubject?id=${entry.getId()}&email=${adminObj.getEmail()}"><button>Delete</button></a></td></tr>
						</c:forEach> 
			</table>
			<button id="myBtn">Add Subject</button>
          </div>
          <div id="six" class="tabcontent">
           <table style="margin-top:10px;border-collapse: collapse;width:100%;">
				<tr><td>Teacher</td><td>Date</td><td>Subject</td><td>Slot1</td><td>Slot2</td><td>Slot3</td><td>Slot4</td></tr>
				<c:forEach items="${timetable}" var="entry">
					<tr><td>${entry.getId()}</td><td>${entry.getDate()}</td><td>${entry.getSubject()}</td><td>${entry.getSlot1()}</td><td>${entry.getSlot2()}</td><td>${entry.getSlot3()}</td><td>${entry.getSlot4()}</td>
					</tr>
				</c:forEach>
			</table>
          </div>
           <div id="seven" class="tabcontent">
           <table style="margin-top:10px;border-collapse: collapse;width:100%;">
				<tr><td>StudentId</td><td>Rating</td></tr>
				<c:forEach items="${feedback}" var="entry">
					<tr><td>${entry.getSid()}</td><td>${entry.getRating()}</td></tr>
				</c:forEach>
			</table>
          </div>
          <!-- The Modal -->
		<div id="myModal" class="modal">
		  <!-- Modal content -->
		  <div class="modal-content">
		    <span class="close">&times;</span>
		    <form class="modal-content animate" action="/addSubject" method="post">
		    <table>
		    <tr><th>Subject Id</th><td><input type="text" placeholder="Enter Id" name="id" required>&emsp;<span style="color:red">Unique</span></td></tr>
		    <tr><th>Subject Name</th><td><input type="text" placeholder="Enter Name"  name="name" required></td></tr>
		    <tr><th>Subject Fee</th><td><input type="text" placeholder="Enter Fee"  name="fee" required></td></tr>
		    <tr><td><input type="submit" value="Add Subject"></td></tr>
		    </table>
		    </form>
		  </div>
		</div>
          
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
    function openCity(evt, cityName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(cityName).style.display = "block";
      evt.currentTarget.className += " active";
    }
    
    // Get the element with id="defaultOpen" and click on it
    document.getElementById("defaultOpen").click();
    </script>

    
<script>
// Get the modal
var modal = document.getElementById("myModal");
// Get the button that opens the modal
var btn = document.getElementById("myBtn");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
// When the user clicks the button, open the modal 
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