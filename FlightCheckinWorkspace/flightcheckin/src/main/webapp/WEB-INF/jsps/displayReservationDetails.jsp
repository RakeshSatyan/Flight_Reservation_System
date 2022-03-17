<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<style type="text/css">
	body{
	margin:40px 100px;
	background-color: #DEDDDD;
	}
	</style>
</head>
<body>
	<div align="center">
		<h2>Reservation Details</h2><br/>
		<div class="alert alert-success" role="alert">
			<h4 class="alert-heading">Flight Details</h4>
			<p><strong>The Flight details are as shown below</strong></p>
			<hr>
			<p class="mb-0">
				<strong>Airlines:</strong>${reservation.flight.operatingAirlines }<br />
			</p>
			<p class="mb-0">
				<strong>Flight No:</strong> ${ reservation.flight.flightNumber}<br />
			</p>
			<p class="mb-0">
				<strong>Departure City:</strong> ${ reservation.flight.departureCity}<br />
			</p>
			<p class="mb-0">
				<strong>Arrival City:</strong> ${ reservation.flight.arrivalCity}<br />
			</p>
			<p class="mb-0">
				<strong>Departure Date: </strong>${ reservation.flight.dateOfDeparture}<br />
			</p>
			<p class="mb-0">
				<strong>Estimated Departure Time:</strong> ${ reservation.flight.estimatedDepartureTime}<br />
			</p>
		</div>

		<%-- <h1>Flight Details</h1>
	Airlines:${reservation.flight.operatingAirlines }<br/>
	Flight No: ${ reservation.flight.flightNumber}<br/>
	Departure City: ${ reservation.flight.departureCity}<br/>
	Arrival City: ${ reservation.flight.arrivalCity}<br/>
	Departure Date: ${ reservation.flight.dateOfDeparture}<br/>
	Estimated Departure Time:: ${ reservation.flight.estimatedDepartureTime}<br/> --%>
		<!-- <p>*******************************************************************</p> -->

		<div class="alert alert-success" role="alert">
			<h4 class="alert-heading">Passenger Details</h4>
			<p><strong>The Passenger details are as shown below</strong></p>
			<hr>
			<p class="mb-0">
				<strong>First Name:</strong>${ reservation.passenger.firstName}<br />
			</p>
			<p class="mb-0">
				<strong>Last Name:</strong>${ reservation.passenger.lastName}<br />
			</p>
			<p class="mb-0">
				<strong>Email:</strong>${ reservation.passenger.email}<br />
			</p>
			<p class="mb-0">
				<strong>Phone:</strong>${ reservation.passenger.phone}<br />
			</p>

			<%-- <h1>Passenger Details</h1>
			First Name:${ reservation.passenger.firstName}<br /> Last Name:${ reservation.passenger.lastName}<br />
			Email:${ reservation.passenger.email}<br /> Phone:${ reservation.passenger.phone}<br /> --%>
			<%-- <form action="completeCheckIn" method="post">
				Enter the number of bags you want to CheckIn:<input type="text"
					name="numberOfBags" /><br /> <input type="hidden"
					name="reservationId" value="${reservation.id }" /> <input
					type="submit" value="CheckIn" />
			</form> --%>

			<form action="completeCheckIn" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1"><strong>Enter the number of bags
						you want to CheckIn:</strong></label> <input type="text" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp"
						name="numberOfBags" placeholder="enter no of bags" required>

				</div>
				<div class="form-group">
					 <input type="hidden"
						class="form-control" name="reservationId"
						value="${reservation.id }"  />

				</div>

				<button type="submit" class="btn btn-primary">CheckIn</button>
			</form>

		</div>
		</div>
</body>
</html>