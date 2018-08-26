<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
h2{
   color: 	red;
    font-family: verdana;
    padding: 10px;
    box-shadow: 6px 6px 5px; #999;-webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999;
    font-weight: bold; background:green ; color: #000;align:center; border-radius: 10px; border: 1px solid #999; font-size: 100%;" type="button";
}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>c++R</title>
</head>
<body>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>c++</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<h2>Your question have successfully deleted</h2><br>
<button><br> <a href='cquestiondeleteinput.jsp'>click here for delete your question</button></a><br><br>
<form action="c++questionhandler.jsp" method="post">
<button><br> <a href='admindashboard.jsp'>click here for home page</button></a><br><br>
<button><br> <a href='c++alldata.jsp'>click here for show all questions of c/c++</button></a>


 <div class="login-wrap">
	<div class="login-html">
	<img src="c.png" alt="java" width="90" height="90" align="middle">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"></label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="h_email" class="label">Write your Question</label>
					<div class="group">
					<label for="h_pass" class="label">id</label>
					<input id="h_pass" name="id" type="text" class="input" data-type="h_pass" required>
				</div>
					<div class="group">
					<label for="h_pass" class="label">Question</label>
					<input id="h_pass" name="ques" type="text" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">A</label>
					<input id="h_pass" name="a" type="text" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">B</label>
					<input id="h_pass" name="b" type="text" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">C</label>
					<input id="h_pass" name="c" type="text" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">D</label>
					<input id="h_pass" name="d" type="text" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">Answer</label>
					<input id="h_pass" name="ans" type="text"class="input" data-type="h_pass" required>
				</div>				
				<div class="group">
					<input type="submit" class="button" value="submit">
				</div>				
			</div>			
		</div>
		</div>
		</div>

</form>
</body>

</html>
