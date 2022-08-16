<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update PlayersFeesDetails</title>
<style type="text/css">
.g2{
background-color:#A1E2E8;
border:1px green;
border-radius: 15px;
list-style:square
}
</style>
</head>
<body>
    <div class="g2"id="root">
        <div id="form">
            <form:form action="update" method="post" modelAttribute="updateplayersfeesdetails">
               <div>
                    <label for="paidDate">Paid Date</label>
                    <div>
                        <form:input path="paidDate" type="date"/>
                    </div>
                </div>
                <div>
                    <label for="playerId">Player Id</label>
                    <div>
                        <form:input path="playerId" />
                    </div>
                </div>
                <div>
                    <label for="amount">Amount</label>
                    <div>
                        <form:input path="amount" />
                    </div>
                </div>
                <div>
                    <label for="remarks">Remarks</label>
                    <div>
                        <form:input path="remarks" />
                    </div>
                </div>
                <div>
                    <label for="recieptNumber">Reciept Number</label>
                    <div>
                        <form:input path="recieptNumber" />
                    </div>
                </div>
        <div>
            <form:button>Update Playersfeesdetails</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>