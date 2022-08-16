<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Players List</title>
<style type="text/css">

body{
background-image:
 url("https://wallpaperaccess.com/full/2493384.jpg");
   background-repeat: no-repeat;
 height: 768px;
width: 1366px;
/*  background-position: center; */
 background-size: cover;
   /* -webkit-background-size: cover;
    -moz-background-size: cover;
     -o-background-size: cover; */
  color: yellow;
}
</style>
</head>
<body>
	   
	<div id="table root">
	<div ><a href="/Players/addform">Add</a></div>
<div ><a href="/Players/updateplayersform">Update</a></div>
<div ><a href="/Players/getplayersform">Find</a></div>
<div ><a href="/home/index">Home</a></div>
<!-- <div ><a href="/Players/deleteplayersform">Delete</a></div> -->

<!-- <div ><a href="/Players/getplayersfeesdetail">FeesDetails</a></div>
<div ><a href="/Players/getplayersprizedetail">PrizeDetails</a></div>
		    -->
		<table align="center" border=1>
			       
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
						<td><a  href="/Players/getplayersbyfeesdetails?id=${Players.playerId}">FeesDetails</a></td>
						<td><a  href="/Players/getplayersbyprizedetails?id=${Players.playerId}">PrizeDetails</a></td>
						<td><a  href="/Players/getplayersbyprizedetails?id=${Players.playerId}">Delete</a></td>             
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

