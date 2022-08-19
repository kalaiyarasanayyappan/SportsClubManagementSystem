<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page Design</title>
<style>
<%@
include
 
file="/WEB-INF/css/login.css"%>
</style>
</head>

<body>

	<br>
	<br>
	<br>
	<br>
	<form action="adminlogin" method="post" modelAttribute="adminlogin">
		<table width="25%" border="0" cellspacing="40" align="center">
			<!-- <thead>
		<tr>
		<th>Email</th>
		<th>Password</th>
		</tr>
		</thead> -->
			<tr>
				<td>Email</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="Email" id="adminEmail"
					name="adminEmail"></td>
			</tr>
			<tr>
				<td>Password</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="*********"
					id="adminPassword" name="adminPassword"></td>
			</tr>
			<tr>
				<td class="center"><input type="submit" value="login" id="btn"></td>
			</tr>
		</table>
	</form>
	<h1 class="center">SPORTS CLUB MANAGEMENT</h1>
	<!-- <div class="menu-bar">
		<ul>
			<li class="active"><a href="/home/index">Index</a></li>

		</ul>
	</div> -->
</body>
</html>