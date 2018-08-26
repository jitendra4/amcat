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
<title>login</title>
</head>
<body>
<%
 // fetch html form data and store inside some variables
 String email = request.getParameter("h_email");
 String pass = request.getParameter("h_pass");
 
 // ## JDBC CODE START FROM HERE ##
 
 // load driver class
 Class.forName("com.mysql.jdbc.Driver");
 
 // get connection
 Connection co = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");
 
 // get statement
 Statement st = co.createStatement();
 
 // create an sql statement
 String sqlQuery = "select * from student where Username='"+email+"' and Password='"+pass+"'";
 
 // execute sql statement and get result-set
 ResultSet rs = st.executeQuery(sqlQuery);
 
 // since we know that email is a primary key, so there will be only 1 record inside result-set
 // if email is correct otherwise the result-set will have no record
 // so check if result-set has a record or not
 if(rs.next()) // means result-set has a record
 {
	
  // show data at client side
 // out.println("<b style='color : blue'><i></i></b>");
  response.sendRedirect("http://localhost:8080/Myproject/studentdashboard1.jsp");
  
  
  // show a hyperlink
    
 }
 else // there is no record inside result-set
 {
  // show data at client side
 response.sendRedirect("http://localhost:8080/Myproject/loginR.jsp");
 
 }
 
 // close the connection
 co.close();
 
 // ## JDBC CODE START FROM HERE ##
%>

</body>
</html>