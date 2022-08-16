<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Players</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
/* .b2{
background-color:#A1E2E8;
border:1px green;
border-radius: 15px;
list-style:square
} */
</style>

</head>
<body>
  <div  id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addplayers">
                <%-- <div>
                    <label for="playerId">Player Id</label>
                    <div>
                        <form:input path="playerId" />
                    </div>
                </div> --%>
                 <div>
                    <label for="playerName">Player Name</label>
                    <div>
                        <form:input path="playerName" title="Name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true" />
                    </div>
                </div>
                	<form:errors path="playerName" cssClass="text-danger" />
                <div>
                    <label for="sportsId">Sports Id</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
               
               <div>
                    <label for="gender">Gender</label>
                    <div>
                        <form:input path="gender" title="Enter specific gender"
pattern="^M(ale)?$|^F(emale)?$" required="true" />
                    </div>
                </div>
                	
                <form:errors path="gender" cssClass="text-danger" />
                <div>
                    <label for="address">Address</label>
                    <div>
                        <form:input path="address" title="Address should atleast contain 10 characters"
required="true"/>
                    </div>
                </div>
                <form:errors path="address" cssClass="text-danger" />
                <div>
                    <label for="contact">Contact</label>
                    <div>
                        <form:input path="contact" 
                        pattern="[1-9]{1}[0-9]{9}"
title="Phone number should have atleast 10 digits"
required="true"  />
                    </div>
                </div>
                <form:errors path="contact" cssClass="text-danger" />
                <div>
                    <label for="playerStatus">choose a status</label>
                    <br>
                        <select name="playerStatus" id="playerStatus">
<option>--Choose a status--</option>
  <option value="Excellent">Excellent</option>
  <option value="Good">Good</option>
  <option value="Average">Average</option>
 
</select>
                    </div>
                
                 <div>
                    <label for="dateOfBirth">Date of Birth</label>
                    <div>
                        <form:input path="dateOfBirth"  type="date"/>
                    </div>
                </div>
                 <div>
                    <label for="joiningDate">Joining Date</label>
                    <div>
                        <form:input path="joiningDate"  type="date"/>
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
                <form:errors path="subscriptionPaid" cssClass="text-danger" />
               
        <div>
            <form:button>Add Players</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>