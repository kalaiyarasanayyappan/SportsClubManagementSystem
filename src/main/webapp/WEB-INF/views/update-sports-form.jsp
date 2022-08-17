<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Sports</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updatesports.css"%>
</style>

</head>
<body>

	<div class="center" id="table root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updatesports">
				<div>
					<label for="sportsId"><h2>Sports Id</h2></label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
				<br>
				<div>
					<label for="sportsName"><h2>Sports Name</h2></label>
					<div>
						<form:input path="sportsName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<br>
				<form:errors path="sportsName" cssClass="text-danger" />
				<div>
					<label for="fees"><h2>Fees</h2></label>
					<div>
						<form:input path="fees" title="enter valid number"
							pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="inTime"><h2>In Time</h2></label>
					<div>
						<form:input path="inTime" type="time"/>
					</div>
				</div>
				<br>
				<div>
					<label for="outTime"><h2>Out Time</h2></label>
					<div>
						<form:input path="outTime" type="time"/>
					</div>
				</div>
				<br>
				<div>
					<label for="durations"><h2>Durations</h2></label>
					<div>
						<form:input path="durations" />
					</div>
				</div>

				<div>
					<form:button>Update </form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>