<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Players List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listplayers.css"%>
</style>
</head>
<body>
	   
	<div id="table root">
		<div class="center">
			<a href="/Players/addform"><h2>Add</h2></a>
		</div>

		<div class="center">
			<a href="/home/index"><h2>Home</h2></a>
		</div>
		<form action="updateplayers">
			<div class="center">
				<input type="text" name="playerId" /> <input type="submit"
					value="update" />
			</div>
		</form>
		<br>
		<form action="getplayers">
			<div class="center">
				<input type="text" name="playerId" /> <input type="submit"
					value="Find" />
			</div>
		</form>
		

		<table class="table-center" border=1>

			<thead>

				<tr>
					           
					<th>Player Id</th>            
					<th>Player Name</th>            
					<th>Sports Id</th>            
					<th>Gender</th>            
					<th>Address</th>            
					<th>Contact</th>
					<th>Player Status</th>
					<th>Date of Birth</th>
					<th>Joining Date</th>
					<th>Subscription Due</th>
					<th>Subscription Paid</th>                        
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Players" items="${allplayers}">
            <tr>
						           
						<td>${Players.playerId}</td>            
						<td>${Players.playerName}</td>            
						<td>${Players.sportsId}</td>            
						<td>${Players.gender}</td>            
						<td>${Players.address}</td>            
						<td>${Players.contact}</td>
						<td>${Players.playerStatus}</td>
						<td>${Players.dateOfBirth}</td>
						<td>${Players.joiningDate}</td>
						<td>${Players.subscriptionDue}</td>
						<td>${Players.subscriptionPaid}</td>           
						<td><a
							href="/Players/getplayersbyfeesdetails?id=${Players.playerId}">FeesDetails</a></td>
						<td><a
							href="/Players/getplayersbyprizedetails?id=${Players.playerId}">PrizeDetails</a></td>
						<td><a href="/Players/deleteplayers?id=${Players.playerId}">Delete</a></td>
						           
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

