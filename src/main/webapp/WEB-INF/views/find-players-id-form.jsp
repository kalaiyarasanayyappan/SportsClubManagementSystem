<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Players By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findplayers.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div class="center" id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getplayers">
				<div>
					<label for="playerId">Player Id</label>
					<div>
						<form:input path="playerId" />
					</div>
				</div>
					<br>
				<div>
					<label for="playerName">Player Name</label>
					<div>
						<form:input path="playerName" />
					</div>
				</div>
					<br>
				<div>
					<label for="sportsId">Sports Id</label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
					<br>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
					<br>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
					<br>
				<div>
					<label for="contact">Contact</label>
					<div>
						<form:input path="contact" />
					</div>
				</div>
					<br>
				<div>
					<label for="playerStatus">Player Status</label>
					<div>
						<form:input path="playerStatus" />
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
					<br>
				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" />
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

				<div></div>
			</form:form>
		</div>
	</div>
</body>
</html>