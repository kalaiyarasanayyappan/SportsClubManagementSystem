<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Players fees details</title>
<style type="text/css">

body{
background-image:
 url("https://cdn.pixabay.com/photo/2017/09/07/08/54/money-2724241_960_720.jpg");
 height: 768px;
width: 1366px;
/*  background-position: center; */
 background-size: cover;
 background-repeat: no-repeat;
 color: yellow;
}
</style>
</head>
<body>
	   
	<div id="table root">
	<div ><a href="/Players_Fees_Details/addform">Add</a></div>
<div ><a href="/Players_Fees_Details/updateplayersfeesform">Update</a></div>
<div ><a href="/Players_Fees_Details/getplayersfeesdetailsform">Find</a></div>
<div ><a href="/home/index">Home</a></div>
<!-- <div ><a href="/Players_Fees_Details/deleteplayersfeesdetailsform">Delete</a></div> -->
		   
		<table align= "center" border=1>
			       
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
						<td><a  href="/Players_Fees_Details/deleteplayersfeesdetailsform?id=${Players.playerId}">Delete</a></td>
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

