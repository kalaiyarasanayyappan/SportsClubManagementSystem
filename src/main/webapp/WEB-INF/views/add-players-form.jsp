<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.sportsclub.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Players</title>
<style type="text/css">
<%@include file="/WEB-INF/css/addplayer.css"%>
</style>

</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Players/getallplayers"><h2>Back</h2></a>
		</div>
	<div class="center"id="table root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addplayers">
				<div>
					<label for="playerName">PLAYER NAME</label>
					<div>
						<form:input path="playerName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<br>
				<form:errors path="playerName" cssClass="text-danger" />
				<div>
					<label for="sportsId">choose a sports</label> <br> <select
						name="sportsId" id="sportsId">
						<option>--Choose a sports--</option>
						<option value="1000">cricket</option>
						<option value="1001">Football</option>
						<option value="1002">Tennis</option>
						<option value="1006">volleyball</option>
						<option value="1007">basketball</option>
						<option value="1008">HanDball</option>
					</select>
				</div>
				<br>
				<div>
					<label for="gender">GENDER</label>
					<div>
						<form:input path="gender" title="Enter specific gender"
							pattern="^M(ale)?$|^F(emale)?$" required="true" />
					</div>
				</div>
<br>
				<form:errors path="gender" cssClass="text-danger" />
				<div>
					<label for="address">ADDRESS</label>
					<div>
						<form:input path="address"
							title="Address should atleast contain 10 characters"
							required="true" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
				<br>
				<div>
					<label for="contact">CONTACT</label>
					<div>
						<form:input path="contact" pattern="[1-9]{1}[0-9]{9}"
							title="Phone number should have atleast 10 digits"
							required="true" />
					</div>
				</div>
				<br>
				<form:errors path="contact" cssClass="text-danger" />
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
					<label for="dateOfBirth">DATE OF BIRTH</label>
					<div>
						<form:input path="dateOfBirth"  type="date" min="<%=Logic.getMaxAge()%>" 
						max="<%=Logic.getMinAge()%>" title="Enter date of birth between 1990 to 2010" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="joiningDate">JOINING DATE</label>
					<div>
						<form:input path="joiningDate" type="date" />
					</div>
				</div>
				<br>
				<div>
					<label for="subscriptionDue">SUBSCRIPTION DUE</label>
					<div>
						<form:input path="subscriptionDue" />
					</div>
				</div>
				<br>
				<div>
					<label for="subscriptionPaid">SUBSCRIPTION PAID</label>
					<div>
						<form:input path="subscriptionPaid" />
					</div>
				</div>
				<form:errors path="subscriptionPaid" cssClass="text-danger" />

				<div>
					<form:button>ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>