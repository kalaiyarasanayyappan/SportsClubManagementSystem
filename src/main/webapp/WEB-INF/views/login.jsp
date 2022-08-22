<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page Design</title>
<style><%@include file ="/WEB-INF/css/login.css"%></style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<form:form modelAttribute="adminlogin" action="adminlogin" method="post">
	<h1 class="center">SPORTS CLUB MANAGEMENT</h1>
	
		<table class="center">
			<caption></caption>
			<header>
			</header>
			<tr>
				<td>EMAIL</td>
			</tr>
			<tr>
				<td><input type="text" placeholder="Email"  name="Email" id="adminEmail"
					name="adminEmail"></td>
			</tr>
			<tr>
				<td>PASSWORD</td>
			</tr>
			<tr>
				<td><input type="password" placeholder="*********" name="password"
					id="adminPassword" name="adminPassword"></td>
			</tr>
			<tr>
				<td class="center"><input type="submit" value="login" id="btn"></td>
			</tr>
		</table>
	</form:form>
	
</body>
</html>