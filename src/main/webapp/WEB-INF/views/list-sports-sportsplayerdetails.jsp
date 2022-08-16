<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sports</title>
<style type="text/css">
.c7{
background-color:#C18A7E;
text-transform:uppercase;
word-spacing:1em;
}
</style>

</head>
<body>
	<div class="c7"id="root">
		<div id="getsportsbyplayerdetails">
			<form:form action="" method="post" modelAttribute="getsport">
				<div>
					<label for="sportsId">Sports Id</label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
				<div>
					<label for="sportsName">Sports Name</label>
					<div>
						<form:input path="sportsName" />
					</div>
				</div>
				<div>
					<label for="fees">Fees</label>
					<div>
						<form:input path="fees" />
					</div>
				</div>
				<div>
					<label for="inTime">In Time</label>
					<div>
						<form:input path="inTime" />
					</div>
				</div>
				<div>
					<label for="outTime">Out Time</label>
					<div>
						<form:input path="outTime" />
					</div>
				</div>
				<div>
					<label for="durations">Duration</label>
					<div>
						<form:input path="durations" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<div id="getsportsbyplayerdetails">
		<table border=1>
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
				<c:forEach var="playersdetails" items="${playerdetails}">
					<tr>
						<td>${playersdetails.playerId}</td>            
						<td>${playersdetails.playerName}</td>            
						<td>${playersdetails.sportsId}</td>            
						<td>${playersdetails.gender}</td>            
						<td>${playersdetails.address}</td>            
						<td>${playersdetails.contact}</td> 
						<td>${playersdetails.playerStatus}</td>
						<td>${playersdetails.dateOfBirth}</td>
						<td>${playersdetails.joiningDate}</td>
						<td>${playersdetails.subscriptionDue}</td>
						<td>${playersdetails.subscriptionPaid}</td>           
						            
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>