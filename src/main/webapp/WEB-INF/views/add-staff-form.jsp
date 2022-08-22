<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.chainsys.sportsclub.businesslogic.Logic"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Staff</title>
<style type="text/css">
<%@include file="/WEB-INF/css/addstaff.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div >
			<a href="/Staff/getallstaff"><h2>Back</h2></a>
		</div>
	<div class="center"id ="table root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addstaff">
				<div>
					<label for="staffName">STAFF NAME</label>
					<div>
						<form:input path="staffName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="staffName" cssClass="text-danger" />
					<br>
				<div>
					<label for="salary">SALARY</label>
					<div>
						<form:input path="salary" title="enter valid number"
							pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true" />

					</div>
				</div>
				<form:errors path="salary" cssClass="text-danger" />
					<br>
				<div>
					<label for="joiningDate">JOINING DATE</label>
					<div>
						<form:input path="joiningDate" type="date" title="Enter date" required="true"/>
					</div>
				</div>
					<br>
				<div>
					<label for="dateOfBirth">DATE OF BIRTH</label>
					<div>
						<form:input path="dateOfBirth" type="date" max="<%=Logic.getMinAge()%>" title="Enter date of birth" required="true" />
					</div>
				</div>
				<br>	
				<div>
					<label for="contact">CONTACT</label>
					<div>
						<form:input path="contact" pattern="[1-9]{1}[0-9]{9}"
							title="Phone number should have atleast 10 digits"
							required="true" />
					</div>
				</div>
				<form:errors path="contact" cssClass="text-danger" />
				<br>	
				<div>
					<label for="address">ADDRESS</label>
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
					<label for="email">EMAIL</label>
					<div>
						<form:input path="email"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Invalid email ex: sports@gmail.com" required="true" />
					</div>
				</div>
				<form:errors path="email" cssClass="text-danger" />
	<br>
				<div>
					<form:button>ADD</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>