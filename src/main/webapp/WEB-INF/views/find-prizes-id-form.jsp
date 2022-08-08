<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Prizes By Id</title>
<style type="text/css">
.e3{
background-color:red;
}
</style>
</head>
<body>
    <div class="e3"id="root">
        <div id="form">
            <form:form action="" method="post"
                modelAttribute="getprizes">
                 <div>
                    <label for="PrizeId">PrizeId</label>
                    <div>
                        <form:input path="PrizeId" />
                    </div>
                </div>
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
                    <label for="positionNumber">Position Number</label>
                    <div>
                        <form:input path="positionNumber" />
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
            <form:button>Find Prizes By Id</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>