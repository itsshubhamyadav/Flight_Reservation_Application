<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete Reservation</title>
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

	<table id="t01" align="center">
		<h2>Complete Reservation</h2>
		<tr>
			<th>Airlines</th>
			<th>Departure City</th>
			<th>Arrival City</th>
		</tr>

		<tr>
			<td>${flight.operatingAirlines}</td>
			<td>${flight.departureCity}</td>
			<td>${flight.arrivalCity}</td>
		</tr>
	</table>
	<form action="completeReservation" method="post">
		<h2>Passengers Details</h2>
		<table id="t01" align="center">
			<tr>
				<td>First Name :</td>
				<td><input type="text" name="passengerFirstName" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="passengerlastName" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="passengerEmail" /></td>
			</tr>
			<tr>
				<td>Phone :</td>
				<td><input type="text" name="passengerPhone" /></td>
			</tr>
		</table>
		<h2>Card Details</h2>
		<table id="t01" align="center">
			<tr>
				<td>Name on the card :</td>
				<td><input type="text" name="nameOnTheCard" /></td>
			</tr>
			<tr>
				<td>Card Number :</td>
				<td><input type="text" name="cardNumber" /></td>
			</tr>
			<tr>
				<td>Expiry Date :</td>
				<td><input type="text" name="expirationDate" /></td>
			</tr>
			<tr>
				<td>Three Digit Sec Code :</td>
				<td><input type="text" name="securityCode" /></td>
			</tr>
			<tr>
				<td><input type="hidden" name="flightId" value="${flight.id}" /></td>
				<td><input type="submit" value="confirm" /></td>
			</tr>
		</table>
	</form>
</body>
</html>