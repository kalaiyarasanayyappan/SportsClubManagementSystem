<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Staff</title>
<style>
* {
    text-align: center;
}
</style>
</head>
<body>
    <h1>Sports Club Management </h1>
    <h3>Delete Staff Details</h3>
            <form action="deletestaff" >
                <div>
                    StaffId : <input type="text" name="staffId" />
                </div>
                <br>
                <input type="submit" value="Delete" />
            </form>
</body>
</html>