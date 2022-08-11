<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sponsers</title>
<style type="text/css">
.d7{
background-color:red;
text-transform:uppercase;
word-spacing:1em;
}</style>
</head>
<body>
<div class="d7"id="root">
		<div id="getsponserssponseringdetails">
			<form:form action="" method="post" modelAttribute="spons">
				  <div>
                    <label for="sponserId">Sponser Id</label>
                    <div>
                        <form:input path="sponserId" />
                    </div>
                </div>
                <div>
                    <label for="sponserName">Sponser Name</label>
                    <div>
                        <form:input path="sponserName" />
                    </div>
                </div>
                <div>
                    <label for="contact">Contact</label>
                    <div>
                        <form:input path="contact" />
                    </div>
                </div>
                <div>
                    <label for="email">Email</label>
                    <div>
                        <form:input path="email" />
                    </div>
                </div>
                
			 </form:form>
		</div>
	</div>
	<div id="getsponsersponseringdetails">
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
				<c:forEach var="Sponseringdetails" items="${sponserdetails}">
					<tr>
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