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

body{
background-image:
 url("https://t4.ftcdn.net/jpg/03/98/39/69/240_F_398396988_D1tA86QFM0XqDpVJdszF4SNN4txZCZwF.jpg");
 height: 768px;
width: 1366px;
 background-position: center;
 background-size: cover;
color: #39EC1D
}
  
</style>
</head>
<body>
  <div  id="root">
        <div  align="center" id="form">
            <form:form action="add" method="post"
                modelAttribute="addsports">
                <%-- <div>
                    <label for="sportsId">SportsId</label>
                    <div>
                        <form:input path="sportsId" />
                    </div>
                </div> --%>
                <br><br>
                <br><br>
                <div>
                    <label for="sportsName">SportsName</label>
                    <div>
                        <form:input path="sportsName" title="Name can't be empty or must contain only alphabets"
pattern="^[a-zA-Z]+$" required="true" />
                    </div>
                </div>
                <br><br>
                <form:errors path="sportsName" cssClass="text-danger" />
                <div>
                    <label for="fees">Fees</label>
                    <div>
                        <form:input path="fees" title="enter valid number" 
                        pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true"/>
                    </div>
                </div>
                <br><br>
                <div>
                    <label for="inTime">InTime</label>
                    <div>
                        <form:input path="inTime" />
                    </div>
                </div>
                <br><br>
                <div>
                    <label for="outTime">OutTime</label>
                    <div>
                        <form:input path="outTime" />
                    </div>
                </div>
                <br><br>
                <div>
                    <label for="durations">Duration</label>
                    <div>
                        <form:input path="durations" />
                    </div>
                </div>
                <br><br>
               
        <div>
            <form:button>Add Sports</form:button>
        </div>
        </form:form>
    </div>
    </div>
</body>
</html>