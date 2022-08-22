<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Sponseringdetails By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findsponseringdetails.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Sponsering_Details/getallsponseringdetails"><h2>Back</h2></a>
		</div>
	<div class="center"id="table root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="getsponseringdetails">
				<div>
					<label for="sponseringDetailsId">SponseringDetailsId</label>
					<div>
						<form:input path="sponseringDetailsId" />
					</div>
				</div>
					<br>
				<div>
					<label for="sponserId">SPONSERID</label>
					<div>
						<form:input path="sponserId" />
					</div>
				</div>
					<br>
				<div>
					<label for="sportsId">SPORTSID</label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
					<br>
				<div>
					<label for="amount">AMOUNT</label>
					<div>
						<form:input path="amount" />
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfSponsering">DATEOFSPONSERING</label>
					<div>
						<form:input path="dateOfSponsering" />
					</div>
				</div>
					<br>
				<div>
					<label for="modeOfPayment">Mode Of Payment</label>
					<div>
						<form:input path="modeOfPayment" />
					</div>
				</div>
					<br>
				<div>
					<label for="recieptNumber">RecieptNumber</label>
					<div>
						<form:input path="recieptNumber" />
					</div>
				</div>

				<div></div>
			</form:form>
		</div>
	</div>
</body>
</html>