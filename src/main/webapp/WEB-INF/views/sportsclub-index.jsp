<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>sportsclub Index</title>
<style type="text/css">
<%@include file="/WEB-INF/css/sportsclub.css"%>
</style>
</head>
<body>

	<h1>SPORTS CLUB MANAGEMENT</h1>
	<div class="menu-bar">
		<ul>
			<li class="active"><a href="/Sports/getallsports">Sports</a></li>
			<li class="active"><a href="/Staff/getallstaff">Staff</a></li>
			<li class="active"><a href="/Players/getallplayers">Players</a></li>
			<li class="active"><a href="/Sponsers/getallsponsers">Sponsers</a></li>
			<li class="active"><a href="/Prizes/getallprizes">Prizes</a></li>
			<li class="active"><a
				href="/Sponsering_Details/getallsponseringdetails">SponseringDetails</a></li>
			<li class="active"><a
				href="/Players_Fees_Details/getallplayersfeesdetails">PlayersFeesDetails</a></li>
		</ul>
	</div>
</body>
</html>
