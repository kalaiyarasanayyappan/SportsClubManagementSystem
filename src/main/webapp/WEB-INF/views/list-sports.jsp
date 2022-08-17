<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sports List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listsports.css"%>
</style>

</head>
<body>
	   <br><br><br><br>
	<div class="center" id="table root">
		<div>
			<a href="/Sports/addform"><h2>Add</h2></a>
		</div>
		<div class="center">
			<a href="/home/index"><h2>Home</h2></a>
		</div>

		<form action="getsports">

			<div class="center">

				<input type="text" name="sportsId" /> <input type="submit"
					value="Find" />
			</div>

		</form>
<br>
		<form action="updatesports">
			<div class="center">
				<input type="text" name="sportsId" /> <input type="submit"
					value="update" />
			</div>
		</form>

		   
		<table class="table-center" border=1>
			       
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
						<td><a
							href="/Sports/getsportsbysponserdetails?id=${Sports.sportsId}">SponseringDetails</a></td>
						<td><a
							href="/Sports/getsportsbyplayerdetails?id=${Sports.sportsId}">PlayerDetails</a></td>
						<td><a href="/Sports/deletesportsform?id=${Sports.sportsId}">Delete</a></td>

					</tr>
            </c:forEach>
				       
			</tbody>

		</table>
		       
	</div>
</body>
</html>

