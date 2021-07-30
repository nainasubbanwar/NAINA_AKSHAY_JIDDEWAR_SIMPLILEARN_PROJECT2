<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="servlets.Login"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Dashboard</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
	<%
		if (Login.isLoggedIn) {
	%>
	<h2 align="center">
		<b>Admin Dashboard</b>
	</h2>
	<p align="center">
		<span><strong>You are LoggedIn as : <%=Login.email%>.
				Your Password is : <%=Login.password%></strong></span>
	</p>
	
	<br>
	<br>
	<center>
	<form method="post"
		action="changepassword.jsp">
		<button type="submit" class="btn btn-success mb-2 btn-block">Change
			Password</button>
	</form>
	&ensp;
	<br>
	<br>

	<form method="post" action="welcome.jsp">
		<button type="submit" class="btn mb-2 btn-danger btn-block">Logout</button>
	</form></center>
	<br>
	<br>
	<center>
		<table>
			<tr>
				<td>Flight_ID</td>
				<td>Name</td>
				<td>Source</td>
				<td>Destination</td>
				<td>Day</td>
				<td>Price</td>

			</tr>
			<%
				Connection conn = null;
					Statement st = null;
					ResultSet rs = null;

					try {
						Class.forName("com.mysql.jdbc.Driver");
						conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway", "root",
								"123456");
						st = conn.createStatement();
						String qry = "select * from flights";
						rs = st.executeQuery(qry);
						while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
			</tr>
			<%
				}

					} catch (Exception e) {
						e.printStackTrace();
					}
				} else {
					out.print("You must Login first");
				}
			%>
		</table>
	</center>
	<br>
	<br>
	<div class="footer" align="center">FlyAway by Govind Singh
		Rathore</div>
</body>
</body>
</html>