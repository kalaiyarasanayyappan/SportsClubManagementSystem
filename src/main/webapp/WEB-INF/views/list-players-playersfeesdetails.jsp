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

 

file="/WEB-INF/css/listplayersplayersfees.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div>
		<a href="/Players/getallplayers"><h2>Back</h2></a>
	</div>
	<div class="center" id="root">
		<div id="getplayersbyfeesdetails">
			<form:form action="" method="post" modelAttribute="getplayers">
				<div>
					<label for="playerId">Player Id</label>
					<div>
						<form:input path="playerId" />
					</div>
				</div>
				<div>
					<label for="playerName">PlayerName</label>
					<div>
						<form:input path="playerName" />
					</div>
				</div>
				<div>
					<label for="sportsId">SportsId</label>
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
					<label for="playerStatus">PlayerStatus</label>
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
		<br>
		<div id="getallplayersfeesdetails">
			<table class="table-center" border=1>
				<caption></caption>
				<thead>
					<tr>
						<th>paid Date</th>            
						<th>Player Id</th>            
						<th>Amount</th>            
						<th>Remarks</th>            
						<th>Reciept Number</th>            

					</tr>
				</thead>
				<tbody>
					<c:forEach var="feesDetails" items="${feesdetails}">
						<tr>
							<td>${feesDetails.paidDate}</td>
							<td>${feesDetails.playerId}</td>
							<td>${feesDetails.amount}</td>
							<td>${feesDetails.remarks}</td>
							<td>${feesDetails.recieptNumber}</td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>