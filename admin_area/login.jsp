<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	  <!-- bootstrap library -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <link rel="stylesheet" type="text/css" href="css/login.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Admin Login</title>
</head>
<body>

<div class="container">          <!-- container start -->
	<form class="form-login" action="" method="post">     <!-- form-login starts -->
		
		<h2 class="form-login-heading">Admin Login</h2>

       <input type="text" class="form-control" name="admin_email" placeholder="Email Address" required>

       <input type="password" class="form-control" name="admin_pass" placeholder="Password" required>

       <button class="btn btn-lg btn-primary btn-block" type="submit" name="admin_login">
       	
       	Log in
       
       </button>
    
       <h4 class="forgot-password"> 
       	<a href="forgot_password.jsp"> Lost your password? Forgot Password</a>
       </h4>

	</form>                                               <!-- form-login end -->
</div>                           <!-- container end -->

</body>
</html>