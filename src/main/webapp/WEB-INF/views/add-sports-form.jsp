<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Sports</title>
<style type="text/css">
<%@include file="/WEB-INF/css/addsports.css"%>
</style>
</head>
<body>
	<div class="center">
		<a href="/home/index"><h2>Home</h2></a>
	</div>
	<div id="root">
		<div class="center" id="form">
			<form:form action="add" method="post" modelAttribute="addsports">
				<br>
				<div>
					<label for="sportsName"><h2>SportsName</h2></label>
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
					<label for="inTime"><h2>InTime</h2></label>
					<div>
						<form:input path="inTime"  type="time"/>
					</div>
				</div>
				
				<br>
				<div>
					<label for="outTime"><h2>OutTime</h2></label>
					<div>
						<form:input path="outTime" type="time"/>
					</div>
				</div>
				
				<br>
				<div>
					<label for="durations"><h2>Duration</h2></label>
					<div>
						<form:input path="durations" />
					</div>
				</div>
				<br>
				<div>
					<form:button>Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById('in').value = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
	</script>
</body>
</html>