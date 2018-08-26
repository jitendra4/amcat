<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String totalmark=(String)session.getAttribute( "total");  
String Atemp=(String)session.getAttribute( "attempt");  
String username = (String)session.getAttribute("Ques1");
//String username =(String)session.getAttribute("remark");
out.print("<h>marks Username isssssssssssss==>"+username+"</h>");
out.print("<h>marks Attemp isssssssssssss==>"+Atemp+"</h>");
out.print("<h>marks total isssssssssssss==>"+totalmark+"</h>");

%>
</body>
</html>