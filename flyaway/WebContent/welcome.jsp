<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="servlets.Login"%>
<%
	Login.isLoggedIn = false;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>

	<div ALIGN="center">
		<h1>Welcome to FlyAway</h1>
		<h2>Book flights at best prices</h2>
		<h3>Admin Login</h3>
		<form action="Login" method="post"
			class="form-container">
			<div class="form-group mb-2">
				<label for="inputEmail" class="sr-only">Email address</label> <input
					type="email" name="emailEntered" class="form-control"
					id="inputEmail" aria-describedby="emailHelp"
					placeholder="Enter email"> <br> <small id="emailHelp"
					class="form-text text-muted">&nbsp;&nbsp;Email :
					admin@flyaway.com</small>
			</div>
			<div class="form-group mx-sm-3 mb-2">
				<label for="inputPassword" class="sr-only">Password</label> <input
					type="password" name="passwordEntered" class="form-control"
					id="inputPassword" placeholder="Password"> <br> <small
					id="passwordHelp" class="form-text text-muted">&nbsp;&nbsp;
					Current Password :&nbsp;<%=Login.password%></small>
			</div>
			<button type="submit" class="btn btn-success btn-block"
				value="Submit">Login</button>
		</form>
	</div>
	<br>
	<br>

	<div ALIGN="center">
		<h1>Book your ticket here...</h1>
		<form action="SearchServlet"
			method="post">
			<label for="date">Date:</label> <input type="date" name="date">
			<label for="source">Source</label> <select class="form-control"
				id="source" name="source">
				<option value="India">India</option>
				<option value="USA">USA</option>
				<option value="UK">UK</option>
			</select> <label for="destination">Destination</label> <select
				class="form-control" name="destination">
				<option value="USA">USA</option>
				<option value="UK">UK</option>
				<option value="India">India</option>
			</select> <label for="persons">No of Persons</label> <select
				class="form-control" name="persons">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select><br> <br> <input type="submit" class="btn btn-success"
				value="Search">
		</form>
	</div>
	<br>
	<br>
	<div class="footer" align="center">FlyAway by Govind Singh
		Rathore</div>
</body>
</html>