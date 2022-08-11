<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get SponsersSponseringDetails</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Sports Club Management </h1>
    <h3>get SponsersSponseringDetails</h3>
            <form action="getsponserssponseringdetails" >
                <div>
                    SponserId : <input type="text" name="sponserId" />
                </div>
                <br>
                <input type="submit" value="get" />
            </form>
</body>
</html>