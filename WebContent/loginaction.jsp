<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

try
{
	 boolean exist = false;
	String query="select * from logincredentials where username=? and password=?";
	Connection con=Connect.getconnection();
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, uname);
	ps.setString(2, pass);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		String usern=rs.getString("username");
		String pswd=rs.getString("password");
		int userid=rs.getInt("userid");
		session.setAttribute("userid", userid);
		session.setAttribute("username", usern);
		
		if((uname.equals(usern))&&(pass.equals(pswd)))
		{
			response.sendRedirect("dashboard.html");
		}	
		else
			response.sendRedirect("error.html");
	}
	while(!rs.next())
	{
		response.sendRedirect("error.html");
	}
	
}catch(Exception e)
{
	out.print(e);
}
%>    