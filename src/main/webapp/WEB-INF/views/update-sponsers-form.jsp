<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Sponser</title>
<style type="text/css">
.d3{
background-color:red;
}
</style>
</head>
<body>
    <div class="d3"id="root">
        <div id="form">
            <form:form action="update" method="post" modelAttribute="updatesponsers">
                <div>
                    <label for="sponserId">Sponser Id</label>
                    <div>
                        <form:input path="sponserId" />
                    </div>
                </div>
                <div>
                    <label for="sponserName">Sponser Name</label>
                    <div>
                        <form:input path="sponserName" />
                    </div>
                </div>
                <div>
                    <label for="contact">Contact</label>
                    <div>
                        <form:input path="contact" />
                    </div>
                </div>
                 <div>
                    <label for="email">Email</label>
                    <div>
                        <form:input path="email" />
                    </div>
                </div>
                
        <div>
            <form:button>Update Sponser</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>