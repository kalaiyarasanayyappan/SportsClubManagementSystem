<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Prizes</title>
<style type="text/css">
.e2{
background-color:#A1E2E8;
border:1px green;
border-radius: 15px;
list-style:square
}
</style>
</head>
<body>
    <div class="e2"id="root">
        <div id="form">
            <form:form action="update" method="post" modelAttribute="updateprizes">
             <%-- <div>
                    <label for="PrizeId">PrizeId</label>
                    <div>
                        <form:input path="PrizeId" />
                    </div>
                </div> --%>
                 <div>
                    <label for="dateOfPrize">Date of Price</label>
                    <div>
                        <form:input path="dateOfPrize" type="date"/>
                    </div>
                </div>
                <div>
                    <label for="title">Title</label>
                    <div>
                        <form:input path="title" />
                    </div>
                </div>
                <div>
                    <label for="playerId">PlayerId</label>
                    <div>
                        <form:input path="playerId" />
                    </div>
                </div>
                <div>
                    <label for="sportsId">SportsId</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
                <div>
                    <label for="positionNumber">PositionNumber</label>
                    <div>
                        <form:input path="positionNumber" />
                    </div>
                </div>
                <div>
                    <label for="teamOrIndividual">Team/Individual</label>
                    <div>
                        <form:input path="teamOrIndividual" />
                    </div>
                </div>
                 <div>
                    <label for="competetionName">CompetetionName</label>
                    <div>
                        <form:input path="competetionName" />
                    </div>
                </div>
                 <div>
                    <label for="prizeAmount">PriceAmount</label>
                    <div>
                        <form:input path="prizeAmount" />
                    </div>
                </div>
                 
               
        <div>
            <form:button>Update Prizes</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>