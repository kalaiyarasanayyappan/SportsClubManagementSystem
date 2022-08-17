<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Playersfeesdetails By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findplayersfees.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div class="center"id="table root">
		<div id="form">
			<form:form action="" method="post"
				modelAttribute="getplayersfeesdetails">
				<div>
					<label for="paidDate">Paid Date</label>
					<div>
						<form:input path="paidDate" />
					</div>
				</div>
					<br>
				<div>
					<label for="playerId">Player Id</label>
					<div>
						<form:input path="playerId" />
					</div>
				</div>
					<br>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" />
					</div>
				</div>
					<br>
				<div>
					<label for="remarks">Remarks</label>
					<div>
						<form:input path="remarks" />
					</div>
				</div>
					<br>
				<div>
					<label for="recieptNumber">Reciept Number</label>
					<div>
						<form:input path="recieptNumber" />
					</div>
				</div>

			</form:form>
		</div>
	</div>
</body>
</html>