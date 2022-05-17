<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

try
{
	
	String query="select user.id,logincredentials.userid,logincredentials.username,logincredentials.password,usertype.utype,usertype.id from "+
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
		int id=rs.getInt("id");
		String usern=rs.getString("username");
		String pswd=rs.getString("password");
		String utype=rs.getString("utype");
		int utype_id=rs.getInt("id");
		int userid=rs.getInt("userid");
		session.setAttribute("userid", userid);
		session.setAttribute("username", usern);
		session.setAttribute("typeid", utype_id);
		session.setAttribute("mainid", id);
	
		
		
		if((uname.equals(usern))&&(pass.equals(pswd)))
		{
			if((utype).equals("customer"))
			{
			response.sendRedirect("customerdash.html");
			}
			if((utype).equals("seller"))
			{
				response.sendRedirect("sellerdash.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
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