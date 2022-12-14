<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.sportsclub.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updatestaff.css"%>
</style>
</head>
<body>
	<br>
	
	<div >
			<a href="/Staff/getallstaff"><h2>Back</h2></a>
		</div>
	<div class="center" id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatestaff">

				<div>
					<label for="staffName">StaffName</label>
					<div>
						<form:input path="staffName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="staffName" cssClass="text-danger" />
					<br>
				<div>
					<label for="salary">Salary(RS)</label>
					<div>
						<form:input path="salary" title="enter valid number"
							pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true" />

					</div>
				</div>
				<form:errors path="salary" cssClass="text-danger" />
					<br>
				<div>
					<label for="joiningDate">Joining Date</label>
					<div>
						<form:input path="joiningDate" type="date" title="Enter date"
							required="true" />
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfBirth">Date of Birth</label>
					<div>
						<form:input path="dateOfBirth" type="date" max="<%=Logic.getMinAge()%>"
							title="Enter date of birth" required="true" />
					</div>
				</div>
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
					<label for="address">Address</label>
					<div>
						<form:input path="address"
							title="Address should atleast contain 10 characters"
							required="true" />
					</div>
				</div>
				<form:errors path="address" cssClass="text-danger" />
					<br>
				<div>
					<label for="staffRole">choose a Role</label> <br> <select
						name="staffRole" id="staffrole">
						<option>--Choose a role--</option>
						<option value="admin">admin</option>
						<option value="labour">labour</option>
						<option value="couching sports">couching sports</option>

					</select>
				</div>
	<br>
				<div>
					<label for="coachingSports">choose a couchingsports</label> <br>

					<select name="coachingSports" id="coachingSports">
						<option>--Choose a couchingsports--</option>
						<option value="cricket">cricket</option>
						<option value="Tennis">Tennis</option>
						<option value="volleyball">volleyball</option>
						<option value="Football">Football</option>
						<option value="Nothing">Nothing</option>

					</select>

				</div>
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

				<div>
					<form:button>Update </form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>