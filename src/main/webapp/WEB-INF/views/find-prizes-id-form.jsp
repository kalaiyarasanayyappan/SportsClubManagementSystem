<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Prizes By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findprizes.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Prizes/getallprizes"><h2>Back</h2></a>
		</div>
	<div class="center" id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getprizes">
				<div>
					<label for="PrizeId">PRIZE ID</label>
					<div>
						<form:input path="PrizeId" />
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfPrize">DATE OF PRIZE</label>
					<div>
						<form:input path="dateOfPrize" />
					</div>
				</div>
					<br>
				<div>
					<label for="title">TITLE</label>
					<div>
						<form:input path="title" />
					</div>
				</div>
					<br>
				<div>
					<label for="playerId">PLAYERID</label>
					<div>
						<form:input path="playerId" />
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
					<label for="positionNumber">POSITION NUMBER</label>
					<div>
						<form:input path="positionNumber" />
					</div>
				</div>
					<br>
				<div>
					<label for="teamOrIndividual">TEAM/INDIVIDUAL</label>
					<div>
						<form:input path="teamOrIndividual" />
					</div>
				</div>
					<br>
				<div>
					<label for="competetionName">COMPETETION NAME</label>
					<div>
						<form:input path="competetionName" />
					</div>
				</div>
					<br>
				<div>
					<label for="prizeAmount">PRIZE AMOUNT</label>
					<div>
						<form:input path="prizeAmount" />
					</div>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>