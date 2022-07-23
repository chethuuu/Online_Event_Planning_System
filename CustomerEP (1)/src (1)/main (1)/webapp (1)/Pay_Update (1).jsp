<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Update Payment </title>
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

.box input[type="submit"] {
    border: 0;
    background: none;
    display: block;
    margin: 20px auto;
    text-align: center;
    border: 2px solid #2ecc71;
    padding: 14px 40px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
    cursor: pointer
}

.box input[type="submit"]:hover {
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
                <form action="update" method="post" class="box">
                
                    <h1>UPDATE</h1>
                    <p class="text-muted"> <font color="lightPink"> <h5> Update your Payment Details </h5> </font> </p> <br> 

	<%
		String PID = request.getParameter("PID");
		String CName = request.getParameter("CName");
		String event = request.getParameter("event");
		String price = request.getParameter("price");
		String bank = request.getParameter("bank");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
	%>
<table>

	<tr>
			<td> <font color="grey"> Payment ID </font> </td> 
			<td> <input type="text" name="PID" value="<%=PID%>" placeholder="Customer ID" readonly> 
	</tr>
	
	<tr>
			<td> <font color="grey"> Customer Name </font> </td>
			<td> <input type="text" name="CName" value="<%=CName%>"placeholder="Customer Name"> </td>
	
	<tr>
			<td> <font color="grey"> Event Name </font> </td> 	
			<td> <input type="text" name="event" value="<%=event%>" placeholder="Event name"> </td>
	</tr>
	
	<tr>
			<td> <font color="grey"> Price </font> </td>	
			<td> <input type="text" name="price" value="<%=price%>" placeholder="Price" readonly> </td>
	</tr>
	
	<tr>
			<td> <font color="grey"> Bank Name </font> </td>
			<td> <input type="text" name="bank" value="<%=bank%>" placeholder="Bank Name"> </td>
	</tr>
	
	<tr>
			<td> <font color="grey"> Username </font> </td> 
			<td> <input type="text" name="username" value="<%=username%>" placeholder="Username"> </td>
	</tr>
	
	<tr>
			<td> <font color="grey"> Password </font> </td>  	
			<td> <input type="text" name="password" value="<%=password%>" placeholder="Password"> </td>
	</tr>
</table>
	<input type = "submit" name="submit" value="Update">
	
	</form>

            </div>
        </div>
    </div>
</div>
</body>
</html>