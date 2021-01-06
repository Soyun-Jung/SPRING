<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html>
<head>
<title>Home</title>
<style>
body {
	padding-top: 4.2rem;
	padding-bottom: 4.2rem;
	background: rgba(0, 0, 0, 0.76);
}

a {
	text-decoration: none !important;
}

h1, h2, h3 {
	font-family: 'Kaushan Script', cursive;
}

.myform {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	padding: 1rem;
	-ms-flex-direction: column;
	flex-direction: column;
	width: 100%;
	pointer-events: auto;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 1.1rem;
	outline: 0;
	max-width: 500px;
}

.tx-tfm {
	text-transform: uppercase;
}

.mybtn {
	border-radius: 50px;
}

.login-or {
	position: relative;
	color: #aaa;
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.span-or {
	display: block;
	position: absolute;
	left: 50%;
	top: -2px;
	margin-left: -25px;
	background-color: #fff;
	width: 50px;
	text-align: center;
}

.hr-or {
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

.google {
	color: #666;
	width: 100%;
	height: 40px;
	text-align: center;
	outline: none;
	border: 1px solid lightgrey;
}

form .error {
	color: #ff0000;
}

#second {
	display: none;
}
</style>
</head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5 mx-auto">
				<div id="first">
					<div class="myform form ">
						<div class="logo mb-3">
							<div class="col-md-12 text-center">
								<h1>Login</h1>
							</div>
						</div>
						<form action="logIn" method="post" name="login">
							<div class="form-group">
								<label>Identity code</label> <input type="text" name="mid"
									class="form-control" id="mid" placeholder="Enter Id">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Password</label> <input
									type="password" name="mpwd" id="mpwd" class="form-control"
									placeholder="Enter Password">
							</div>
							<div class="form-group">
								<p class="text-center">
									By signing up you accept our <a href="#">Terms Of Use</a>
								</p>
							</div>
							<div class="col-md-12 text-center ">
								<button type="submit"
									class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
							</div>
							<div class="col-md-12 ">
								<div class="login-or">
									<hr class="hr-or">
									<span class="span-or">or</span>
								</div>
							</div>
							<div class="col-md-12 mb-3">
								<p class="text-center">
									<a href="javascript:void();" class="google btn mybtn"><i
										class="fa fa-google-plus"> </i> Signup using Google </a>
								</p>
							</div>
							<div class="form-group">
								<p class="text-center">
									Don't have account? <a href="getJoinForm" id="signup">Sign up here</a>
								</p>
							</div>
						</form>

					</div>
				</div>

			</div>
		</div>
	</div>
</body>

<script>  
	        
</script>
</html>
