<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Sports</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updatesports.css"%>
</style>
<script type="text/javascript">
function durationCalculation(){
var inTime = document.getElementById("inTime").value;
var outTime = document.getElementById("outTime").value;

var duration = parseInt(outTime)-parseInt(inTime);
document.getElementById("durations").value = duration;
}
</script>
</head>
<body>
<br>
<div >
			<a href="/Sports/getallsports"><h2>Back</h2></a>
		</div>
	<div class="center" id="table root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updatesports">
				<div>
					<label for="sportsId">SportsId</label>
					<div>
						<form:input path="sportsId" />
					</div>
				</div>
				<br>
				<div>
					<label for="sportsName">SportsName</label>
					<div>
						<form:input path="sportsName"
							title="Name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<br>
				<form:errors path="sportsName" cssClass="text-danger" />
				<div>
					<label for="fees">Fees</label>
					<div>
						<form:input path="fees" title="enter valid number"
							pattern="^\d{1,6}(?:\.\d{0,2})?$" required="true" />
					</div>
				</div>
				<br>
				<div>
					<label for="inTime">In Time</label>
					<div>
						<form:input path="inTime" id="inTime" onchange="durationCalculation();" type="time"/>
					</div>
				</div>
				<br>
				<div>
					<label for="outTime">Out Time</label>
					<div>
						<form:input path="outTime" id = "outTime" onchange="durationCalculation();" type="time"/>
					</div>
				</div>
				<br>
				<div>
					<label for="durations">Duration</label>
					<div>
						<form:input path="durations" id="durations" onchange="durationCalculation(this.form);" />
					</div>
				</div>

				<div>
					<form:button>Update </form:button>
				</div>
				
			</form:form>
		</div>
	</div>
</body>
</html>