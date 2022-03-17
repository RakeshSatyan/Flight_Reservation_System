<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Flight Details</title>
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
<h1 align="center">Flight Details</h1><br/>
<hr>
<div class="row">
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Add Flight Details</h5>
					<p class="card-text">To add flights click here</p>
					<a href="addFlightsAdmin" class="btn btn-primary">Add</a>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title"> View Flight Details</h5>
					<p class="card-text">To view or edit flight details click here</p>
					<a href="adminViewAllFlightDetails" class="btn btn-primary">View</a>
				</div>
			</div>
		</div>
	</div>

<!-- <div align="center">
	To add flight details <a href="addFlightsAdmin">Click Here</a><br/>
	To view and update existing flight details <a href="adminViewAllFlightDetails">Click Here</a><br/>
</div>
 -->
</body>
</html>