<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports List</title>
<style type="text/css">
.c5{
background-color:red;
text-transform:uppercase;
word-spacing:1em;
}
</style>
</head>
<body>
	   
	<div class="c5"id="table root">
	<div ><a href="/Sports/addform">Add</a></div>
<div ><a href="/Sports/updatesportsform">Update</a></div>
<div ><a href="/Sports/getsportsform">Find</a></div>
<!-- <div ><a href="/Sports/deletesportsform">Delete</a></div> -->
<!-- <div ><a href="/Sports/getallsports">Get All sports</a></div> -->
<!-- <div ><a href="/Sports/getsportsbysponserdetails">sponsersDetails</a></div>
<div ><a href="/Sports/getsportsbyplayerdetails">playersDetails</a></div> -->
		   
		<table>
			       
			<thead>
				           
				<tr>
					           
					<th>SportsId</th>            
					<th>SportsName</th>            
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
						<td><a  href="/Sports/getsportsbysponserdetails?id=${Sports.sportsId}">SponseringDetails</a></td> 
						<td><a  href="/Sports/getsportsbyplayerdetails?id=${Sports.sportsId}">PlayerDetails</a></td>
						<td><a  href="/Sports/deletesportsform?id=${Sports.sportsId}">Delete</a></td>    
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

