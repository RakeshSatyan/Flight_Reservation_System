<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Complete Reservation</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">
body {font-family: Arial, Helvetica, sans-serif;background-color: #F7F4F4}
#divLeft{
	width:47%;
	float:left;
	border: solid black 1px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 33px;
	padding:5px;
	background-color: #F9FBC0;
	
}
#divRight{
	background-color: #F9FBC0;
	width:47%;
	float:left;
	border: solid black 1px;
	margin: 5px;
	padding:5px;
}
/*  div { width: 50px; height: 50px; border: solid black 2px; }*/

.info {
  background-color: #e7f3fe;
  border-left: 6px solid #2196F3;
  margin:30px;
}
h2{
padding:5px;
color: white;
background-color: black;
}

</style>
</head>
<body>
	<div align="center">
		<br /><h1>Complete Reservation</h1><br />
		<div class="info">
			<p>
				<strong>Airlines:</strong> ${flight.operatingAirlines }
			</p>
			<p>
				<strong>Departure City:</strong> ${flight.departureCity }
			</p>
			<p>
				<strong>Arrival City:</strong> ${flight.arrivalCity }
			</p>
		</div>
		<%-- Airlines:${flight.operatingAirlines }<br /> 
		Departure City:${flight.departureCity }<br /> 
		Arrival City:${flight.arrivalCity }<br /> <br /> --%>
		<!-- <p>***************************************************</p> -->
		
		<form action="completeReservation" method="post">
		<div id="divLeft">
		<h2 >Passenger Details</h2><br/>
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">First
							Name</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="passengerFirstName"
						required="required">
				</div>
				
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Last
							Name</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="passengerLastName"
						required="required">
				</div>
				
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="passengerEmail"
						required="required">
				</div>
				
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Phone No</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="passengerPhone"
						required="required">
				</div>
				
				<!-- First Name:<input class="form-control" type="text" name="passengerFirstName" required="required"/><br /> <br /> -->
		<!-- Last Name:<input class="form-control" type="text" name="passengerLastName" required="required"/> <br /><br />  -->
		<!-- Email:<input class="form-control" type="text" name="passengerEmail" required="required"/><br /> <br /> -->
		<!-- Phone No:<input class="form-control" type="text" name="passengerPhone" required="required"/><br /> <br /> -->
		</div>
		<!-- <p>***************************************************</p> -->
		<div id="divRight">
		<h2>Card Details</h2><br/>
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Name on the Card</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="nameOnTheCard"
						required="required">
				</div>
				
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Card Number</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="cardNumber"
						required="required">
				</div>
				
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Expiry Date</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="expiryDate"
						required="required">
				</div>
				
				<div class="input-group input-group-sm mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" id="inputGroup-sizing-sm">Three Digit Security Code(CVV)</span>
					</div>
					<input type="text" class="form-control" aria-label="Small"
						aria-describedby="inputGroup-sizing-sm" name="securityCode"
						required="required">
				</div>
		<!-- Name on the Card:<input class="form-control" type="text" name="nameOnTheCard" required="required"/><br /><br />  -->
		<!-- Card Number:<input class="form-control" type="text" name="cardNumber" required="required"/><br /> <br /> -->
		<!-- Expiry Date:<input class="form-control" type="text" name="expiryDate" required="required"/><br /><br />
		Three Digit Security Code(CVV):<input class="form-control" type="text" name="securityCode" required="required"/><br /> <br /> -->
		</div >
		<input type="hidden" name="flightId" value="${flight.id }"/><br/><br/><br/><br/>
		
		<div align="center" style="margin-top:30px;">
			<button type="submit" class="btn btn-success">Confirm Booking</button>
		</div>
		<!-- <input type="submit" value="confirm" /> -->
		</form>
	</div>
</body>
</html>