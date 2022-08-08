<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Playersfeesdetails</title>
<style type="text/css">
.g1{
background-color:red;
border:green 5px solid;
padding:20px;
}
</style>
</head>
<body>
  <div class="g1"id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addplayersfeesdetails">
                <div>
                    <label for="paidDate">Paid Date</label>
                    <div>
                        <form:input path="paidDate" />
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
            <form:button>Add Playersfeesdetails</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>