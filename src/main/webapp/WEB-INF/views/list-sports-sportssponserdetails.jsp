<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>sports</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listsportssponsers.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Sports/getallsports"><h2>Back</h2></a>
		</div>
	<div class="center"  id="root">
		<div id="getsportsbysponserdetails">
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
	<br>
	<br>
	<div id="getsportsbysponserdetails">
		<table class="table-center" border=1>
			<thead>
				<tr>
					<th>Sponsering_Details_Id</th>
					<th>Sponser_Id</th>
					<th>Sports Id</th>
					<th>Amount</th>
					<th>Date_of_Sponser</th>
					<th>Mode of Payment</th>
					<th>Reciept_Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Sponseringdetails" items="${sponserdetails}">
					<tr>
						<td>${Sponseringdetails.sponseringDetailsId}</td>
						<td>${Sponseringdetails.sponserId}</td>
						<td>${Sponseringdetails.sportsId}</td>
						<td>${Sponseringdetails.amount}</td>
						<td>${Sponseringdetails.dateOfSponsering}</td>
						<td>${Sponseringdetails.modeOfPayment}</td>
						<td>${Sponseringdetails.recieptNumber}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>