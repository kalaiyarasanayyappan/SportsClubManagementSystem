<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Sports</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
.c2{
background-color:#A1E2E8;
border:1px green;
border-radius: 15px;
list-style:square
}
</style>

</head>
<body>
    <div class="c2"id="root">
        <div id="form">
            <form:form action="update" method="post" modelAttribute="updatesports">
                <div>
                    <label for="sportsId">Sports Id</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div>
                <div>
                    <label for="sportsName">Sports Name</label>
                    <div>
                        <form:input path="sportsName" title="Name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true" />
                    </div>
                </div>
                <form:errors path="sportsName" cssClass="text-danger" />
                <div>
                    <label for="fees">Fees</label>
                    <div>
                       <form:input path="fees" title="enter valid number" 
                        pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true"/>
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
                    <label for="durations">Durations</label>
                    <div>
                        <form:input path="durations" />
                    </div>
                </div>
                
        <div>
            <form:button>Update Sports</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>