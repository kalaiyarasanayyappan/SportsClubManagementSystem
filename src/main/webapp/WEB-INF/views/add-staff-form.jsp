<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Staff</title>
<style type="text/css">
.a2{
background-color:red;
border:1px green;
border-radius: 15px;
list-style:square
}
</style>
</head>
<body>
  <div class="a2"id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addstaff">
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
            <form:button>Add Staff</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>