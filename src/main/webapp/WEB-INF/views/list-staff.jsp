<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff List</title>
<style type="text/css">

body{
background-image:
 url("https://mytreno.com/wp-content/uploads/2021/03/coach-syles-sports.jpg");
 height: 768px;
width: 1366px;
/*  background-position: center; */
 background-size: cover;
 color: yellow;
}
</style>
</head>
<body>
	   
	<div id="table root">
	<div ><a href="/Staff/addform">Add</a></div>
<div ><a href="/Staff/updatestaffform">Update</a></div>
<div ><a href="/Staff/getstaffform">Find</a></div>
<div ><a href="/home/index">Home</a></div>


	
		   
		<table  align= "center" border=1>
			       
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
						  <%-- <td><a  href="/Staff/getstaffform?id=${Staff.staffId}">Find</a></td> --%>
						  <td><a  href="/Staff/deletestaffform?id=${Staff.staffId}">Delete</a></td>           
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table> 
		       
	</div>
</body>
</html>

