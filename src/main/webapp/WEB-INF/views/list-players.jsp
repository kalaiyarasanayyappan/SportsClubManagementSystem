<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Players List</title>
<style type="text/css">
<%@
include
 
file="/WEB-INF/css/listplayers.css"%>
</style>
</head>
<body>
	<div>

		<div id="root">
			<nav class="navbar">
				<div class="navbar__container">
					<a href="#" id="navbar__logo">Sports Club</a>

					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/home/index"
							class="navbar__links">Home</a></li>

					</ul>
				</div>
			</nav>
		</div>
		   
		<div id="table root">




			<br>


			<table class="table-center" border=1>
				<caption></caption>

				<thead>

					<tr>
						           
						<th>PlayerId</th>            
						<th>PlayerName</th>            
						<th>SportsId</th>            
						<th>Gender</th>                     
						<th>Contact</th>
						<th>PlayerStatus</th>
						<th>DateOfBirth</th>
						<th>JoiningDate</th>
						<th>SubscriptionDue</th>
						<th>SubscriptionPaid</th>
						<th>Update</th>
						<th>Delete</th>
						<th>Fees</th>
						<th>Prize</th>                        
					</tr>
					       
				</thead>
				       
				<tbody>
					           
					<c:forEach var="Players" items="${allplayers}">
            <tr>
							           
							<td>${Players.playerId}</td>            
							<td>${Players.playerName}</td>            
							<td>${Players.sportsId}</td>            
							<td>${Players.gender}</td>                       
							<td>${Players.contact}</td>
							<td>${Players.playerStatus}</td>
							<td>${Players.dateOfBirth}</td>
							<td>${Players.joiningDate}</td>
							<td>${Players.subscriptionDue}</td>
							<td>${Players.subscriptionPaid}</td>
							<td><a
								href="/Players/updateplayers?playerId=${Players.playerId}">Update</a></td>
							<td><a
								href="/Players/deleteplayers?playerId=${Players.playerId}">Delete</a></td> 
							         
							<td><a
								href="/Players/getplayersbyfeesdetails?id=${Players.playerId}">Fees</a></td>
							<td><a
								href="/Players/getplayersbyprizedetails?id=${Players.playerId}">Prize</a></td>

							           
						</tr>
            </c:forEach>
					       
				</tbody>
				       
			</table>
			       
		</div>
		<div class="center">
			<a href="/Players/addform"><h2>ADD</h2></a>
		</div>
		<form action="getplayers">
			<div class="center">
				<input type="text" name="playerId" /> <input type="submit"
					value="FIND" />
			</div>
		</form>
</body>
</html>

