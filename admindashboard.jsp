<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>body { background-image: url(start1.jpeg); text-align: center;  font-size: 20px; font-color:"green";}
h1{
   color: 	yellow;
    font-family: verdana;
    padding: 20px;
    box-shadow: 6px 6px 5px; #999;-webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999;
    font-weight: bold; background:blue ; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" type="button";
}
h2{
   color: 	yellow;
    font-family: verdana;
    padding: 20px;
    box-shadow: 6px 6px 5px; #999;-webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999;
    font-weight: bold; background:white ; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" type="button";
}
</style>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admindashboard</title>
</head>
<body>
 

	 <jsp:include page="logout.html"/>

	 <%                HttpSession s = request.getSession();
	 %>
		
        <div class="Welcome-wrap">
	<div class="login-html">
	  	<h1>Hello, ADMIN YOU ARE WELCOME</h1><br>
	     <h2>ADD QUESTIONS</h2><br>
	     <h2>please click at your language in which you want to add question</h2>
		<h2>JAVA	    <br>
		<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: red; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" type="button" value="click here" onclick="window.location.href='java.jsp'" /><br>
		</h2>
		<h2>C/C++<br>
		<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: red; color: #111; border-radius: 10px; border: 1px solid #999; font-size: 150%;" type="button" value="click here" onclick="window.location.href='c++.jsp'" />
		</h2>
		<h2>HTML<br>
		<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: red; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" type="button" value="click here" onclick="window.location.href='html.jsp'" />
		</h2>
		<h2>php<br>
		<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: red; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" type="button" value="click here" onclick="window.location.href='php.jsp'" />
		</h2>
 </div>
 </div>



</body>
</html>