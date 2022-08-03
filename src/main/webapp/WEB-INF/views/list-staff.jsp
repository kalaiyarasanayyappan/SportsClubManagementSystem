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
						<td>${Staff.managerId}</td>
						<td>${Staff.email}</td>           
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

