<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
</head>
<body>
	   
	<div id="table root">
		   
		<table>
			       
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
					<th>Manager Id</th> 
					<th>Email</th>             
	            
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Staff" items="${allStaff}">
            <tr>
						           
						<td>${Staff.staff_id}</td>            
						<td>${Staff.staff_name}</td>            
						<td>${Staff.salary}</td>            
						<td>${Staff.joining_date}</td>            
						<td>${Staff.date_of_birth}</td>            
						<td>${Staff.contact}</td> 
						<td>${Staff.address}</td>
						<td>${Staff.staff_role}</td>
						<td>${Staff.coaching_sports}</td>
						<td>${Staff.manager_id}</td>
						<td>${Staff.email}</td>           
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

