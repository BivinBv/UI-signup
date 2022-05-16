<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String utype=request.getParameter("utype");

try
{
Connection con=Connect.getconnection();
	int status3=0;
String query3="insert into usertype(utype)values(?)";
	PreparedStatement ps2=con.prepareStatement(query3);
	ps2.setString(1, utype);
	status3=ps2.executeUpdate();
	ResultSet rs2=ps2.getGeneratedKeys();	
	
String query1="insert into user(firstname,lastname,mobilenumber,email,usertype_id)values(?,?,?,?,?)";
	int status1=0;
	int status2=0;

	PreparedStatement ps=con.prepareStatement(query1);
		if(rs2.next())
		{
			int usertype_id=rs2.getInt(1);
			ps.setInt(5,usertype_id);
		}
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3,mobile);
		ps.setString(4,email);
		status1=ps.executeUpdate();
	ResultSet rs=ps.getGeneratedKeys();
	

String query2="insert into logincredentials(userid,username,password)values(?,?,?)";
	PreparedStatement ps1=con.prepareStatement(query2);
		if(rs.next())
		{
			int userid=rs.getInt(1);
			ps1.setInt(1, userid);
		}
	ps1.setString(2,uname);
	ps1.setString(3,pass);
	status2=ps1.executeUpdate();
	
	if(status1>0)
	{
		if(status2>0)
		{
			response.sendRedirect("Login.html");
		}
	}

}
catch(Exception e)
{
	response.sendRedirect("error.html");
}

%>