<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sponser List</title>
<style type="text/css">

body{
background-image:
 url("https://nielsensports.com/wp-content/uploads/2021/02/GettyImages-1283204356z-1.jpg");
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
	<div ><a href="/Sponsers/addform">Add</a></div>
<div ><a href="/Sponsers/updatesponsersform">Update</a></div>
<div ><a href="/Sponsers/getsponsersform">Find</a></div>
<div ><a href="/home/index">Home</a></div>
<!-- <div > <a href="/Sponsers/deletesponsersform">Delete</a></div> -->
<!-- <div ><a href="/Sponsers/getsponserssponseringdetails">Sponsering Details</a></div>  -->
		   
		<table align= "center" border=1>
			       
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
						<td><a  href="/Sponsers/deletesponsersform?id=${Sponsers.sponserId}">Delete</a></td>
						<%-- <td><a  href="/Sponsers/getsponserssponseringdetails?id=${Sponsers.sponserId}">SponseringDetails</a></td>  --%>
						<td><a  href="/Sponsers/getsponserssponseringdetails?id=${Sponsers.sponserId}">SponseringDetails</a></td>            
						            
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
</body>
</html>

