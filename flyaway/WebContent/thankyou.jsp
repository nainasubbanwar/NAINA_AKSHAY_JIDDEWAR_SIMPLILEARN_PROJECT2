<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Search"%>
<%@ page import="model.Booking"%>
<%
	Booking.name_on_card = request.getParameter("name_on_card");
	Booking.card_details = request.getParameter("card_details");

	if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
		out.println("Please enter valid card details");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thank you</title>
</head>
<body>

	<p align="center">
		<span><strong>Your ticket has been booked. The
				summary/details are as follows</strong></span>
	</p>
	<h2 align="center">
		<span><strong>Thank You</strong></span>
	</h2>
	<h3>Ticket Summary</h3>
	<h4>
		<strong><%=Search.source%> to <%=Search.destination%> | <%=Search.date%>
			(<%=Search.day%>)</strong>
	</h4>
	<p align="left"><%=Booking.flight_booking_id%>
		-
		<%=Booking.flight_name%>
		(Travellers
		<%=Search.persons%>)
	</p>
	<br>
	<br>
	<h3>
		<strong>Passenger Summary</strong>
	</h3>
	<h3>
		Booking Name-<%=Booking.passenger_name%>
		| Email-
		<%=Booking.passenger_email%>
		| Phone-
		<%=Booking.passenger_phone%></h3>
	<br>
	<h3>
		<strong>Payment Summary</strong>
	</h3>
	<h4>
		Payment By-<%=Booking.name_on_card%>
		| Card No-
		<%=Booking.card_details%></h4>
	<br>
	<h2 align="right">
		<strong>Total Paid- Rs.<%=Search.persons * Booking.price%></strong>
	</h2>
	<br>
	<br>
	<div class="footer" align="center">FlyAway by Govind Singh
		Rathore</div>
</body>
</html>