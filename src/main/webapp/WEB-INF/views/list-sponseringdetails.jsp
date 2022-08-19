<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sponseringdetails List</title>
<style type="text/css">
<%@
include
 
file="/WEB-INF/css/listsponseringdetails.css"%>
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
		<br>   <br>    
		<table class="table-center" border=1>
			       
			<thead>
				           
				<tr>
					 
					<th>SponseringDetailsId</th>          
					<th>SponserId</th>            
					<th>SportsId</th>            
					<th>Amount</th>            
					<th>Date of Sponsering</th>  
					<th>Mode of Payment</th>
					<th>RecieptNumber</th>
					<th>Update</th>
					<th>delete</th>                                  
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Sponseringdetails" items="${allsponseringdetails}">
            <tr>
						<td>${Sponseringdetails.sponseringDetailsId}</td>           
						<td>${Sponseringdetails.sponserId}</td>            
						<td>${Sponseringdetails.sportsId}</td>            
						<td>${Sponseringdetails.amount}</td>            
						<td>${Sponseringdetails.dateOfSponsering}</td>  
						<td>${Sponseringdetails.modeOfPayment}</td>  
						<td>${Sponseringdetails.recieptNumber}</td>
						<td><a
							href="/Sponsering_Details/updatesponseringdetails?sponseringDetailsId=${Sponseringdetails.sponseringDetailsId}">Update</a></td> 
						           
						<td><a
							href="/Sponsering_Details/deletesponseringdetailsform?sponseringDetailsId=${Sponseringdetails.sponseringDetailsId}">Delete</a></td> 
						                 
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
	<div class="center" id="table root">
		<div>
			<a href="/Sponsering_Details/addform"><h2>Add</h2></a>
		</div>
		<form action="getsponseringdetails">
			<div class="center">
				<input type="text" name="sponseringDetailsId" /> <input
					type="submit" value="Find" />
			</div>
		</form>
</body>
</html>

