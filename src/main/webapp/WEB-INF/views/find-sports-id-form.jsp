<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Sports By Id</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="" method="post"
                modelAttribute="getsports">
                <div>
                    <label for="sports_id">Sports Id</label>
                    <div>
                        <form:input path="sports_id" />
                    </div>
                </div>
                <div>
                    <label for="sports_name">Sports Name</label>
                    <div>
                        <form:input path="sports_name" />
                    </div>
                </div>
                <div>
                    <label for="fees">Fees</label>
                    <div>
                        <form:input path="fees" />
                    </div>
                </div>
                <div>
                    <label for="in_time">In Time</label>
                    <div>
                        <form:input path="in_time" />
                    </div>
                </div>
                <div>
                    <label for="out_time">Out Time</label>
                    <div>
                        <form:input path="out_time" />
                    </div>
                </div>
                <div>
                    <label for="durations">Durations</label>
                    <div>
                        <form:input path="durations" />
                    </div>
                </div>
                
        <div>
            <form:button>Find Sports By Id</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>