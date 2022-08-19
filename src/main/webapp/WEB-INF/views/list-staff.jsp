<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style type="text/css">
<%@
include
 
file="/WEB-INF/css/liststaff.css"%>
</style>
</head>
<body>
	<div>

		<div id="root">
			<nav class="navbar">
				<div class="navbar__container">
					<a href="#" id="navbar__logo">Sports Club</a>

					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/home/index"
							class="navbar__links">Home</a></li>

					</ul>
				</div>
			</nav>
		</div>
		   
		<div class="center" id="table root">


			<br>    
			<table class="table-center" border=1>
				       
				<thead>
					           
					<tr>
						           
						<th>Staff Id</th>            
						<th>Staff Name</th>            
						<th>Salary</th>            
						<th>Joining Date</th>            
						<th>Date of Birth</th>            
						<th>Contact</th>
						<th>Address</th>
						<th>Staff Role</th>
						<th>Coaching Sports</th>

						<th>Email</th>
						<th>update</th>
						<th>delete</th>                       
					</tr>
					       
				</thead>
				       
				<tbody>
					           
					<c:forEach var="Staff" items="${allstaff}">
            <tr>
							<td>${Staff.staffId}</td>            
							<td>${Staff.staffName}</td>            
							<td>${Staff.salary}</td>            
							<td>${Staff.joiningDate}</td>            
							<td>${Staff.dateOfBirth}</td>            
							<td>${Staff.contact}</td>
							<td>${Staff.address}</td>
							<td>${Staff.staffRole}</td>
							<td>${Staff.coachingSports}</td>

							<td>${Staff.email}</td>
							<td><a href="/Staff/updatestaff?staffId=${Staff.staffId}">update</a></td>
							 
							<td><a href="/Staff/deletestaff?staffId=${Staff.staffId}">Delete</a></td>
							         
						</tr>
            </c:forEach>
					       
				</tbody>
				       
			</table>
			       
		</div>
		<div>
			<a href="/Staff/addform"><h2>Add</h2></a>
		</div>
		<form action="getstaff">

			<div class="center">
				<input type="text" name="staffId" /> <input type="submit"
					value="Find" />
			</div>
		</form>
</body>
</html>

