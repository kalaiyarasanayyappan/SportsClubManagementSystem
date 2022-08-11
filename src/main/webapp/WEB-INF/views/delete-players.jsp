<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Players</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Sports Club Management</h1>
    <h3>Delete Players Details</h3>
            <form action="deleteplayers" >
                <div>
                    PlayerId : <input type="text" name="playerId" />
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>