<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
try
{
Object Id=session.getAttribute("userid");
Object uname=session.getAttribute("username");
int id=(int)Id;
String query="select * from user where id=?";
Connection con=Connect.getconnection();
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1, id);
ResultSet rs=ps.executeQuery();

while(rs.next())
{
	String fname=rs.getString("firstname");
	String lname=rs.getString("lastname");
	String mobile=rs.getString("mobilenumber");
	String email=rs.getString("email");

	out.println("<h3>Name: </h3>"+fname+" "+lname);
	out.println("<h3>Username: </h3>"+uname);
	out.println("<h3>Mobile Number: </h3>"+mobile);
	out.println("<h3>Email: </h3>"+email);
	%>
	
	
<% 	
}


	
}catch(Exception e)
{
	
}


%>
</body>
</html>
