<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

try
{
	
	String query="select logincredentials.userid,logincredentials.username,logincredentials.password,usertype.utype from "+
	"((user inner join logincredentials on user.id=logincredentials.userid)"+
			"inner join usertype on usertype.id=user.usertype_id)"+
	"where username=? and password=?";
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
		String utype=rs.getString("utype");
		
		if((uname.equals(usern))&&(pass.equals(pswd)))
		{
			if((utype).equals("customer"))
			{
			response.sendRedirect("dashboard.html");
			}
			else
			{
				response.sendRedirect("admin.jsp");
			}
		}	
		else
			response.sendRedirect("loginfailed.html");
	}
	while(!rs.next())
	{
		request.setAttribute("error","Incorrect username or password");
		response.sendRedirect("loginfailed.html");
	}

	
}catch(Exception e)
{
	out.print(e);
}
%>    