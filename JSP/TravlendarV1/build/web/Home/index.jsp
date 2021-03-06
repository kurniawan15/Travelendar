<%-- 
    Document   : index.jsp
    Created on : Sep 21, 2017, 9:51:43 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Travlendar</title>
<link rel="stylesheet" href="css/Style.css">
<link href="https://fonts.googleapis.com/css?family=Anton" rel="stylesheet">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

    <%
        String userName = request.getParameter("username");
        %>
    
<div class="header">
<img src="css/icon/LogoKelompokB1.png" width="145" height="50" style="margin-left:30px;">
    <div id="menuBtn" class="dropbtn" style="float:right;"><img src="css/icon/showmenu.png" alt="Menu" width="40" height="40"></div>
    	<div id="myDropdown" class="dropdown-content">
            <div style="width:100%;"><a href="#UserProfile"><img src="css/icon/user.png" width="30" height="30" style="float:left;"><div class="text-navbar">Nelfs</div></a></div>
        	<div style="width:100%;"><a href="#LogOut"><img src="css/icon/logout.png" width="35" height="35" style="float:left;"><div class="text-navbar" style="padding-bottom:5px;">Log Out</div></a></div>
        </div>
</div>

<div class="row">
    <div class="navbar">
        <ul>
          <li><a href="Home.html"><img src="css/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li><a href="CalendarView.html"><img src="css/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <h1> Upcoming Event </h1>
		<div class="boxstyle1">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke Kantor DPRD Banka</div>
                    <div class="t4">Time: 20/09/2017 06:45 - 08:30</div>
                </div>
                <div class="column2">
                    <div id="countdown"></div> 
                </div>
                <div class="column3">
                    <a href="Menu.html" class="button1">Event details</a>
                </div>
            </div>
		</div>
    
        <div class="boxstyle11">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke bandara</div>
                    <div class="t4">Time: 20/09/2017 10:00 - 11:00</div>
                </div>
                <div class="column2">
                    <div id="countdown2"></div>
                </div>
                <div class="column3">
                    <a href="Menu.html" class="button1">Event details</a>
                </div>
            </div>
        </div>
    
      <div class="boxstyle11">
      	<div class="row">
        	<div class="column">
                    <div class="t3">Ke Bandara Halim Perdanakusuma<br></div>
                    <div class="t4">Time: 20/09/2017 13:00 - 17:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    <div id="countdown2"></div>
                </div>
                <div class="column3">
                    <a href="Menu.html" class="button1">Event details</a>
                </div>
            </div>
      </div>
    
      <div class="boxstyle11">
      <div class="row">
                <div class="column">
                    <div class="t3">Ke Tangerang<br></div>
                    <div class="t4">Time: 20/09/2017 18:00 - 20:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    <div id="countdown2"></div>
                </div>
                <div class="column3">
                    <a href="Menu.html" class="button1">Event details</a>
                </div>
            </div>
      </div>
      
        <div class="boxstyle11">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke Bandara Halim Perdanakusuma <br></div>
                    <div class="t4">Time: 20/09/2017 21:00 - 22:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    <div id="countdown2"></div>
                </div>
                <div class="column3">
                    <a href="Menu.html" class="button1">Event details</a>
                </div>
            </div>
      </div>
      
          <div class="boxstyle11">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke Rumah<br></div>
                    <div class="t4">Time: 20/09/2017 21:00 - 22:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    <div id="countdown2"></div>
                </div>
                <div class="column3">
                    <a href="Menu.html" class="button1">Event details</a>
                </div>
            </div>
      </div>
		
      <div class="boxstyle3">
        <div class="hoverbutton">
         <a href="CreateAgenda.html"><img src="css/icon/sign_add.png" alt="Menu" width="50" height="50"></a>
         </div>
        </div>
    </div>
</div>

<div class="footer">
Lander 2017
</div>


<script>

function countdown(setdetik){
	var minutes = 1;
    var seconds = setdetik;
    var mins = minutes
    function tick() {
        //elemen dengan id= counter bisa diganti sesuka hati 
        var counter = document.getElementById("countdown");
        var current_minutes = mins-1;
        seconds--;
        counter.innerHTML = String(seconds);
        if( seconds > 0 ) {
            setTimeout(tick, 1000);
        } else {
            if(mins > 1){
                countdown(mins-1);           
            }
        }
    }
    tick();
}
countdown(100); 

function countdown2(setdetik){
	var minutes = 1;
    var seconds = setdetik;
    var mins = minutes
    function tick() {
        //elemen dengan id= counter bisa diganti sesuka hati 
        var counter = document.getElementById("countdown2");
        var current_minutes = mins-1;
        seconds--;
        counter.innerHTML = String(seconds);
        if( seconds > 0 ) {
            setTimeout(tick, 1000);
        } else {
            if(mins > 1){
                countdown(mins-1);           
            }
        }
    }
    tick();
}
countdown2(100); 

// Get the button, and when the user clicks on it, execute myFunction
document.getElementById("menuBtn").onclick = function() {myFunction()};

/* myFunction toggles between adding and removing the show class, which is used to hide and show the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}


</script>

</body>
</html>