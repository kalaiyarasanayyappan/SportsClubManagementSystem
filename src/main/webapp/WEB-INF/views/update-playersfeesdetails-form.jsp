<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update PlayersFeesDetails</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updateplayersfees.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Players_Fees_Details/getallplayersfeesdetails"><h2>Back</h2></a>
		</div>
	<div class="center"id="table root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateplayersfeesdetails">
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
				<form:errors path="amount" cssClass="text-danger" />
					<br>
				<div>
					<label for="remarks">Remarks</label>
					<div>
						<form:input path="remarks" title="Enter remarks" required="true" />
					</div>
				</div>
					<br>
				
	<br>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>