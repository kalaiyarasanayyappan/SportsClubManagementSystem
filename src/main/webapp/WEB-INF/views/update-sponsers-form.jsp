<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Sponser</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updatesponsers.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Sponsers/getallsponsers"><h2>Back</h2></a>
		</div>
	<div class="center"id="table root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updatesponsers">

				<div>
					<label for="sponserName">Sponser Name</label>
					<div>
						<form:input path="sponserName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="sponserName" cssClass="text-danger" />
					<br>
				<div>
					<label for="contact">Contact</label>
					<div>
						<form:input path="contact" pattern="[1-9]{1}[0-9]{9}"
							title="Phone number should have atleast 10 digits"
							required="true" />
					</div>
				</div>
				<form:errors path="contact" cssClass="text-danger" />
					<br>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email ex: sports@gmail.com" required="true" />
					</div>
				</div>
				<form:errors path="email" cssClass="text-danger" />
					<br>

				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>