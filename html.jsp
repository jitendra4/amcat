<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>html</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<button><br> <a href='htmlquestiondeleteinput.jsp'>click here for delete your question</button></a><br><br>
<form action="htmlhandler.jsp" method="post">
<button><br> <a href='admindashboard.jsp'>click here for home page</button></a><br><br>
<button><br> <a href='htmlalldata.jsp'>click here for show all questions of html</button></a>

  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"></label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
				<img src="html.png" alt="java" width="90" height="90" align="middle">
					<label for="h_email" class="label">Write your Question</label>
					<div class="group">
					<label for="h_pass" class="label">id</label>
					<input id="h_pass" name="id" type="text" class="input" data-type="h_pass" required>
				</div>
				<div class="group">
					<label for="h_pass" class="label">Question</label>
					<input id="h_email" name="ques" type="textfield" class="input" required>
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
