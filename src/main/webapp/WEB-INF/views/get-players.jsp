<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Players</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Sports Club Management</h1>
    <h3>Get Players Details</h3>
            <form action="getplayers" >
                <div>
                    PlayerId : <input type="text" name="playerId" />
                </div>
                <br>
                <input type="submit" value="Get" />
            </form>
</body>
</html>