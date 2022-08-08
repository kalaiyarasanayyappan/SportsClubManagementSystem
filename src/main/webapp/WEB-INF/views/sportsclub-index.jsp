<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>sportsclub Index</title>
<style type="text/css">
h1{
text-align:center;
color: red;
font-weight: bold;
font-family:arial,heluetica;
}
h2{
color: green;
font size:25px;
}
body{
font-weight:bold;
font-family:arial,helutica;
background-color: black;

}
a:hover
{
color:red;
}
a:active
{
color:green;
}
a:visited{
color:yellow;
}
.f1 label{
display:block;
}
.f1{
padding:20px;
}
.fg{
padding-bottom: 20px;
}


}
p{
line-height:1.9cm;
}
.container{
width:80%;
margin:auto;
margin-top:100px;
}
.f1 input[type="text"]
{
padding: 10px;
width:100%;
}
.f1 input[type="Home"]
{
background-color: #333;
color:white;
padding: 10px;
border:none;
}
.button:hover{
background: red;
color:white;
}
* {
margin: 0;
padding: 0;
}

</style>
</head>
<body>

<h1>SPORTS CLUB MANAGEMENT </h1>

<br><br>
<div><h2>Sports</h2></div>
<div ><a href="/Sports/addform">Add Sports form</a></div>
<div ><a href="/Sports/updateform?id=">Update sports Form</a></div>
<div ><a href="/Sports/getsports?id=">Find sports By Id</a></div>
<div ><a href="/Sports/deletesports?id=">Delete sports By Id</a></div>
<div ><a href="/Sports/getallsports">Get All sports</a></div>
<div ><a href="/Sports/getsportsbysponserdetails?id=">Get sponsers Details By sports Id </a></div>
<div ><a href="/getsportsbyplayerdetails?id=">Get players Details By sports Id</a></div>

<div ><h2>Staff</h2></div>
<div ><a href="/Staff/addform">Add Staff from</a></div>
<div ><a href="/Staff/updateform?id=">Update staff form</a></div>
<div ><a href="/Staff/getstaff?id=">Find staff By  Id</a></div>
<div ><a href="/Staff/deletestaff?id=">delete staff By  Id</a></div>
<div ><a href="/Staff/getallstaff">Get All staff</a></div>

<div ><h2>Players</h2></div>
<div ><a href="/Players/addform">Add Players form</a></div>
<div ><a href="/Players/updateform?id=">Update Players from</a></div>
<div ><a href="/Players/getplayers?id=">Get Players By Id </a></div>
<div ><a href="/Players/deleteplayers?id=">Delete Players By Id</a></div>
<div ><a href="/Players/getallplayers">Get All Players</a></div>
<div ><a href="/Players/getplayersbyfeesdetails?id=">Get All Fees Details By Player Id</a></div>
<div ><a href="/getplayersbyprizedetails?id=">Get All Prize Details By Player Id</a></div>

<div ><h2>Sponsers</h2></div>
<div ><a href="/Sponsers/addform">Add Sponsers Form</a></div>
<div ><a href="/Sponsers/updateform?id=">Update Sponser form </a></div>
<div ><a href="/Sponsers/getsponsers?id=">Get Sponsers By  Id</a></div>
<div ><a href="/Sponsers/deletesponsers?id=">Delete Sponser By Id</a></div>
<div ><a href="/Sponsers/getallsponsers">Get All Sponsers</a></div>
<div ><a href="/Sponsers/getsponsersponseringdetails?id=">Get All Sponsering Details by Sponser Id</a></div>


<div><h2>Prizes</h2></div>
<div ><a href="/Prizes/addform">Add Prizes Form</a></div>
<div ><a href="/Prizes/updateform?id=">Update Prizes form </a></div>
<div ><a href="/Prizes/getprizes?id=">Get Prizes By  Id</a></div>
<div ><a href="/Prizes/deleteprizes?id=">Delete Prizes By Id</a></div>
<div ><a href="/Prizes/getallprizes">Get All Prizes</a></div>

<div><h2>Sponsering_Details</h2></div>
<div ><a href="/Sponsering_Details/addform">Add Sponsering Details Form</a></div>
<div ><a href="/Sponsering_Details/updateform?id=">Update Sponsering Details form </a></div>
<div ><a href="/Sponsering_Details/getsponseringdetails?id=">Get Sponsering Details By  Id</a></div>
<div ><a href="/Sponsering_Details/deletesponseringdetails?id=">Delete Sponsering Details By Id</a></div>
<div ><a href="/Sponsering_Details/getallsponseringdetails">Get All Sponsering Details</a></div>


<div><h2>Players_Fees_Details</h2></div>
<div ><a href="/Players_Fees_Details/addform">Add PlayersFeesDetails Form</a></div>
<div ><a href="/Players_Fees_Details/updateform?id=">Update PlayersFeesDetails form </a></div>
<div ><a href="/Players_Fees_Details/getplayersfeesdetails?id=">Get PlayersFeesDetails By  Id</a></div>
<div ><a href="/Players_Fees_Details/deleteplayersfeesdetails?id=">Delete PlayersFeesDetails By Id</a></div>
<div ><a href="/Players_Fees_Details/getallplayersfeesdetails">Get All PlayersFeesDetails</a></div>

</body>
</html>
