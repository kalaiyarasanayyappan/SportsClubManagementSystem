<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sportsclub Index</title>
<style type="text/css">
body {
background-image:
 url("https://images.pexels.com/photos/46798/the-ball-stadion-football-the-pitch-46798.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
 height: 768px;
width: 1366px;
background-position: center;
background-repeat: no-repeat;
background-size: cover;
position: relative; 

}

h1{
text-align:center;
color: red;
font-weight: bold;
font-family:arial,heluetica;
}
h2{
color: blue;
font size:25px;
}



a:hover
{
color:red;
}
a:active
{
color:green;
}
a:visited{
color:yellow;
}
.f1 label{
display:block;
}
.f1{
padding:20px;
}
.fg{
padding-bottom: 20px;
}


}
p{
line-height:1.9cm;
}
.container{
width:80%;
margin:auto;
margin-top:100px;
}
.f1 input[type="text"]
{
padding: 10px;
width:100%;
}
.f1 input[type="Home"]
{
background-color: #333;
color:white;
padding: 10px;
border:none;
}
.button:hover{
background: blue;
color:white;
}
* {
margin: 0;
padding: 0;
}

</style>
</head>
<body>

<h1>SPORTS CLUB MANAGEMENT </h1>

<br><br>
<div><a href="/Sports/getallsports"><h2>Sports</h2></div> 
<div ><a href="/Staff/getallstaff"><h2>Staff</h2></div>
<div ><a href="/Players/getallplayers"><h2>Players</h2></div>
<div ><a href="/Sponsers/getallsponsers"><h2>Sponsers</h2></div>
<div><a href="/Prizes/getallprizes"><h2>Prizes</h2></div>
<div><a href="/Sponsering_Details/getallsponseringdetails"><h2>SponseringDetails</h2></div>
<div><a href="/Players_Fees_Details/getallplayersfeesdetails"><h2>PlayersFeesDetails</h2></div>
</body>
</html>
