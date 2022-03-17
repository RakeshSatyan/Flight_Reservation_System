<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Admin</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<style type="text/css">
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: #DEDDDD;
  margin:30px 100px;
 
}
</style>
</head>
<body>
	<h1 align="center">Welcome Admin</h1><br/><hr><br/>
	<!-- To view users details <a href="adminViewUsers"> Click Here</a><br/>
To view flight details <a href="adminViewFlight"> Click Here</a><br/>
To view Passenger details <a href="#"> Click Here</a><br/>
To view Reservation details <a href="#"> Click Here</a><br/> -->

	<div class="row">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Users Details</h5>
					<p class="card-text">To view or edit user details click here</p>
					<a href="adminViewUsers" class="btn btn-primary">Users</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Flight Details</h5>
					<p class="card-text">To view or edit flight details click here</p>
					<a href="adminViewFlight" class="btn btn-primary">Flights</a>
				</div>
			</div>
		</div>
	</div><br/><br/>
	
	<div class="row">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Passenger Details</h5>
					<p class="card-text">To view passenger details click here</p>
					<a href="#" class="btn btn-primary">Passenger</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Reservation Details</h5>
					<p class="card-text">To view reservation details click here</p>
					<a href="#" class="btn btn-primary">Reservation</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>