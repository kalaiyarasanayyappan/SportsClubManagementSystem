<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sponseringdetails List</title>
<style type="text/css">
.f5{
background-color:red;
text-transform:uppercase;
word-spacing:1em;
}
</style>
</head>
<body>
	   
	<div class="f5"id="table root">
		   
		<table>
			       
			<thead>
				           
				<tr>
					 <th>Sponsering Details Id</th>          
					<th>Sponser Id</th>            
					<th>Sports Id</th>            
					<th>Amount</th>            
					<th>Date of Sponsering</th>   
						<th>Mode of Payment</th> 
							<th>Reciept Number</th> 
								         
					            
	            
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
						         
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

