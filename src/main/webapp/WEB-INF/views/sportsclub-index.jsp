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
 url("https://st.depositphotos.com/1063346/1362/i/950/depositphotos_13625743-stock-photo-assorted-sports-equipment-on-black.jpg");
 height: 768px;
width: 1366px;
 /* background-position: center; */
 background-size: cover;
background-repeat: no-repeat;

position: relative;   */

}
.my_text {
	font-family: Times;
	font-size: 25px;
}
*{
	padding:0;
	margin:0;	
	box-sizing: border-box; 
}
.menu-bar{
	/* background: rgb(0, 0, 194); /* 0,100,0 */ */
	text-align:center;
}
.menu-bar ul{
	display: inline-flex;
	list-style:none;
	color:#EE2111;
}
.menu-bar ul li{
	width: 150px;
	margin: 15px;
	padding: 15px;
}
.menu-bar ul li a{
	text-decoration: none;
	color:#fff;
}
.active, .menu-bar ul li:hover{
	background: #ff6600;
	border-radius: 3px;
}
.menu-bar .fa{
	margin-right: 8px;
}
.sub-menu-1{
	display: none;
}
.menu-bar ul li:hover .sub-menu-1{
	display: block;
	position: absolute;
	background:rgb(0, 153, 204);/*rgb(255, 0, 0)*/
	margin-top: 15px;
	margin-left: -15px;
}
.menu-bar ul li:hover .sub-menu-1 ul{
	display: block;
	margin: 10px;
}
.menu-bar ul li:hover .sub-menu-1 ul li{
	width: 150px;
	padding: 10px;
	border-bottom: 1px dotted #fff;
	background: transparent;
	border-radius: 0;
	text-align: left;
}
.menu-bar ul li:hover .sub-menu-1 ul li:last-child{
	border-bottom:  none;
}
.menu-bar ul li:hover .sub-menu-1 ul li a:hover {
	color: #b2ff00;
}
h1{
color:#b2ff00;
}
</style>
</head>
<body>

<h1 align="center">SPORTS CLUB MANAGEMENT </h1>
<div class="menu-bar">
<ul>
<li class="active"><a href="/Sports/getallsports">Sports</a></li>
<li class="active"><a href="/Staff/getallstaff">Staff</a></li>
<li class="active"><a href="/Players/getallplayers">Players</a></li>
<li class="active"><a href="/Sponsers/getallsponsers">Sponsers</a></li>
<li class="active"><a href="/Prizes/getallprizes">Prizes</a></li>
<li class="active"><a href="/Sponsering_Details/getallsponseringdetails">SponseringDetails</a></li>
<li class="active"><a href="/Players_Fees_Details/getallplayersfeesdetails">PlayersFeesDetails</a></li>
</ul>
</div>
</body>
</html>
