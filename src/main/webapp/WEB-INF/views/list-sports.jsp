<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sports List</title>
<style type="text/css">
<%@
include
 
file="/WEB-INF/css/listsports.css"%>
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
		   <br>   
		<table class="table-center" border=1>
			<caption></caption>
			       
			<thead>
				           
				<tr>
					           
					<th>SPORTSID</th>            
					<th>SPORTSNAME</th>            
					<th>FEES(Rs)</th>            
					<th>INTIME</th>            
					<th>OUTTIME</th>            
					<th>DURATION</th>
					<th>UPDATE</th>
					<th>DELETE</th>
					<th>SPONSERINGDETAILS</th> 
					<th>PLAYERDETAILS</th>                      
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
						<td><a href="/Sports/updatesports?id=${Sports.sportsId}">UPDATE</a></td> 
						<td><a href="/Sports/deletesportsform?id=${Sports.sportsId}">DELETE</a></td>
						         
						<td><a
							href="/Sports/getsportsbysponserdetails?id=${Sports.sportsId}">SPONSERINGDETAIL</a></td>
						<td><a
							href="/Sports/getsportsbyplayerdetails?id=${Sports.sportsId}">PLAYERDETAIL</a></td>


					</tr>
            </c:forEach>
				       
			</tbody>

		</table>
		<div class="center" id="table root">

			<a href="/Sports/addform"><h2>ADD</h2></a>
			<form action="getsports">

				<div class="center">

					<input type="text" name="sportsId" /> <input type="submit"
						value="FIND" />
				</div>

			</form>

		</div>
		       
	</div>
</body>
</html>

