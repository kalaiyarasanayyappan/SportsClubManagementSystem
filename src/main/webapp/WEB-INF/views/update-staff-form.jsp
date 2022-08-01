<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Staff</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="update" method="post" modelAttribute="updatestaff">
                <div>
                    <label for="staff_id">Staff Id</label>
                    <div>
                        <form:input path="staff_id" />
                    </div>
                </div>
                <div>
                    <label for="staff_name">Staff Name</label>
                    <div>
                        <form:input path="staff_name" />
                    </div>
                </div>
                <div>
                    <label for="salary">Salary</label>
                    <div>
                        <form:input path="salary" />
                    </div>
                </div>
                <div>
                    <label for="joining_date">Joining Date</label>
                    <div>
                        <form:input path="joining_date" />
                    </div>
                </div>
                <div>
                    <label for="date_of_birth">Date of Birth</label>
                    <div>
                        <form:input path="date_of_birth" />
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
                    <label for="staff_role">Staff Role</label>
                    <div>
                        <form:input path="staff_role" />
                    </div>
                </div>
                 <div>
                    <label for="coaching_sports">Coaching Sports</label>
                    <div>
                        <form:input path="coaching_sports" />
                    </div>
                </div>
                 <div>
                    <label for="manager_id">Manager Id</label>
                    <div>
                        <form:input path="manager_id" />
                    </div>
                </div>
                 <div>
                    <label for="email">Email</label>
                    <div>
                        <form:input path="email" />
                    </div>
                </div>
        <div>
            <form:button>Update Staff</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>