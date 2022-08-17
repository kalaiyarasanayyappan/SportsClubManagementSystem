<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sponseringdetails List</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listsponseringdetails.css"%>
</style>
</head>
<body>
	<br>
	<br>    
	<div class="center" id="table root">
		<div>
			<a href="/Sponsering_Details/addform"><h2>Add</h2></a>
		</div>
		<div>
			<a href="/home/index"><h2>Home</h2></a>
		</div>

		<form action="updatesponseringdetails">
			<div class="center">
				<input type="text" name="sponseringDetailsId" /> <input
					type="submit" value="update" />
			</div>
		</form>
		<br>
		<form action="getsponseringdetails">
			<div class="center">
				<input type="text" name="sponseringDetailsId" /> <input
					type="submit" value="Find" />
			</div>
		</form>
		   
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
							href="/Sponsering_Details/deletesponseringdetailsform?id=${Sponseringdetails.sponseringDetailsId}">Delete</a></td> 
						                 
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

