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
<link rel="stylesheet" href="profile.css">
</head>
<body style="background-color:lightgray">
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
	Object type=session.getAttribute("utype");
	
	


	%>
	<div class="container-fluid mt-3">
	  <div class="row">
    <div class="col-sm-3 "></div>
    <div class="col-sm-6 text-black">
    <div class="card text-black">
    <div class="card-header bg-info"><b>Personal Details</b> 
    <a href="dashboard.html" class="close" data-dismiss="alert" aria-label="close" >&times;</a></div>
    <div class="card-body" >
    	 <p><b>Name        :</b> <%=fname+" "+lname %></p>
    	 <p><b>Username    :</b> <%=uname %></p>
    	 <p><b>Mobile Number  :</b> <%=mobile %></p>
    	 <p><b>Email-ID    :</b> <%=email%></p>   
    </div>
  </div>
    </div>
    <div class="col-sm-3 "></div>
  </div>
	</div>
	
<% 	
}

}catch(Exception e)
{
	
}


%>
</body>
</html>
