<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Prizes List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listprizes.css"%>
</style>
</head>
<body>
	<br>
	<br>    
	<div id="table root">
		<div class="center">
			<a href="/Prizes/addform"><h2>Add</h2></a>
		</div>
		<div class="center">
			<a href="/home/index"><h2>Home</h2></a>
		</div>
		<form action="updateprizes">
			<div class="center">
				<input type="text" name="prizeId" /> <input type="submit"
					value="update" />
			</div>
		</form>
		<br>
		<form action="getprizes">
			<div class="center">
				<input type="text" name="prizeId" /> <input type="submit"
					value="Find" />
			</div>
		</form>	   
		<table class="table-center" border=1>
			       
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
						<td><a href="/Prizes/deleteprizesform?id=${Prizes.prizeId}">Delete</a></td>
						           
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

