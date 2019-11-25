<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
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
		<h2>User Registration</h2>
	</center>
	<form action="registerUser" method="post">
		<table id="t01" align="center">
			<tr>
				<td>First Name :</td>
				<td><input type="text" name="firstName" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="lastName" /></td>
			</tr>
			<tr>
				<td>User Name :</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>Confirm Password :</td>
				<td><input type="password" name="confirmPassword" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="register" /></td>
			</tr>
		</table>
	</form>
</body>
</html>