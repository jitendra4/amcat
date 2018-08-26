
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Signup</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="css/style.css">

  
</head>
<script type="text/javascript">  
function matchpass(){  
var firstpassword=document.f1.password.value;  
var secondpassword=document.f1.password2.value;  
  
if(firstpassword==secondpassword){  
return true;  
}  
else{  
alert("password must be same!");  
return false;  
}  
}  
</script>  

<body>

<form name="f1" action="Signup-handler.jsp" onsubmit="return matchpass()"> 

  <div class="login-wrap">
	<div class="login-html">
	
		
		
		<input id="tab-1" type="radio" name="tab" class="sign-up" checked><label for="tab-1" class="tab">Sign Up</label>
		<div class="login-form">
			<div class="sign-in-htm">
				</div>
			<div class="sign-up-htm">
			<div class="group">
					<label for="user" class="label">Student Name</label>
					<input id="user" name="n_Username" type="text" class="input" required>
				</div>
				<div class="group">
					<label for="user" class="label">Gender</label>
					<input id="pass" name="p_no" type="radio" value="male"  required>male
					<input id="pass" name="p_no" type="radio"  value="female"  required>female
					<input id="pass" name="p_no" type="radio" value="other"  required>other
				</div>
				
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input id="pass" name="password" minlength="5"  type="password" class="input" data-type="password" required>
				</div>
				<div class="group">
					<label for="pass" class="label">re-Password</label>
					<input id="pass" type="password" name="password2" class="input" data-type="password">
				</div>
				
				<div class="group">
					<label for="pass" class="label">Email Address</label>
					<input id="email" name="n_Email" type="email" class="input" required>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign Up">
				</div>
				
				
				</div>
			</div>
		</div>
	
  </div>
  
</form>
</body>

</html>
