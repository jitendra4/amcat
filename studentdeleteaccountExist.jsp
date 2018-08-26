
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
h2{
   color: 	#D2B48C;
    font-family: verdana;
    padding: 10px;
    box-shadow: 6px 6px 5px; #999;-webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999;
    font-weight: bold; background:green ; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 80%;" type="button";
}
h3{
   color: 	white;
   font-size: 70%;
    font-family: verdana;
    padding: 10px;
    box-shadow: 6px 6px 5px; #999;-webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999;
    font-weight: bold; background:green ; color: #000; border-radius: 10px; border: 1px solid #999; " type="button";
}
h1{
   color: blue;
   }
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>accountdeleted</title>
</head>
<body>
<form action="studentdeleteaccountR.jsp" method="post">
<% 
    out.println("<b style='color : red' font-size:140px;><i>This Account Is Not Exist, Please check your Name and Password</i></b><br>");
	out.println("<h1>want you delete your Account</h1>");
	out.println("<h1>Please enter the student name and password which account you want to detele</h1>");
	out.println("<h3>Student FullName</h3>");
	out.println("<input id='h_pass' name='deleteid' type='text' class='input' data-type='h_pass' required>");
	out.println("<h3>Student Password</h3>");
	out.println("<input id='h_pass' name='deleteid1' type='password' class='input' data-type='h_pass' required>");
    out.println("<h2>CLICK HERE FOR DELETED<br>");
    out.println("<button>click here</button></a>");
    out.println("</h2>");
    
%>
</form>
<%	out.println("<button> <a href='studentdashboard.jsp'>click here for home page</button> </a>");%>
</body>
</html>