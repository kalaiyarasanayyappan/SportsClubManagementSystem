<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Prizes List</title>
<style type="text/css">
/* .e5{
background-color:#C18A7E;
text-transform:uppercase;
word-spacing:1em;
} */
body{
background-image:
 url("https://media.istockphoto.com/photos/golden-trophy-cup-on-dark-background-copy-space-for-text-3d-rendering-picture-id1296652778?k=20&m=1296652778&s=612x612&w=0&h=is8apC7FwE1H3-f41UoGdxYvC01MvEpBrENq6CaeYX8=");
 height: 768px;
width: 1366px;
/*  background-position: center; */
 background-size: cover;
 background-repeat: no-repeat;
 color: yellow;
}
</style>
</head>
<body>
	   
	<div id="table root">
	<div ><a href="/Prizes/addform">Add</a></div>
<div ><a href="/Prizes/updateprizesform">Update</a></div>
<div ><a href="/Prizes/getprizesform">Find</a></div>
<div ><a href="/home/index">Home</a></div>
<!-- <div ><a href="/Prizes/deleteprizesform">Delete</a></div> -->

		   
		<table align= "center" border=1>
			       
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
						<td><a  href="/Prizes/deleteprizesform?id=${Prizes.prizeId}">Delete</a></td>
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

