<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Flights</title>
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
	<h2>Find Flights :</h2>
	<form action="findFlights" method="post">
		<table id="t01" align="center">
			<tr>
				<td>From :</td>
				<td><input type="text" name="from" /></td>
			</tr>
			<tr>
				<td>To :</td>
				<td><input type="text" name="to" /></td>
			</tr>
			<tr>
				<td>Departure Date :</td>
				<td><input type="text" name="departureDate" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="search" /></td>
			</tr>
		</table>


	</form>
</body>
</html>