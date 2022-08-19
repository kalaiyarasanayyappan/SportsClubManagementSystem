<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Prizes List</title>
<style type="text/css">
<%@
include
 
file="/WEB-INF/css/listprizes.css"%>
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
		<br>    
		<div id="table root">





			<table class="table-center" border=1>
				<caption></caption>
				       
				<thead>
					           
					<tr>
						 
						<th>prizeId</th>         
						<th>Date of Prize</th>            
						<th>Title</th>            
						<th>PlayerId</th>            
						<th>SportsId</th>            
						<th>PositionNumber</th>            
						<th>Team/Individual</th>
						<th>CompetetionName</th>
						<th>PrizeAmount</th>
						<th>update</th>
						<th>delete</th>

					</tr>
					       
				</thead>
				       
				<tbody>
					           
					<c:forEach var="Prizes" items="${allprizes}">
            <tr>
							 
							<td>${Prizes.prizeId}</td>          
							<td>${Prizes.dateOfPrize}</td>            
							<td>${Prizes.title}</td>            
							<td>${Prizes.playerId}</td>            
							<td>${Prizes.sportsId}</td>            
							<td>${Prizes.positionNumber}</td>            
							<td>${Prizes.teamOrIndividual}</td>
							<td>${Prizes.competetionName}</td>
							<td>${Prizes.prizeAmount}</td>
							<td><a href="/Prizes/updateprizes?prizeId=${Prizes.prizeId}">Update</a></td>
							<td><a href="/Prizes/deleteprizes?prizeId=${Prizes.prizeId}">Delete</a></td>
							           
						</tr>
            </c:forEach>
					       
				</tbody>
				       
			</table>
			       
		</div>
		<div class="center">
			<a href="/Prizes/addform"><h2>Add</h2></a>
		</div>
		<form action="getprizes">
			<div class="center">
				<input type="text" name="prizeId" /> <input type="submit"
					value="Find" />
			</div>
		</form>
		   
</body>
</html>

