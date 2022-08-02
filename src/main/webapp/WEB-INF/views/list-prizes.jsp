<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prizes List</title>
</head>
<body>
	   
	<div id="table root">
		   
		<table>
			       
			<thead>
				           
				<tr>
					           
					<th>Date of Prize</th>            
					<th>Title</th>            
					<th>Player Id</th>            
					<th>Sports Id</th>            
					<th>Position</th>            
					<th>Team Individual</th>
					<th>Competetion Name</th> 
					<th>Prize Amount</th> 
					
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Prizes" items="${allPrizes}">
            <tr>
						           
						<td>${Prizes.dateOfPrize}</td>            
						<td>${Prizes.title}</td>            
						<td>${Prizes.playerId}</td>            
						<td>${Prizes.sportsId}</td>            
						<td>${Prizes.position}</td>            
						<td>${Prizes.teamIndividual}</td> 
						<td>${Prizes.competetionName}</td>
						<td>${Prizes.prizeAmount}</td>
						
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

