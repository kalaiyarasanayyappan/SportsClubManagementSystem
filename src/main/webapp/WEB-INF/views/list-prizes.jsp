<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prizes List</title>
<style type="text/css">
.e5{
background-color:red;
text-transform:uppercase;
word-spacing:1em;
}
</style>
</head>
<body>
	   
	<div class="e5"id="table root">
	<div ><a href="/Prizes/addform">Add</a></div>
<div ><a href="/Prizes/updateprizesform">Update</a></div>
<div ><a href="/Prizes/getprizesform">Find</a></div>
<div ><a href="/Prizes/deleteprizesform">Delete</a></div>

		   
		<table>
			       
			<thead>
				           
				<tr>
					  <th>prize Id</th>         
					<th>Date of Prize</th>            
					<th>Title</th>            
					<th>Player Id</th>            
					<th>Sports Id</th>            
					<th>Position Number</th>            
					<th>Team Or Individual</th>
					<th>Competetion Name</th> 
					<th>Prize Amount</th> 
					
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
						
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

