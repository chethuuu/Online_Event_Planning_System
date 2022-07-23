<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Delete Payment </title>
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
    width: 580px;
    padding: 50px;
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
    border: 1;
    background: none;
    display: block;
    margin: 10px ;
    text-align: center;
    margin-left: 120px;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 200px;
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
    border-color: white;
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
tr, 
td {
  text-align: left;
  padding: 8px;
  font-color: white;
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
                <form action="delete" method="post" class="box">
                
                    <h1>DELETE</h1>
                    
	<p class="text-muted"> <font color="lightPink"> <h5> Are you sure want to Delete Your Payment Account? </h5> </font></p> 

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
			<td><input type="text" name="PID" value="<%=PID%>" readonly></td>
		</tr> 
	
		<tr>
			<td> <font color="grey"> Customer Name </font> </td> 
			<td><input type="text" name="CName" value="<%=CName%>" readonly></td>
		</tr>
		
		<tr>
			<td> <font color="grey"> Event Name </font> </td> 
			<td><input type="text" name="event" value="<%=event%>" readonly></td>
		</tr> 
		
		<tr>
			<td> <font color="grey"> Price </font> </td>	
			<td><input type="text" name="price" value="<%=price%>" readonly></td>
		</tr> 
		
		<tr>
			<td> <font color="grey"> Bank Name </font> </td>	
			<td><input type="text" name="bank" value="<%=bank%>" readonly> </td>
		</tr> 
		
		<tr>
			<td> <font color="grey"> Username </font> </td> 
			<td><input type="text" name="username" value="<%=username%>" readonly></td>
		</tr> 
	
	</table>

	
	<input type = "submit" name="submit" button class ="button3" value="Delete">
	
			</form>

            </div>
        </div>
    </div>
</div>

</body>
</html>