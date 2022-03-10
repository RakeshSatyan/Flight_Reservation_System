<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register User</title>
</head>
<body>

	<div align="center">
	<h2> User Registration</h2>
	<form action="registerUser" method="post">
		<pre>
		First Name: <input type="text" name="firstName"/><br/>
		Last Name: <input type="text" name="lastName"/><br/>
		User Name: <input type="text" name="email"/><br/>
		Password: <input type="password" name="password"/><br/>
		ConfirmPassword: <input type="password" name="confirmPassword"/><br/>
		<input type="submit" value="register"/>
		</pre>
	</form>
	</div>
</body>
</html>