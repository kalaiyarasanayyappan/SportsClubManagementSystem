<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Staff By Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findstaff.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Staff/getallstaff"><h2>Back</h2></a>
		</div>
	<div class="center" id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstaff">
				<div>
					<label for="staffId">Staff Id</label>
					<div>
						<form:input path="staffId" />
					</div>
				</div>
					<br>
				<div>
					<label for="staffName">Staff Name</label>
					<div>
						<form:input path="staffName" />
					</div>
				</div>
					<br>
				<div>
					<label for="salary">Salary</label>
					<div>
						<form:input path="salary" />
					</div>
				</div>
					<br>
				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" />
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
					<br>
				<div>
					<label for="contact">Contact</label>
					<div>
						<form:input path="contact" />
					</div>
				</div>
					<br>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
					<br>
				<div>
					<label for="staffRole">Staff Role</label>
					<div>
						<form:input path="staffRole" />
					</div>
				</div>
					<br>
				<div>
					<label for="coachingSports">Coaching Sports</label>
					<div>
						<form:input path="coachingSports" />
					</div>
				</div>
					<br>

				<div>
					<label for="email">Email</label>
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