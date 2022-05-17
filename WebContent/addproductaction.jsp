<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>action</title>
</head>
<body>


<%
String product=request.getParameter("product");
String producttype=request.getParameter("ptype");
String desc=request.getParameter("desc");
int main_id=(int)session.getAttribute("mainid");


try
{
int status=0;
Connection con=Connect.getconnection();
String query="insert into product(product,product_type,description,createdby)values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1, product);
ps.setString(2, producttype);
ps.setString(3, desc);
ps.setInt(4, main_id);
status=ps.executeUpdate();
if(status>0)
{
	response.sendRedirect("sellerdash.jsp");
}
else
{
	response.sendRedirect("error.html");
}
	
}catch(Exception e){
	response.sendRedirect("error.html");
}
%>
</body>
</html>