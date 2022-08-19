<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Sponsersingdetails</title>
<style type="text/css">

<%@include file="/WEB-INF/css/addsponseringdetails.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Sponsering_Details/getallsponseringdetails"><h2>Back</h2></a>
		</div>
	<div class="center" id="root">
		<div id="form">
			<form:form action="add" method="post"
				modelAttribute="addsponseringdetails">
				<div>
					<label for="sponserId">Sponser Id</label>
					<div>
						<form:input path="sponserId" title="Enter sponser Id"
							required="true" />
					</div>
				</div>
					<br>
				<form:errors path="sponserId" cssClass="text-danger" />
				<div>
					<label for="sportsId">choose a sports</label> <br> <select
						name="sportsId" id="sportsId">
						<option>--Choose a sports--</option>
						<option value="1000">cricket</option>
						<option value="1001">Football</option>
						<option value="1002">Tennis</option>
						<option value="1006">volleyball</option>
						<option value="1007">basketball</option>
						<option value="1008">Handball</option>
					</select>
				</div>
					<br>
				<div>
					<label for="amount">Amount</label>
					<div>
						<div>
							<form:input path="amount" title="enter valid amount"
								pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true" />
						</div>
					</div>
					<form:errors path="amount" cssClass="text-danger" />
				</div>
					<br>
				<div>
					<label for="dateOfSponsering">Date of Sponsering</label>
					<div>
						<form:input path="dateOfSponsering" type="date" title="enter date"
							required="true" />
					</div>
				</div>
				<form:errors path="dateOfSponsering" cssClass="text-danger" />
					<br>
				<div>
					<label for="modeOfPayment">choose a payment</label> <br> <select
						name="modeOfPayment" id="modeOfPayment">
						<option>--Choose a payment--</option>
						<option value="cash">Cash</option>
						<option value="check">check</option>
						<option value="debitcard">DebitCard</option>
					</select>
					<div>
						<form:button>Add</form:button>
					</div>
			</form:form>
		</div>
	</div>
</body>
</html>