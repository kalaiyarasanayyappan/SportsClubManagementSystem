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
<div >
       
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
	<br>
	
	<div class="center" id="table root">
		
	</div>

	

	
  
	<div id="table root">
		   
		<table class="table-center" border=1>
			       
			<thead>
				           
				<tr>
					           
					<th>Sponser Id</th>            
					<th>Sponser Name</th>            
					<th>Contact</th>            
					<th>Email</th>
					<th>update</th>
					<th>delete</th>
					<th>sponseringDetails</th>                                    
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
							href="/Sponsers/updatesponsers?sponserId=${Sponsers.sponserId}">update</a></td>
						<td><a
							href="/Sponsers/deletesponsers?sponserId=${Sponsers.sponserId}">Delete</a></td>


						<td><a
							href="/Sponsers/getsponserssponseringdetails?id=${Sponsers.sponserId}">SponseringDetails</a></td> 
						                      
					</tr>
            </c:forEach>
				       
			</tbody>
			       
		</table>
		       
	</div>
	<a href="/Sponsers/addform"><h2>Add</h2></a>
	<form action="getsponsers">
		<div class="center">
			<input type="text" name="sponserId" /> <input type="submit"
				value="Find" />
		</div>
	</form>
	
</body>
</html>

