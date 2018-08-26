<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>body { background-image: url(start2.jpeg); text-align: center;  font-size: 100px; background-color: red;} </style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup_handler</title>
</head>
<body>
<%
String n_user=request.getParameter("n_Username");
String l_id=request.getParameter("p_no");
String n_pass=request.getParameter("password");
String n_pass2=request.getParameter("password2");
String n_email=request.getParameter("n_Email");



//JDBC CONNECTION
Class.forName("com.mysql.jdbc.Driver");

//CONNECTION
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");



Statement st = co.createStatement();
//STATEMENT
String query = "insert into student values('"+n_user+"','"+l_id+"','"+n_pass+"','"+n_pass2+"','"+n_email+"')";

    

   
    int nora= st.executeUpdate(query);
    if(nora>0)
    {
    
    out.println("<b style='color : red' font-size:500px;><i>WELCOME you are successfully signup</i></b><br>");
    out.println("<b style='color : red' font-size:100px;>"+n_user+"<i></i></b>");
    out.println("<br> <a href='startindex.jsp'>click here for home page</a>");
    	
    }else{
    	out.println("invalid info");
    }
co.close();


%>

</body>
</html>