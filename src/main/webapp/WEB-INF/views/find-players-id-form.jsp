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
	<div >
			<a href="/Players/getallplayers"><h2>Back</h2></a>
		</div>
	<div class="center" id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getplayers">
				<div>
					<label for="playerId">PLAYERID</label>
					<div>
						<form:input path="playerId" />
					</div>
				</div>
					<br>
				<div>
					<label for="playerName">PLAYER NAME</label>
					<div>
						<form:input path="playerName" />
					</div>
				</div>
					<br>
				<div>
					<label for="sportsId">SPORTS ID</label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
					<br>
				<div>
					<label for="gender">GENDER</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
					<br>
				<div>
					<label for="address">ADDRESS</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
					<br>
				<div>
					<label for="contact">CONTACT</label>
					<div>
						<form:input path="contact" />
					</div>
				</div>
					<br>
				<div>
					<label for="playerStatus">PLAYER STATUS</label>
					<div>
						<form:input path="playerStatus" />
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfBirth">DATE OF BIRTH</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
					<br>
				<div>
					<label for="joiningDate">JOINING DATE</label>
					<div>
						<form:input path="joiningDate" />
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

				<div></div>
			</form:form>
		</div>
	</div>
</body>
</html>