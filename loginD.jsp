<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>login</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<%	out.println("<button> <a href='startindex1.jsp'>click here for home page</button> </a><br><br>");%>
<%	out.println("<br> <a href='studentdeleteaccount.jsp'>click here for delete your account</a>");%>
<form action="login-handler.jsp" method="post">

  <div class="login-wrap">
	<div class="login-html">
	<b style='color : red' font-size:100px;><i>Your Account have successfully deleted</i></b><br>
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="h_email" class="label">Username</label>
					<input id="h_email" name="h_email" type="text" class="input" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">Password</label>
					<input id="h_pass" name="h_pass" type="password" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
			
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
			
		</div>
		</div>
		</div>

</form>
<%
 
		 %>
</body>

</html>


</body>
</html>