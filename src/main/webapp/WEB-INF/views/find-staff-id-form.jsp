<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Staff By Id</title>
<style type="text/css">
.a4{
background-color:red;
}
</style>
</head>
<body>
    <div  class="a4"id="root">
        <div id="form">
            <form:form action="" method="post"
                modelAttribute="getstaff">
                <div>
                    <label for="staffId">Staff Id</label>
                    <div>
                        <form:input path="staffId" />
                    </div>
                </div>
                <div>
                    <label for="staffName">Staff Name</label>
                    <div>
                        <form:input path="staffName" />
                    </div>
                </div>
                <div>
                    <label for="salary">Salary</label>
                    <div>
                        <form:input path="salary" />
                    </div>
                </div>
                <div>
                    <label for="joiningDate">Joining Date</label>
                    <div>
                        <form:input path="joiningDate" />
                    </div>
                </div>
                <div>
                    <label for="dateOfBirth">Date of Birth</label>
                    <div>
                        <form:input path="dateOfBirth" />
                    </div>
                </div>
                <div>
                    <label for="contact">Contact</label>
                    <div>
                        <form:input path="contact" />
                    </div>
                </div>
                 <div>
                    <label for="address">Address</label>
                    <div>
                        <form:input path="address" />
                    </div>
                </div>
                 <div>
                    <label for="staffRole">Staff Role</label>
                    <div>
                        <form:input path="staffRole" />
                    </div>
                </div>
                 <div>
                    <label for="coachingSports">Coaching Sports</label>
                    <div>
                        <form:input path="coachingSports" />
                    </div>
                </div>
                 <div>
                    <label for="managerId">Manager Id</label>
                    <div>
                        <form:input path="managerId" />
                    </div>
                </div>
                 <div>
                    <label for="email">Email</label>
                    <div>
                        <form:input path="email" />
                    </div>
                </div>
        <div>
            <form:button>Find Staff By Id</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>