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
 String sqlQuery = "select * from admin where Username='"+email+"' and Password='"+pass+"'";
 
 // execute sql statement and get result-set
 ResultSet rs = st.executeQuery(sqlQuery);
 

 if(rs.next()) // means result-set has a record
 {
  // show data at client side
 // out.println("<b style='color : blue'><i></i></b>");
  response.sendRedirect("http://localhost:8080/Myproject/admindashboard.jsp");
  
  
  // show a hyperlink
    
 }
 else // there is no record inside result-set
 {
  // show data at client side
 // out.println("<b style='color : red' font-size:100px;><i>your data is not available inside our records</i></b>");
  response.sendRedirect("http://localhost:8080/Myproject/adminR.jsp");
   // show a hyperlink
  
 }
 
 // close the connection
 co.close();
 
 // ## JDBC CODE START FROM HERE ##
%>

</body>
</html>