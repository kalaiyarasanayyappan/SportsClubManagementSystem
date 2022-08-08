<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sponser List</title>
<style type="text/css">
.d6{
background-color:red;
}
</style>
</head>
<body>
	   
	<div class="d6"id="table root">
		   
		<table>
			       
			<thead>
				           
				<tr>
					           
					<th>Sponser Id</th>            
					<th>Sponser Name</th>            
					<th>Contact</th>            
					<th>Email</th>            
					            
	            
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Sponsers" items="${allsponsers}">
            <tr>
						           
						<td>${Sponsers.sponserId}</td>            
						<td>${Sponsers.sponserName}</td>            
						<td>${Sponsers.contact}</td>            
						<td>${Sponsers.email}</td>            
						         
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

