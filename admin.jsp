<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>login</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

<form action="adminhandler.jsp" method="post">

  <div class="login-wrap">
	<div class="login-html">
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
<%
out.println("<br> <a href='startindex1.jsp'>click here for home page</a>");
%>
</form>
</body>

</html>
