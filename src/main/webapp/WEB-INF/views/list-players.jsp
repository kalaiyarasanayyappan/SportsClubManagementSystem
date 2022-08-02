<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Players List</title>
</head>
<body>
	   
	<div id="table root">
		   
		<table>
			       
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
				           
				<c:forEach var="Players" items="${allPlayers}">
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
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

