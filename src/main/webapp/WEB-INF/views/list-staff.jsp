<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/liststaff.css"%>
</style>
</head>
<body>
	 
	<br>
	<br>  
	<div class="center" id="table root">
		<div>
			<a href="/Staff/addform"><h2>
					Add
					<h2></h2></a>
		</div>
		<div>
			<a href="/home/index"><h2>Home</h2></a>
		</div>
		<form action="updatestaff">

			<div class="center">
				<input type="text" name="staffId" /> <input type="submit"
					value="update" />
			</div>
		</form>
		<br>
		<form action="getstaff">

			<div class="center">
				<input type="text" name="staffId" /> <input type="submit"
					value="Find" />
			</div>
		</form>
		   
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
						<td><a href="/Staff/deletestaffform?id=${Staff.staffId}">Delete</a></td>
						         
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

