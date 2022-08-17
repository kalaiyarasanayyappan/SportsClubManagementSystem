<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Sports By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/addsports.css"%>
</style>
</head>
<body>
	<div id="root">
		<div class="center"id="form">
			<form:form action="" method="post" modelAttribute="getsports">
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
						<form:input path="sportsName" />
					</div>
				</div>
				<br>
				<div>
					<label for="fees"><h2>Fees</h2></label>
					<div>
						<form:input path="fees" />
					</div>
				</div>
				<br>
				<div>
					<label for="inTime"><h2>In Time</h2></label>
					<div>
						<form:input path="inTime" />
					</div>
				</div>
				<br>
				<div>
					<label for="outTime"><h2>Out Time</h2></label>
					<div>
						<form:input path="outTime" />
					</div>
				</div>
				,<br>
				<div>
					<label for="durations"><h2>Durations</h2></label>
					<div>
						<form:input path="durations" />
					</div>
				</div>

				<div></div>
			</form:form>
		</div>
	</div>
</body>
</html>