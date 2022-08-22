<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.sportsclub.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Players</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updateplayers.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Players/getallplayers"><h2>Back</h2></a>
		</div>
	<div class="center" id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateplayers">


				<div>
					<label for="playerName">PlayerName</label>
					<div>
						<form:input path="playerName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="playerName" cssClass="text-danger" />
					<br>
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
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" title="Enter specific gender"
							pattern="^M(ale)?$|^F(emale)?$" required="true" />
					</div>
				</div>
				<form:errors path="gender" cssClass="text-danger" />
					<br>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address"
							title="Address should atleast contain 10 characters"
							required="true" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
					<br>
				<div>
					<label for="contact">Contact</label>
					<div>
						<form:input path="contact" pattern="[1-9]{1}[0-9]{9}"
							title="Phone number should have atleast 10 digits"
							required="true" />
					</div>
				</div>
				<form:errors path="contact" cssClass="text-danger" />
					<br>
				<div>
					<label for="playerStatus">choose a status</label> <br> <select
						name="playerStatus" id="playerStatus">
						<option>--Choose a status--</option>
						<option value="Excellent">Excellent</option>
						<option value="Good">Good</option>
						<option value="Average">Average</option>

					</select>
				</div>
					<br>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" min="<%=Logic.getMaxAge()%>" 
						max="<%=Logic.getMinAge()%>" type="date" />
					</div>
				</div>
	<br>
				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" type="date" />
					</div>
				</div>
	<br>
				<div>
					<label for="subscriptionDue">Subscription Due</label>
					<div>
						<form:input path="subscriptionDue" />
					</div>
				</div>
	<br>
				<div>
					<label for="subscriptionPaid">Subscription Paid</label>
					<div>
						<form:input path="subscriptionPaid" />
					</div>
				</div>
				<form:errors path="subscriptionPaid" cssClass="text-danger" />
					<br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>