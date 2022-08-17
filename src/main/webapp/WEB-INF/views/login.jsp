<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page Design</title>
<style>
table {
	background-color: black;
	border: 8px solid white;
	border-radius: 25px;
	background: rgba(0, 0, 0, 0.5);
}

#type {
	width: 300px;
	height: 32px;
	border: 0;
	outline: 0;
	background: transparent;
	border-bottom: 3px solid white;
	color: white;
	font-size: 25px;
}

input::-webkit-input-placeholder {
	font-size: 20px;
	line-height: 3;
	color: white;
}

#btn {
	width: 250px;
	background-color: orange;
	height: 35px;
	font-size: 20px;
}

body {
	background-image: url("https://wallpaperaccess.com/full/1900851.png");
	 height: 768px;
	width: 1366px;
	background-position: center;
	background-size: cover;
}
</style>
</head>

<body>

	<br>
	<br>
	<br>
	<br>
	<table width="25%" border="0" cellspacing="40" align="center">
		<tr>
		<tr>
			<td><input type="text" placeholder="Email" id="type"></td>
		</tr>
		<tr>
			<td><input type="password" placeholder="*********" id="type"></td>
		</tr>
		<tr>
			<td class="center"><input type="submit" value="login" id="btn"></td>
		</tr>

	</table>
	<h1 class="center">SPORTS CLUB MANAGEMENT</h1>
	<div class="menu-bar">
		<ul>
			<li class="active"><a href="/home/index">Index</a></li>

		</ul>
	</div>
</body>
</html>