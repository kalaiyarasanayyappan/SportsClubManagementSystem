<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Prizes</title>
</head>
<body>
  <div id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addprizes">
                <div>
                    <label for="dateOfPrize">Date of Price</label>
                    <div>
                        <form:input path="dateOfPrize" />
                    </div>
                </div>
                <div>
                    <label for="title">Title</label>
                    <div>
                        <form:input path="title" />
                    </div>
                </div>
                <div>
                    <label for="playerId">Player Id</label>
                    <div>
                        <form:input path="playerId" />
                    </div>
                </div>
                <div>
                    <label for="sportsId">Sports Id</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
                <div>
                    <label for="position">Position</label>
                    <div>
                        <form:input path="position" />
                    </div>
                </div>
                <div>
                    <label for="teamOrIndividual">Team  Or Individual</label>
                    <div>
                        <form:input path="teamOrIndividual" />
                    </div>
                </div>
                 <div>
                    <label for="competetionName">Competetion Name</label>
                    <div>
                        <form:input path="competetionName" />
                    </div>
                </div>
                 <div>
                    <label for="prizeAmount">Price Amount</label>
                    <div>
                        <form:input path="prizeAmount" />
                    </div>
                </div>
                 
               
        <div>
            <form:button>Add Prizes</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>