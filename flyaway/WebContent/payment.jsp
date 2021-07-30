<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Booking"%>
<%@ page import="model.Search"%>
<%
	Booking.passenger_name = request.getParameter("pname");
	Booking.passenger_email = request.getParameter("email");
	Booking.passenger_phone = request.getParameter("phone");

	if (Booking.passenger_name.equals("") || Booking.passenger_email.equals("")
			|| Booking.passenger_phone.equals("")) {
		out.println("Please enter valid passenger details");
	} else {
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment</title>
</head>
<body>
	<h1 align="center">
		<b>Checkout</b>
	</h1>
	<p align="center">
		<span><strong>Enter Payment Details</strong></span>
	</p>
	<br>
<center>
	<form action="${pageContext.request.contextPath}/thankyou.jsp"
		method="post" class="form-container">
		<div class="form-group">
			<label for="card_details">Name on Card</label> <input type="text"
				class="form-control" id="name_on_card" name="name_on_card"
				placeholder="Enter Name on Card">
		</div><br>
		<div class="form-group">
			<label for="card_details">Card Number</label> <input type="number"
				class="form-control" id="card_details" name="card_details"
				placeholder="Enter Card Number">
		</div>
		<br>
		<p>
			<span><strong>Total fare = <br> <%=Booking.price%>
					X <%=Search.persons%> persons = Rs.<%=Booking.price * Search.persons%></strong></span>
		</p>
		<button type="submit" class="btn btn-success btn-block" value="Submit">Confirm
			Payment</button>
	</form></center>
	<br>
	<br>
	<div class="footer" align="center">FlyAway by naina</div>
</body>
</body>
</html>
<%
	}
%>
