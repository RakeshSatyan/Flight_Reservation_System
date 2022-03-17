<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<style type="text/css">
	body {font-family: Arial, Helvetica, sans-serif;background-color: #F7F4F4}
	marquee {
        width: 100%;
        padding: 10px 0;
        background-color: lightblue;
      }
      
	</style>
</head>
<body>
	<h1 align="center">Available Flight Details</h1><br/>
	
	<div >
		
		<table class="table table-striped table-hover table-bordered border border-dark">
			<tr class="table-dark">
			<th>Id</th>
			<th>Flight Number</th>
				<th>Airlines</th>
				<th>Departure City</th>
				<th>Arrival City</th>
				<th>Date of Departure</th>
				<th>Departure Time</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach items="${flights }" var="flight">
				<tr>
				<td>${flight.id }</td>
				<td>${flight.flightNumber }</td>
					<td>${flight.operatingAirlines }</td>
					<td>${flight.departureCity }</td>
					<td>${flight.arrivalCity }</td>
					<td>${flight.dateOfDeparture }</td>
					<td>${flight.estimatedDepartureTime }</td>
					<td><a href="#">Update</a></td>
					<td><a href="#">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>