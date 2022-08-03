<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports List</title>
</head>
<body>
	   
	<div id="table root">
		   
		<table>
			       
			<thead>
				           
				<tr>
					           
					<th>Sports Id</th>            
					<th>Sports Name</th>            
					<th>Fees</th>            
					<th>In_time</th>            
					<th>Out_time</th>            
					<th>Durations</th>            
	            
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Sports" items="${allsports}">
            <tr>
						           
						<td>${Sports.sportsId}</td>            
						<td>${Sports.sportsName}</td>            
						<td>${Sports.fees}</td>            
						<td>${Sports.inTime}</td>            
						<td>${Sports.outTime}</td>            
						<td>${Sports.durations}</td>            
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

