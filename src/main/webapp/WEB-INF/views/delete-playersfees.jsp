<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Playersfees</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Sports Club Management </h1>
    <h3>Delete Players Fees</h3>
            <form action="deleteplayersfees" >
                <div>
                    RecieptNumber : <input type="text" name="recieptNumber" />
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>