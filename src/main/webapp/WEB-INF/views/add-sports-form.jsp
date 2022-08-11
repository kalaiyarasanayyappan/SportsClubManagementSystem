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
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
.c1{
background-color:blue;
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
                <%-- <div>
                    <label for="sportsId">SportsId</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div> --%>
                <div>
                    <label for="sportsName">SportsName</label>
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
                    <label for="inTime">InTime</label>
                    <div>
                        <form:input path="inTime" />
                    </div>
                </div>
                <div>
                    <label for="outTime">OutTime</label>
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