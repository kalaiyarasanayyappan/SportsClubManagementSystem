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
<%@include file="/WEB-INF/css/findsports.css"%>
</style>
</head>
<body>
<br>
<div >
			<a href="/Sports/getallsports"><h2>Back</h2></a>
		</div>
	<div id="root">
		<div class="center"id="form">
			<form:form action="" method="post" modelAttribute="getsports">
				<div>
					<label for="sportsId"><h2>SPORTSID</h2></label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
				<br>
				<div>
					<label for="sportsName"><h2>SPORTSNAME</h2></label>
					<div>
						<form:input path="sportsName" />
					</div>
				</div>
				<br>
				<div>
					<label for="fees"><h2>FEES</h2></label>
					<div>
						<form:input path="fees" />
					</div>
				</div>
				<br>
				<div>
					<label for="inTime"><h2>INTIME</h2></label>
					<div>
						<form:input path="inTime" />
					</div>
				</div>
				<br>
				<div>
					<label for="outTime"><h2>OUTTIME</h2></label>
					<div>
						<form:input path="outTime" />
					</div>
				</div>
				,<br>
				<div>
					<label for="durations"><h2>DURATION</h2></label>
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