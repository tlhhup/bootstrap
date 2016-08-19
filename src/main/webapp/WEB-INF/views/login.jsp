<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/tags.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>平台后台登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript">
	 addEventListener("load", function() { 
		 setTimeout(hideURLbar, 0); 
		 }, false); 
	 function hideURLbar(){
		 window.scrollTo(0,1); } 
</script>
<!-- Bootstrap Core CSS -->
<link href="${ctx }/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${ctx }/resources/js/jquery-3.1.0.min.js"
	type="application/javascript"></script>
<script src="${ctx }/resources/bootstrap/js/bootstrap.min.js"
	type="application/javascript"></script>
<link href="${ctx }/resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="${ctx }/resources/css/font-awesome.css" rel="stylesheet">
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
</head>
<body id="login">
	<div class="login-logo">
		<img src="${ctx }/resources/images/logo.png" alt="" />
	</div>
	<h2 class="form-heading">平台后台登陆</h2>
	<div class="app-cam">
		<form action="${ctx }/Login/login.hl" method="post">
			<input type="text" class="text" placeholder="userName" name="userName"/>
			<input type="password" placeholder="password" name="password"/>
			<div class="submit">
				<input type="submit" value="Login">
			</div>
			<ul class="new">
				<li class="new_left"><p>
						<a href="#">Forgot Password ?</a>
					</p></li>
				<li class="new_right"><p class="sign">
						New here ?<a href="register.html"> Sign Up</a>
					</p></li>
			</ul>
		</form>
	</div>
	<div class="copy_layout login">
		<p>
			Copyright &copy; 2015.Company name All rights reserved.More Templates
		</p>
	</div>
</body>
</html>
