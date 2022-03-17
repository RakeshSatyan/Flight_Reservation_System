<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Flights</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<style type="text/css">
	.my-form{
		margin: 50px;
	}
	</style>
</head>
<body>
<h1 align="center"> Add Flights</h1>
<div>
<!-- <form action="addFlights" method="post">
	FlightNumber:<input type="text" name="flightNumber" placeholder="Flight Number"/><br/>
	Operating Airlines:<input type="text" name="operatingAirlines" placeholder="Airlines"/><br/>
	Departure City:<input type="text" name="departureCity" placeholder="Departure City"/><br/>
	Arrival City:<input type="text" name="arrivalCity" placeholder="Arrival City"/><br/>
	Date Of Departure:<input type="text" name="dateOfDeparture" placeholder="mm-dd-yyyy"/><br/>
	Estimated Departure Time:<input type="text" name="estimatedDepartureTime" placeholder="mm-dd-yyyy hh:mm:ss"/><br/><br/>
	<input type="submit" value="Add"/>
</form>
 -->

<form class="my-form" action="addFlights" method="post">
  <div class="form-group row">
    <label for="inputFlightNumber" class="col-sm-2 col-form-label">Flight Number</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputFlightNumber" name="flightNumber" placeholder="Flight Number"/>
    </div>
  </div><br/>
  <div class="form-group row">
    <label for="inputOperatingAirlines" class="col-sm-2 col-form-label">Operating Airlines</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputOperatingAirlines" name="operatingAirlines" placeholder="Airlines"/>
    </div>
  </div><br/>
  
  <div class="form-group row">
    <label for="inputDepartureCity" class="col-sm-2 col-form-label">Departure City</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputDepartureCity" name="departureCity" placeholder="Departure City"/>
    </div>
  </div><br/>
  
  <div class="form-group row">
    <label for="inputArrivalCity" class="col-sm-2 col-form-label">Arrival City</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputArrivalCity" name="arrivalCity" placeholder="Arrival City"/>
    </div>
  </div><br/>
  
  <div class="form-group row">
    <label for="inputDateOfDeparture" class="col-sm-2 col-form-label">Date Of Departure</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputDateOfDeparture" name="dateOfDeparture" placeholder="mm-dd-yyyy"/>
    </div>
  </div><br/>
  
  <div class="form-group row">
    <label for="inputEstimatedDepartureTime" class="col-sm-2 col-form-label">Estimated Departure Time</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEstimatedDepartureTime" name="estimatedDepartureTime" placeholder="mm-dd-yyyy hh:mm:ss"/>
    </div>
  </div><br/>
  
   <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary" >Add</button>
    </div>
  </div>
</form>
</div>
</body>
</html>

