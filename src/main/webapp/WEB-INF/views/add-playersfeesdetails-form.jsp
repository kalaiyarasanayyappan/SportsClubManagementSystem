<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Playersfeesdetails</title>
<style type="text/css">
<%@include file="/WEB-INF/css/addplayerfees.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div class="center" id="table root">
		<div id="form">
			<form:form action="add" method="post"
				modelAttribute="addplayersfeesdetails">
				<div>
					<label for="paidDate">Paid Date</label>
					<div>
						<form:input path="paidDate" type="date" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="playerId">Player Id</label>
					<div>
						<form:input path="playerId" title="Enter player Id"
							required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="amount">Amount</label>
					<div>
						<form:input path="amount" title="enter amount"
							pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true" />

					</div>
				</div>
				<br>
				<form:errors path="amount" cssClass="text-danger" />
				<div>
					<label for="remarks">Remarks</label>
					<div>
						<form:input path="remarks" title="Enter remarks" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="recieptNumber">recieptNumber</label>
					<div>
						<form:input path="recieptNumber" pattern="^[0-9]{6}$"
							title="recieptNumber should have atleast 6 digits"
							required="true" />
					</div>
				</div>
				<br>
				<form:errors path="recieptNumber" cssClass="text-danger" />

				<div>
					<form:button>Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>