<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Payment Profile </title>
<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
<link href='https://use.fontawesome.com/releases/v5.8.1/css/all.css' rel='stylesheet'>

</head>
	<style> 
	body {
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background: linear-gradient(to right, #b92b27, #1565c0)
}

.card {	
    margin-bottom: 20px;
    border: none
}

.box {
    width: 600px;
    height: 700px;
    padding: 40px;
    position: absolute;
    top: 50%;
    left: 50%;
    background: #191919;
    text-align: center;
    transition: 0.25s;
    margin-top: 100px
}

.box input[type="text"],
.box input[type="password"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 250px;
    outline: none;
    margin-left: 120px;
    color: white;
    border-radius: 24px;
    transition: 0.25s
}

.box h1 {
    color: white;
    text-transform: uppercase;
    font-weight: 500
}

.box input[type="text"]:focus,
.box input[type="password"]:focus {
    width: 300px;
    border-color: #2ecc71
}

.container1 {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
}

table, th, td {
  border: 1px solid white;
}

table {
  width: 400px;
  margin-left: 50px;
  margin-bottom: -50px; 
  boarder: 1px white;
  text-align: center;
  
}
th,
td {
  padding: 15px;
  background-color: none;
  color: #fff;
 
}
th {
  text-align: center;
}

.button1 {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    margin-left: 10px;
    margin-top: 80px;
    margin-bottom: -100px;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer
}

.button1:hover {
    background: #2ecc71;
    
}

.button2 {
    border: 0;
    margin-bottom:150px;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    color: white;
    margin-right: 10px;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer
}

.button2:hover {
    background: #2ecc71
}


.forgot {
    text-decoration: underline
}

</style>

 <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
                                <script type='text/javascript'></script>
                            </head>
                            <body oncontextmenu='return false' class='snippet-body'>
                            <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form class="box">
                
                    <h1>PAYMENT ACCOUNT</h1>
                    <p class="text-muted"> <font color="lightPink"> <h5> User Payment Details </h5> </font> </p> <br> 


<table>	
		<c:forEach var = "pay" items = "${payDetails}">
	
		<c:set var="PID" value="${pay.PID}"/>
		<c:set var="CName" value="${pay.CName}"/>
		<c:set var="event" value="${pay.event}"/>
		<c:set var="price" value="${pay.price}"/>
		<c:set var="bank" value="${pay.bank}"/>
		<c:set var="username" value="${pay.username}"/>
		<c:set var="password" value="${pay.password}"/>

	<div class="container1">
	
	<tr>
		<td>Payment ID</td>
		<td>${pay.PID}</td>
	</tr>
	<tr>
		<td>Customer Name</td>
		<td>${pay.CName}</td>
	</tr>
	<tr>
		<td>Event Name</td>
		<td>${pay.event}</td>
	</tr>
	<tr>
		<td>Price</td>
		<td>${pay.price}</td>
	</tr>
	<tr>
		<td>Bank</td>
		<td>${pay.bank}</td>
	</tr>
	<tr>
		<td>Username</td>
		<td>${pay.username}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${pay.password}</td>
	</tr>

</div>
	</c:forEach>	

</table>	
	
	<c:url value="Pay_Update.jsp" var="payupdate">
		<c:param name="PID" value="${PID}"/>
		<c:param name="CName" value="${CName}"/>
		<c:param name="event" value="${event}"/>
		<c:param name="price" value="${price}"/>
		<c:param name="bank" value="${bank}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${payupdate}">
	
	<input type = "button" name = "update" class="button1"  value = "Update Account">

	</a>
	
	<br>
	
	<c:url value="Pay_Delete.jsp" var="paydelete">
		<c:param name="PID" value="${PID}"/>
		<c:param name="CName" value="${CName}"/>
		<c:param name="event" value="${event}"/>
		<c:param name="price" value="${price}"/>
		<c:param name="bank" value="${bank}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${paydelete}">
	
	<input type = "button" name = "delete" class="button2" value = "Delete Account">

	</a>
	
	</form>

            </div>
        </div>
    </div>
</div>
</body>
</html>