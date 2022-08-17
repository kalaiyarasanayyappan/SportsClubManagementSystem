<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Prizes</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updateprizes.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div class="center" id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateprizes">
				<div>
					<label for="dateOfPrize">Date of Price</label>
					<div>
						<form:input path="dateOfPrize" type="date" title="Enter Date"
							required="true" />
					</div>
				</div>
					<br>
				<div>
					<label for="title">Choose a title:</label> <br> <select
						name="title" id="title">
						<option>--Choose a title--</option>
						<option value="Man of match">Man of Match</option>
						<option value="best performer">Best Performer</option>
						<option value="game changer">game changer</option>

					</select>
				</div>
					<br>
				<div>
					<label for="playerId">PlayerId</label>
					<div>
						<form:input path="playerId" title="Enter player ID"
							required="true" />
					</div>
				</div>
					<br>
				<div>
					<label for="sportsId">Choose a sports:</label> <br> <select
						name="sportsId" id="sportsId">
						<option>--Choose a sports--</option>
						<option value="1000">cricket</option>
						<option value="1002">Tennis</option>
						<option value="1001">FootBall</option>
						<option value="1007">BaseketBall</option>
						<option value="1008">HandBall</option>
						<option value="1006">VolleyBall</option>

					</select>
				</div>
					<br>
				<div>
					<label for="positionNumber">Choose a position:</label> <br> <select
						name="positionNumber" id="positionNumber">
						<option>--Choose a position--</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>

					</select>

				</div>
	<br>
				<div>
					<label for="teamOrIndividual">team/Individual</label> <br> <select
						name="teamOrIndividual" id="teamOrIndividual">
						<option>--Choose--</option>
						<option value="Team">Team</option>
						<option value="Individual">Individual</option>


					</select>
				</div>
					<br>
				<div>
					<label for="competetionName">competetionName</label> <br> <select
						name="competetionName" id="competetionName">
						<option>--Choose competetion--</option>
						<option value="champion Trophy">champion Trophy</option>
						<option value="Wonder League">Wonder League</option>
						<option value="Best League">Best League</option>

					</select>
				</div>
					<br>
				<div>
					<label for="prizeAmount">PriceAmount</label>
					<div>
						<form:input path="prizeAmount" title="Enter Amount"
							required="true" />
					</div>
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>