<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.dropbtn {
  background-color: #ea2129;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

</style>
</head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#"> <img class="logo"
			src="http://bootstrap-ecommerce.com/main/images/logo-white.png"
			height="40"> Soyun Jung
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar1" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbar1">
			<div class="navbar-nav ml-auto">
				<div class="nav-item active"><a class="nav-link"
					href="http://bootstrap-ecommerce.com">Home <span
						class="sr-only">(current)</span></a></div>
				<div class="nav-item"><a class="nav-link"
					href="html-components.html"> ${mname} </a></div>
				<div class="nav-item dropdown">
				<a class="nav-link  dropdown-toggle dropbtn" href="#" data-toggle="dropdown">  ${mname}님  </a>
    				<div class="dropdown-content">
	 				 	<a class="dropdown-item" href="MyPage"> 마이페이지</a>
	 					<a class="dropdown-item" href="LogOut"> 로그아웃 </a>
    				</div>
				</div>
			</div>
		</div>
	</nav>




	<div class="container">
		<br>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
			do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
			enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
			ut aliquip ex ea commodo consequat. Duis aute irure dolor in
			reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
			pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
			culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
	<!-- .//container -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<article class="bg-secondary mb-3">
		<div class="card-body text-center">
			<h4 class="text-white">
				HTML UI KIT <br> Ready to use Bootstrap 4 components and
				templates
			</h4>
			<p class="h5 text-white">for Ecommerce, marketplace, booking
				websites and product landing pages</p>
			<br>
			<p>
				<a class="btn btn-warning" target="_blank"
					href="http://bootstrap-ecommerce.com/"> Bootstrap-ecommerce.com
					<i class="fa fa-window-restore "></i>
				</a>
			</p>
		</div>
		<br>
		<br>
	</article>
</body>
</html>