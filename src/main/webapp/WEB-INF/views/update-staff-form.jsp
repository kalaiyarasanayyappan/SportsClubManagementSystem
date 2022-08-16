<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
<style type="text/css">
.text-danger {
    color: #e80c4d;
    font-size: 0.9em;
}
.a3{
background-color:#A1E2E8;
}
</style>
</head>
<body>
    <div class="a3"id="root">
        <div id="form">
            <form:form action="update" method="post" modelAttribute="updatestaff">
                <%-- <div>
                    <label for="staffId">Staff Id</label>
                    <div>
                        <form:input path="staffId" />
                    </div>
                </div> --%>
                <div>
                    <label for="staffName">Staff Name</label>
                    <div>
                        <form:input path="staffName" title="Name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true" />
                    </div>
                </div>
                <form:errors path="staffName" cssClass="text-danger" />
                <div>
                    <label for="salary">Salary</label>
                    <div>
                        <form:input path="salary" title="enter valid number" 
                        pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true"/>
                        
                    </div>
                </div>
                <form:errors path="salary" cssClass="text-danger" />
                <div>
                    <label for="joiningDate">Joining Date</label>
                    <div>
                        <form:input path="joiningDate" type="date" />
                    </div>
                </div>
                <div>
                    <label for="dateOfBirth">Date of Birth</label>
                    <div>
                        <form:input path="dateOfBirth"  type="date"/>
                    </div>
                </div>
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
                    <label for="address">Address</label>
                    <div>
                        <form:input path="address" />
                    </div>
                </div>
                <form:errors path="address" cssClass="text-danger" />
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
                       <form:input path="email" pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
title="Invalid email ex: sports@gmail.com" required="true"  />
                    </div>
                </div>
                <form:errors path="email" cssClass="text-danger" />
        <div>
            <form:button>Update Staff</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>