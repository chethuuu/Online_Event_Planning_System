<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title> Make Payment </title>
</head>
<body>
	<table>
		<c:forEach var = "pay" items = "${payDetails}">
	
		<c:set var="PID" value="${pay.PID}"/>
		<c:set var="CName" value="${pay.CName}"/>
		<c:set var="event" value="${pay.event}"/>
		<c:set var="price" value="${pay.price}"/>
		<c:set var="bank" value="${pay.bank}"/>
		<c:set var="username" value="${pay.username}"/>
		<c:set var="password" value="${pay.password}"/>

		
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

	</c:forEach>	
</table>	
	
	<c:url value="Pay_Update.jsp" var="payupdate">
		<c:param name="PID" value="${PID}"/>
		<c:param name="CName" value="${CName}"/>
		<c:param name="event" value="${price}"/>
		<c:param name="price" value="${bank}"/>
		<c:param name="bank" value="${bank}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<a href="${payupdate}">
	
	<input type = "button" name = "update" value = "Update data">

	</a>
	
	<br>
</body>
</html>