<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Insert Payment </title>
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
    width: 500px;
    padding: 40px;
    position: absolute;
    top: 50%;
    left: 50%;
    background: #191919;
    ;
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

.label {

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
                <form action="insert" method="post" class="box">
                
                    <h1>SIGN IN</h1>
                    <p class="text-muted"> <font color="lightPink"> <h5> Please Enter your Payment Details </h5> </font> </p> 
                    
	
	
		<input type="text" name="CName" placeholder="Customer Name" required>

		<input type="text" name="event" placeholder="Event Name" required>
	
		<input type="text" name="price" placeholder="Price" value="Rs: 15000" readonly> 
	
		<input type="text" name="bank" placeholder="Bank Name"required> 
		
		<input type="text" name="usn" placeholder="Username"required>
		
		<input type="password" name="psw" placeholder="Password"required> 
		
		<input type = "submit" name="submit" value="Submit Details">
		
		<font color="white"> Already have an Payment Account? <a href="login.jsp"> <b>Log in</b> </a> </font> 
	
                </form>
            </div>
        </div>
    </div>
   </div>
<br> <br> 
	
</body>
</html>