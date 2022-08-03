<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Players fees details</title>
</head>
<body>
	   
	<div id="table root">
		   
		<table>
			       
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
						
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

