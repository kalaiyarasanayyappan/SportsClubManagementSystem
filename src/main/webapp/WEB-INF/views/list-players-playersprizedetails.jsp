<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Players Details</title>
<style type="text/css">
<%@
include
 
file="/WEB-INF/css/listplayersprize.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div>
		<a href="/Players/getallplayers"><h2>Back</h2></a>
	</div>
	<div class="center" id="root">
		<div id="getplayersbyprizedetails">
			<form:form action="" method="post" modelAttribute="getplay">
				<div>
					<label for="playerId">Player Id</label>
					<div>
						<form:input path="playerId" />
					</div>
				</div>
				<div>
					<label for="playerName">Player Name</label>
					<div>
						<form:input path="playerName" />
					</div>
				</div>
				<div>
					<label for="sportsId">Sports Id</label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="contact">Contact</label>
					<div>
						<form:input path="contact" />
					</div>
				</div>
				<div>
					<label for="playerStatus">Player Status</label>
					<div>
						<form:input path="playerStatus" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" />
					</div>
				</div>
				<div>
					<label for="subscriptionDue">Subscription Due</label>
					<div>
						<form:input path="subscriptionDue" />
					</div>
				</div>
				<div>
					<label for="subscriptionPaid">Subscription Paid</label>
					<div>
						<form:input path="subscriptionPaid" />
					</div>
				</div>

			</form:form>
		</div>
	</div>
	<br>
	<div id="getallplayersprizedetails">
		<table class="table-center" border=1>
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
				<c:forEach var="prizeDetails" items="${prizedetails}">
					<tr>
						<td>${prizeDetails.prizeId}</td>          
						<td>${prizeDetails.dateOfPrize}</td>            
						<td>${prizeDetails.title}</td>            
						<td>${prizeDetails.playerId}</td>            
						<td>${prizeDetails.sportsId}</td>            
						<td>${prizeDetails.positionNumber}</td>            
						<td>${prizeDetails.teamOrIndividual}</td>
						<td>${prizeDetails.competetionName}</td>
						<td>${prizeDetails.prizeAmount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>