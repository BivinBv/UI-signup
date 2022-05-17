<%@page import="connection.Connect"%>
<%@page import="org.omg.CORBA.Request"%>
<%@ page language="java" import="java.sql.*, java.util.*, java.io.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<title>view products</title>
</head>
<body>

<%
try
{
int main_id=(int)session.getAttribute("mainid");
Connection con=Connect.getconnection();
	
String query="select * from product where createdby=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setInt(1, main_id);
ResultSet rs=ps.executeQuery();
%>
<div class="container mt-3">      
  <table id="table"class="table table-striped">
    <thead>
      <tr>
        <th>Product Name</th>
        <th>Product Type</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
<%
int index=1;

while(rs.next())
{
	String productname=rs.getString("product");
	String product_type=rs.getString("product_type");
	String desc=rs.getString("description");

%>

      <tr>
        <td><%=productname %></td>
        <td><%=product_type %></td>
        <td><%=desc %></td>
      </tr>
    </tbody>
  </table>
</div>
<% }
}catch(Exception e){}%>

</body>
</html>