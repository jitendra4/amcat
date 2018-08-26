<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>deleting</title>
</head>
<body>
<%
String id=request.getParameter("deleteid");

//JDBC CONNECTION
Class.forName("com.mysql.jdbc.Driver");

//CONNECTION
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");



Statement stmt=con.createStatement();
// send SQL command
int rs = stmt.executeUpdate("delete from html where id='"+id+"'");
// printing message for the user

stmt.close();
con.close();
response.sendRedirect("http://localhost:8080/Myproject/htmlR.jsp");
%>
hello
</body>
</html>