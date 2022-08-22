<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Sponsers By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findsponsers.css"%>
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
			<form:form action="" method="post" modelAttribute="getsponsers">
				<div>
					<label for="sponserId">SPONSERID</label>
					<div>
						<form:input path="sponserId" />
					</div>
				</div>
					<br>
				<div>
					<label for="sponserName">SPONSERNAME</label>
					<div>
						<form:input path="sponserName" />
					</div>
				</div>
					<br>
				<div>
					<label for="contact">CONTACT</label>
					<div>
						<form:input path="contact" />
					</div>
				</div>
					<br>
				<div>
					<label for="email">EMAIL</label>
					<div>
						<form:input path="email" />
					</div>
				</div>

				<div></div>
			</form:form>
		</div>
	</div>
</body>
</html>