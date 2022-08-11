<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Sponsers</title>
<style type="text/css">
.d2{
background-color:red;
border:1px green;
border-radius: 15px;
list-style:square
}
</style>
</head>
<body>
  <div class="d2"id="root">
        <div id="form">
            <form:form action="add" method="post"
                modelAttribute="addsponsers">
              <%--   <div>
                    <label for="sponserId">Sponser Id</label>
                    <div>
                        <form:input path="sponserId" />
                    </div> --%>
                </div>
                <div>
                    <label for="sponserName">Sponser Name</label>
                    <div>
                       <form:input path="sponserName" title="Name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true" />
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
                <div>
                    <label for="email">Email</label>
                    <div>
                       <form:input path="email" pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
title="Invalid email ex: sports@gmail.com" required="true"  />
                    </div>
                </div>
                
        <div>
            <form:button>Add Sponser</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>