<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display User Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<style type="text/css">
	body {font-family: Arial, Helvetica, sans-serif;background-color: #F7F4F4}
	
      
	</style>
</head>
<body>
	<div >
		<br/><h1 align="center">Users</h1><br/>
		
		<table class="table table-striped table-hover table-bordered border border-dark">
			<tr class="table-dark">
				<th>Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Update Details</th>
				<th> Delete</th>
			</tr>
			<c:forEach items="${users }" var="user">
				<tr>
					<td>${user.id }</td>
					<td>${user.firstName }</td>
					<td>${user.lastName }</td>
					<td>${user.email }</td>
					<td>${user.password }</td>
					<td><a href="#">Update</a></td>
					<td><a href="#">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>