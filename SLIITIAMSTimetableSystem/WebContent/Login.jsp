<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>SLIIT | IAMS | Instructor Allocation and Management System</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
	<link rel="icon" href="assetsdash/img/sliitlogo.png" type="image/x-icon"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<script src="../assetsdash/js/plugin/webfont/webfont.min.js"></script>
	

	<link rel="stylesheet" href="assetsdash/css/bootstrap.min.css">
	<link rel="stylesheet" href="assetsdash/css/atlantis.min.css">
	<link href="assetsdash/styles.css" rel="stylesheet" />
	<link href="assetsdash/prism.css" rel="stylesheet" />
	

	
	<style>
@charset "ISO-8859-1";

@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

* {
	box-sizing: border-box;
}



h1 {
	font-weight: bold;
	margin: 0;
}

h2 {
	text-align: center;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

button {
	border-radius: 20px;
	border: 1px solid #FFFFFF;
	background-color: #475f96;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

button:active {
	transform: scale(0.95);
}

button:focus {
	outline: none;
}

button.ghost {
	background-color: transparent;
	border-color: #FFFFFF;
	   margin-top: 10px;
}

form {
	background-color: #FFFFFF;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
}

input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}


.container {
	background-color: #fff;
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 
			0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 768px;
	max-width: 100%;
	min-height: 480px;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
	transition: all 0.6s ease-in-out;
}

.sign-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
}

.container.right-panel-active .sign-in-container {
	transform: translateX(100%);
}

.sign-up-container {
	left: 0;
	width: 50%;
	opacity: 0;
	z-index: 1;
}

.container.right-panel-active .sign-up-container {
	transform: translateX(100%);
	opacity: 1;
	z-index: 5;
	animation: show 0.6s;
}

@keyframes show {
	0%, 49.99% {
		opacity: 0;
		z-index: 1;
	}
	
	50%, 100% {
		opacity: 1;
		z-index: 5;
	}
}

.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
	overflow: hidden;
	transition: transform 0.6s ease-in-out;
	z-index: 100;
}

.container.right-panel-active .overlay-container{
	transform: translateX(-100%);
}

.overlay {
	background: #0080c0;
	background: -webkit-linear-gradient(to right, #6799b5, #425887);
	background: linear-gradient(to right, #6799b5, #425887);
	background-repeat: no-repeat;
	background-size: cover;
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
  	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.container.right-panel-active .overlay {
  	transform: translateX(50%);
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
	transform: translateX(0);
	transition: transform 0.6s ease-in-out;
}

.overlay-left {
	transform: translateX(-20%);
}

.container.right-panel-active .overlay-left {
	transform: translateX(0);
}

.overlay-right {
	right: 0;
	transform: translateX(0);
}

.container.right-panel-active .overlay-right {
	transform: translateX(20%);
}

.social-container {
	margin: 20px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}




.divmidel{
 padding-top: 150px;
  padding-right: 30px;
  
  padding-left: 80px;
}
.jumbotron{

background: linear-gradient(0.25turn, #C7D3D4FF,#A2A2A1FF);
 height: 80px;
   }
    	body{
background: linear-gradient(0.15turn, #C7D3D4FF,#A2A2A1FF);
     
    
}

.namesliit{
margin-left: 10px;

}
.tclr{

color: #293f54;
}
	</style>
	
	<script type="text/javascript">
function validate(){
	var empno=document.loginform.empno.value;
	var password=document.loginform.password.value;
	
	if(empno== null || empno==""){
		alert("Please Enter Emp No");
		document.loginform.empno.focus();
		return false;
	
	}else if(password== null || password==""){
		alert("Please Enter Valid Password.");
		document.loginform.password.focus();
		return false;
}else if(password== null || password==""){
	alert("Please Enter Valid Password.");
	document.loginform.password.focus();
	return false;
}
}



</script>
	
</head>
<body>
	<div class="wrapper" class="jumbotron">
		<div class="main-header">
	
			<nav class="navbar navbar-header navbar-expand-lg" data-background-color="light-blue2">
				<div class="container-fluid">
				<image src="assets/img/SLIIT_Logo.png" width="35" height="40" ></image> 
					<label class="namesliit"><b class="tclr">SLIIT | Instructors Allocation and  Management System</b></label>
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
					
							
						
					</ul>
				</div>
			</nav>
		</div>



<div class="divmidel" >
<div class="container" id="container">

	<div class="form-container sign-in-container">
		<form action="login" method="post" name="loginform">
			<h1>Sign in</h1>

			<input type="text" name="empno" placeholder="Emp No" />
			<input type="password" name="password" placeholder="Password" />
			<a href="#">Forgot your password?</a>
			
				<button type="submit" class="btnmargin" class="btn btn-primary btn-rounded"  onclick="return validate();" >Sign in</button>
			
				
		
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
		
			<div class="overlay-panel overlay-right">
				<h1>Hello!</h1>
				<p>If you have not an account, enter your personal details and start journey with us</p>

							
		<button type="button" class="ghost"  onclick="window.location='CreateAccount.jsp'">Create Account</button>
		
				
			
			</div>
		</div>
	</div>
</div>
</div>
</div>

</body>

</html>