<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<%  
	Connection connection=null;
try {
Class.forName("com.mysql.cj.jdbc.Driver");
 connection = DriverManager.getConnection( "jdbc:mysql://localhost:3306/ecom","root","root");

if(!connection.isClosed())
%>
<!-- <font size="+3" color="green"></b> -->
<% 
// out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.	close();
}
catch(Exception ex){
%>
<!-- </font> -->
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>
</font>