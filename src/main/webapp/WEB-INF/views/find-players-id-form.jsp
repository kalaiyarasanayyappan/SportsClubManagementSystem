<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Players By Id</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="" method="post"
                modelAttribute="getplayers">
                 <div>
                    <label for="playerId">Player Id</label>
                    <div>
                        <form:input path="playerId" />
                    </div>
                </div>
                <div>
                    <label for="playerName">Player Name</label>
                    <div>
                        <form:input path="playerName" />
                    </div>
                </div>
                <div>
                    <label for="sportsId">Sports Id</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
                <div>
                    <label for="gender">Gender</label>
                    <div>
                        <form:input path="gender" />
                    </div>
                </div>
                <div>
                    <label for="address">Address</label>
                    <div>
                        <form:input path="address" />
                    </div>
                </div>
                <div>
                    <label for="contact">Contact</label>
                    <div>
                        <form:input path="contact" />
                    </div>
                </div>
                 <div>
                    <label for="playerStatus">Player Status</label>
                    <div>
                        <form:input path="playerStatus" />
                    </div>
                </div>
                 <div>
                    <label for="dateOfBirth">Date of Birth</label>
                    <div>
                        <form:input path="dateOfBirth" />
                    </div>
                </div>
                 <div>
                    <label for="joiningDate">Joining Date</label>
                    <div>
                        <form:input path="joiningDate" />
                    </div>
                </div>
                 <div>
                    <label for="subscriptionDue">Subscription Due</label>
                    <div>
                        <form:input path="subscriptionDue" />
                    </div>
                </div>
                 <div>
                    <label for="subscriptionPaid">Subscription Paid</label>
                    <div>
                        <form:input path="subscriptionPaid" />
                    </div>
                </div>
               
        <div>
            <form:button>Find Players By Id</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>