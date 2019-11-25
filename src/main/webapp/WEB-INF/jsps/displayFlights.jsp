<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flights</title>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
	text-align: left;
}

table#t01 {
	background-color: #f1f1c1;
}
</style>
</head>
<body>
	<center>
		<h2>Flights</h2>
	</center>

	<table id="t01" align="center">
		<tr>
			<th>Airlines</th>
			<th>Departure City</th>
			<th>Departure Time</th>
		</tr>

		<c:forEach items="${flights}" var="flight">
			<tr>
				<td>${flight.operatingAirlines}</td>
				<td>${flight.departureCity}</td>
				<td>${flight.arrivalCity}</td>
				<td><a href="showCompleteReservation?flightId=${flight.id}">Select</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>