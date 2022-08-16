<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sports List</title>
<style type="text/css">
/* .c5{
color: yellow;
text-transform:uppercase;
word-spacing:1em;
} */
body{
background-image:
 url("https://cdn.wallpapersafari.com/11/50/EU4RxW.jpg");
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
	   
	<div  align="center" id="table root">
	<div ><a href="/Sports/addform"><h2>Add</h2></a></div>
<!-- <div ><a href="/Sports/updatesports">Update</a></div> -->
<!--  <div ><a href="/Sports/getsports?sportsId=">Find</a></div>  -->
<div  align="center"><a href="/home/index"><h2>Home</h2></a></div>
<!-- <div ><a href="/Sports/deletesportsform">Delete</a></div> -->
<!-- <div ><a href="/Sports/getallsports">Get All sports</a></div> -->
 <!-- <div ><a href="/Sports/getsportsbysponserdetails">sponsers</a></div>
<div ><a href="/Sports/getsportsbyplayerdetails">players</a></div>  -->
 <form action="getsports" >
   
                <div align="center">
                  
                    Id : <input type="text" name="sportsId" />
                    <div>
                    
                    </div>
                  
                </div>
              
                <input type="submit" value="get" />
               
            </form>
             
            <form action="updatesports" >
                <div align="center">
                   update: <input type="text" name="sportsId" />
                </div>
               
                <input type="submit" value="update" />
            </form>
              <form action="getsportsbysponserdetails" >
                <div align="center">
                    sponsers : <input type="text" name="id" />
                </div>
               
                <input type="submit" value="get" />
            </form>
              <form action="getsportsbyplayerdetails" >
                <div align="center">
                    players : <input type="text" name="id" />
                </div>
               
                <input type="submit" value="get" />
            </form>
            
		   
		<table  align= "center" border=1>
			       
			<thead>
				           
				<tr>
					           
					<th>SportsId</th>            
					<th>SportsName</th>            
					<th>Fees</th>            
					<th>In_time</th>            
					<th>Out_time</th>            
					<th>Durations</th>            
	            
				</tr>
				       
			</thead>
			       
			<tbody>
				           
				<c:forEach var="Sports" items="${allsports}">
            <tr>
						           
						<td>${Sports.sportsId}</td>            
						<td>${Sports.sportsName}</td>            
						<td>${Sports.fees}</td>            
						<td>${Sports.inTime}</td>            
						<td>${Sports.outTime}</td>            
						<td>${Sports.durations}</td>            
						 <%-- <td><a  href="/Sports/getsportsbysponserdetails?id=${Sports.sportsId}">SponseringDetails</a></td> 
						<td><a  href="/Sports/getsportsbyplayerdetails?id=${Sports.sportsId}">PlayerDetails</a></td> --%>
						<td><a  href="/Sports/deletesportsform?id=${Sports.sportsId}">Delete</a></td> 
						<%-- <td><a  href="/Sports/getsports?sportsId=${Sports.sportsId}">Find</a></td>        --%>
					</tr>
            </c:forEach>
				       
</tbody>

</table>
		       
	</div>
</body>
</html>

