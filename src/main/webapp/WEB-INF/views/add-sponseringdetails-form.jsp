<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Sponsersingdetails</title>
<style type="text/css">
.f1{
background-color:#A1E2E8;
border:green 5px solid;
padding:20px;
}
</style>
</head>
<body>
  <div class="f1"id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addsponseringdetails">
                
               <%--   <div>
                    <label for="sponseringDetailsId">sponsering Details Id</label>
                    <div>
                        <form:input path="sponseringDetailsId" />
                    </div>
                </div> --%>
                <div>
                    <label for="sponserId">Sponser Id</label>
                    <div>
                        <form:input path="sponserId" />
                    </div>
                </div>
                <div>
                    <label for="sportsId">Sports Id</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
                <div>
                    <label for="amount">Amount</label>
                    <div>
                        <form:input path="amount" />
                    </div>
                </div>
                <div>
                    <label for="dateOfSponsering">Date of Sponsering</label>
                    <div>
                        <form:input path="dateOfSponsering" type="date" />
                    </div>
                </div>
                <div>
                    <label for="modeOfPayment">Mode Of Payment</label>
                    <div>
                        <form:input path="modeOfPayment" />
                    </div>
                </div>
                <div>
                    <label for="recieptNumber">Reciept Number</label>
                    <div>
                        <form:input path="recieptNumber" />
                    </div>
                </div>
                
        <div>
            <form:button>Add Sponseringdetails</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>