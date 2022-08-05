<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sports</title>
</head>
<body>
	<div id="root">
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
	<div id="getsportsbysponserdetails">
		<table>
			<thead>
				<tr>
					<th>Sponser Id</th>            
					<th>Sports Id</th>            
					<th>Amount</th>            
					<th>Date of Sponsering</th>  
					<th>Mode of Payment</th>
					<th>Reciept Number</th>                           

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