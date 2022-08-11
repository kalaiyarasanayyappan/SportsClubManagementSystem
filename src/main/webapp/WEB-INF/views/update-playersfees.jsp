<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Playersfees</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Sports Club Management </h1>
    <h3>Update playersfees Details</h3>
            <form action="updateplayersfeesdetails" >
                <div>
                    RecieptNumber : <input type="text" name="recieptNumber" />
                </div>
                <br>
                <input type="submit" value="update" />
            </form>
</body>
</html>