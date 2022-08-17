<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sponser List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listsponsers.css"%>
</style>
</head>
<body>
	<br>
	<br>
	<div class="center" id="table root">
		<a href="/Sponsers/addform"><h2>Add</h2></a>
	</div>

	<div class="center">
		<a href="/home/index"><h2>Home</h2></a>
	</div>
	<form action="updatesponsers">
		<div class="center">
			<input type="text" name="sponserId" /> <input type="submit"
				value="update" />
		</div>
	</form>
	<br>
	<form action="getsponsers">
		<div class="center">
			<input type="text" name="sponserId" /> <input type="submit"
				value="Find" />
		</div>
	</form>
	<br>
	<br>   
	<div id="table root">
		   
		<table class="table-center" border=1>
			       
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

						<td><a
							href="/Sponsers/deletesponsersform?id=${Sponsers.sponserId}">Delete</a></td>


						<td><a
							href="/Sponsers/getsponserssponseringdetails?id=${Sponsers.sponserId}">SponseringDetails</a></td> 
						                      
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

