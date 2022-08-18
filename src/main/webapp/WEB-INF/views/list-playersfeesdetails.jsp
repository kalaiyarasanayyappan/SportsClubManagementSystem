<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Players fees details</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listplayersfees.css"%>
</style>
</head>
<body>
	 
	<br>
	<br>  
	<div class="center" id="table root">
		<div>
			<a href="/Players_Fees_Details/addform"><h2>Add</h2></a>
		</div>
		<div>
			<a href="/home/index"><h2>Home</h2></a>
		</div>
		   
		<form action="updateplayersfeesdetails">
			<div class="center">
				<input type="text" name="recieptNumber" /> <input type="submit"
					value="update" />
			</div>
		</form>
		<br>
		<form action="getplayersfeesdetails">
			<div class="center">
				<input type="text" name="recieptNumber" /> <input type="submit"
					value="Find" />
			</div>
		</form>
		<table class="table-center"  border=1>
			       
			<thead>
				           
				<tr>
					           
					<th>paid Date</th>            
					<th>Player Id</th>            
					<th>Amount</th>            
					<th>Remarks</th>            
					<th>Reciept Number</th>            


				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Playersfeesdetails" items="${allplayersfeesdetails}">
            <tr>
						           
						<td>${Playersfeesdetails.paidDate}</td>            
						<td>${Playersfeesdetails.playerId}</td>            
						<td>${Playersfeesdetails.amount}</td>            
						<td>${Playersfeesdetails.remarks}</td>            
						<td>${Playersfeesdetails.recieptNumber}</td>            
						<td><a
							href="/Players_Fees_Details/deleteplayersfees?recieptNumber=${Playersfeesdetails.recieptNumber}">Delete</a></td>
						           
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

