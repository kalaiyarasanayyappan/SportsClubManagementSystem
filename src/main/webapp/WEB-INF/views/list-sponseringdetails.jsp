<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sponseringdetails List</title>
</head>
<body>
	   
	<div id="table root">
		   
		<table>
			       
			<thead>
				           
				<tr>
					           
					<th>Sponser Id</th>            
					<th>Sports Id</th>            
					<th>Amount</th>            
					<th>Date of Sponsering</th>   
						<th>Mode of Payment</th> 
							<th>Reciept Number</th> 
								         
					            
	            
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Sponsersingdetails" items="${allsponseringdetails}">
            <tr>
						           
						<td>${Sponsersingdetails.sponserId}</td>            
						<td>${Sponsersingdetails.sportsId}</td>            
						<td>${Sponsersingdetails.amount}</td>            
						<td>${Sponsersingdetails.dateOfSponsering}</td>  
						<td>${Sponsersingdetails.modeOfPayment}</td>  
						<td>${Sponsersingdetails.recieptNumber}</td>            
						         
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

