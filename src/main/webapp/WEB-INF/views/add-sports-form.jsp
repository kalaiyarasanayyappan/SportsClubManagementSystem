<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Sports</title>
<style type="text/css">
.c1{
background-color:red;
border:green 5px solid;
padding:20px;
}
</style>
</head>
<body>
  <div class="c1" id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addsports">
                <div>
                    <label for="sportsId">Sports Id</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
                <div>
                    <label for="sportsName">Sports Name</label>
                    <div>
                        <form:input path="sportsName" />
                    </div>
                </div>
                <div>
                    <label for="fees">Fees</label>
                    <div>
                        <form:input path="fees" />
                    </div>
                </div>
                <div>
                    <label for="inTime">In Time</label>
                    <div>
                        <form:input path="inTime" />
                    </div>
                </div>
                <div>
                    <label for="outTime">Out Time</label>
                    <div>
                        <form:input path="outTime" />
                    </div>
                </div>
                <div>
                    <label for="durations">Duration</label>
                    <div>
                        <form:input path="durations" />
                    </div>
                </div>
               
        <div>
            <form:button>Add Sports</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>