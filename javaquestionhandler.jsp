<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>form { background-image:url(start2.jpeg); text-align: center; font-size:40px;}
h2{
   color: 	#D2B48C;
    font-family: verdana;
    padding: 10px;
    box-shadow: 6px 6px 5px; #999;-webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999;
    font-weight: bold; background:green ; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 50%;" type="button";
}
</style>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>questionhandler</title>
</head>

<body>
<%
String id=request.getParameter("id");
String ques=request.getParameter("ques");
String a=request.getParameter("a");
String b=request.getParameter("b");
String c=request.getParameter("c"); 
String d=request.getParameter("d");
String ans=request.getParameter("ans");


//JDBC CONNECTION
Class.forName("com.mysql.jdbc.Driver");

//CONNECTION
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");



Statement st = co.createStatement();
//STATEMENT
String query = "insert into Java values('"+id+"','"+ques+"','"+a+"','"+b+"','"+c+"','"+d+"','"+ans+"')";

    

   
    int nora= st.executeUpdate(query);
    if(nora>0){
    	// response.sendRedirect("http://localhost:8080/Myproject/javaaddquetionshow.jsp");
  
    out.println("<form>");
    
	out.println("<b style='color : red' font-size:200px;><i>your question have successfully added</i></b><br>");
	out.println("<fieldset>");
	out.println("<b style='color : red' font-size:150px;><i>THE QUESTION IS:---></i></b><br>");
	 out.println("<b style='color : yellow' font-size:100px;>id=>"+id+"<i></i></b><br>");
	out.println("<b style='color : yellow' font-size:100px;>ques=>"+ques+"<i></i></b><br>");
    out.println("<b style='color : yellow' font-size:100px;>-"+a+"<i></i></b><br>");
    out.println("<b style='color : yellow' font-size:100px;>-"+b+"<i></i></b><br>");
    out.println("<b style='color : yellow' font-size:100px;>-"+c+"<i></i></b><br>");
    out.println("<b style='color : yellow' font-size:100px;>-"+d+"<i></i></b><br>");
    out.println("<b style='color : yellow' font-size:100px;>Correct Answer.-"+ans+"<i></i></b><br>");
    out.println("</fieldset>");
    
    out.println("<h2>CLICK HERE FOR ADD ANOTHER QUESTION<br>");
    out.println("<button><a href='java.jsp'>click here</button></a>");
     out.println("</h2>");
   
    out.println("</form>");

    
    }else
    {
    	out.println("<h3 style='color : red'>invalid question</h3>");
    	out.println("<a href='java.jsp'>please try again</a>");
    }
    
%>

</body>
</html>