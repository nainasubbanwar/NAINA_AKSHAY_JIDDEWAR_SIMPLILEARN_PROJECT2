<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="model.Search"%>

<%
	String driverName = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "flyaway";
	String userId = "root";
	String password = "123456";
	String query = Search.getQuery();
	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Results - FlyAway Airlines</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2 align="center">
			<span><strong>Search Results</strong></span>
		</h2>
		<p align="center">
			<span><strong> Showing available flights from <%=Search.source%>
					to <%=Search.destination%> <br> Date of travel : <%=Search.date%>
					(<%=Search.day%>) <br> No of travellers : <%=Search.persons%>
					<br>
		</p>
		<div align="center">
			<table class="table table-hover table-striped">
				<thead>
					<tr>
						<th scope="col">Flight</th>
						<th scope="col">Source</th>
						<th scope="col">Destination</th>
						<th scope="col">Date</th>
						<th scope="col">Ticket Price</th>
						<th scope="col">Select</th>
					</tr>
				</thead>
				<tbody>
					<br>
					<p align="center">
						<span><strong>Select a flight</strong></span>
					</p>
					<br>
					<%
						try {
							connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
							statement = connection.createStatement();
							resultSet = statement.executeQuery(query);
							while (resultSet.next()) {
					%>
					<tr bgcolor="#F5F5F5">
						<td><%=resultSet.getString("name")%></td>
						<td><%=resultSet.getString("source")%></td>
						<td><%=resultSet.getString("destination")%></td>
						<td><%=Search.date%></td>
						<td><%=resultSet.getString("price")%></td>
						<td>
							<form action="booking.jsp"
								method="post">
								<input type="hidden" id="name" name="name"
									value="<%=resultSet.getString("name")%>"> <input
									type="hidden" id="price" name="price"
									value="<%=resultSet.getString("price")%>"> <input
									type="hidden" id="flight_id" name="flight_id"
									value="<%=resultSet.getString("flightid")%>"> <input
									type="submit" class="btn btn-success" value="Book This Flight">
							</form>
						</td>
					</tr>
					<%
						}
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<br>
</body>
</html>