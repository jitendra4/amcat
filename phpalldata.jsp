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
<title>edit</title>
</head>

<body>

<button><br> <a href='admindashboard.jsp'>click here for home page</button></a><br><br>
<h2 style="text-align:center">php All Question's </h2>

<center>

<%


  // load driver class
 Class.forName("com.mysql.jdbc.Driver");
 
 // get object of connection 
 Connection co = DriverManager.getConnection
  ("jdbc:mysql://localhost:3306/Project","root","root");
 
 // get object of statement
 Statement st = co.createStatement();

  // create query to be executed
 String sql = "select * from php";

  // execute the query and get object of result-set
 ResultSet rs = st.executeQuery(sql);
 
 // check if there is a record inside the result-set
 while(rs.next()) // fetch record from result-set 
 {
  // fetch the data of all the columns of result-set
  String id = rs.getString("id");
  String Question = rs.getString("Question");
  String A = rs.getString("A");
  String B = rs.getString("B"); 
  String C = rs.getString("C");
  String D = rs.getString("D");
  String Answer = rs.getString("Answer"); 
  
  %>
  
<hr/>

<br/>
Id=><%=id%><br>
Question.--> <%=Question%><br><br>
=><%=A%><br>
=><%=B%><br>
=><%=C%><br>
=><%=D%><br>
Answer=><%=Answer%><br>
<br/><hr/>

</form>

<br>

 <% 
 }
%>

</center>
</body>
</html>