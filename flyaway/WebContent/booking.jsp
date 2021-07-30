<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Booking"%>
<%
	Booking.flight_booking_id = request.getParameter("flight_id");
	Booking.price = Integer.parseInt(request.getParameter("price"));
	Booking.flight_name = request.getParameter("name");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking</title>
</head>
<body>
	<br>
	<br>
	<h1 align="center">
		<b>Booking Details</b>
	</h1>
	<p align="center">
		<span><strong>Enter Passenger Details</strong></span>
	</p>
	<br>
	<br>
	<center>
	<form action="${pageContext.request.contextPath}/payment.jsp"
		method="post" class="form-container">
		<div class="form-group">
			<label for="pname">Passenger Name</label> <input type="text"
				class="form-control" id="pname" name="pname"
				placeholder="Enter name of the/any passenger(s)">
		</div><br>
		<div class="form-group">
			<label for="email">Email address</label> <input type="email"
				name="email" class="form-control" id="email"
				aria-describedby="emailHelp" placeholder="Enter email">
		</div><br>
		<div class="form-group">
			<label for="phone">Phone</label> <input type="number"
				class="form-control" id="phone" name="phone"
				placeholder="Enter phone number">
		</div>
		<br>
		<button type="submit" class="btn btn-success btn-block" value="Submit">Submit</button>
	</form></center>
	<br>
	<br>
	<div class="footer" align="center">FlyAway by Govind Singh
		Rathore</div>
</body>
</body>
</html>
