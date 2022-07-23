<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String PID = request.getParameter("PID");
		String CName = request.getParameter("CName");
		String event = request.getParameter("event");
		String price = request.getParameter("price");
		String bank = request.getParameter("bank");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
	%>

	<form action ="delete" method="post"> <br>
		Payment ID <input type="text" name="PID" value="<%=PID%>" readonly> <br>
		Customer Name <input type="text" name="CName" value="<%=CName%>" readonly> <br>
		Event Name 	<input type="text" name="event" value="<%=event%>" readonly> <br>
		Price 	<input type="text" name="price" value="<%=price%>" readonly> <br>
		Bank 	<input type="text" name="bank" value="<%=bank%>" readonly> <br>
		Username <input type="text" name="username" value="<%=username%>" readonly> <br>
		
	
	<input type = "submit" name="submit" value="Delete">
	
	</form>

</body>
</html>