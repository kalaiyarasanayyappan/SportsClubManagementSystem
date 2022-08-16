<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sponseringdetails List</title>
<style type="text/css">
/* .f5{
background-color:#C18A7E;
text-transform:uppercase;
word-spacing:1em;
} */
body{
background-image:
 url("https://www.socialtables.com/wp-content/uploads/2016/09/iStock_84793351_LARGE-copy-1.jpg");
 height: 768px;
width: 1366px;
 /* background-position: center; */
 background-size: cover;
 background-repeat: no-repeat;
 color: blue;

}
</style>
</head>
<body>
	   
	<div id="table root">
	<div ><a href="/Sponsering_Details/addform">Add</a></div>
<div ><a href="/Sponsering_Details/updatesponseringform">Update</a></div>
<div ><a href="/Sponsering_Details/getsponseringdetailsform">Find</a></div>
<div ><a href="/home/index">Home</a></div>
<!-- <div ><a href="/Sponsering_Details/deletesponseringdetailsform">Delete</a></div> -->

		   
		<table align= "center" border=1>
			       
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
						  <td><a  href="/Sponsering_Details/deletesponseringdetailsform?id=${Sponseringdetails.sponseringDetailsId}">Delete</a></td>       
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

