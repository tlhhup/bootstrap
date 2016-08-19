<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link href="${ctx }/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="${ctx }/resources/js/jquery-3.1.0.min.js" type="application/javascript"></script>
<script src="${ctx }/resources/bootstrap/js/bootstrap.min.js" type="application/javascript"></script>
<style type="text/css">
html, body, table {
	background-color: #f5f5f5;
	width: 100%;
	text-align: center;
}

.form-signin {
	position: relative;
	text-align: left;
	width: 450px;
	padding: 25px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .input-label {
	font-size: 16px;
	line-height: 35px;
	color: #999;
}

.form-signin .input-block-level {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px;
	*width: 283px;
	*padding-bottom: 0;
	_padding: 7px 7px 9px 7px;
}

.form-signin .btn.btn-large {
	font-size: 16px;
}

.form-signin div.validateCode {
	padding-bottom: 15px;
}
</style>
</head>
<body>
	<form id="loginForm" class="form-signin" action="" method="post">
		<div class="form-group">
			<label class="input-label col-sm-3 control-label" for="username">登录名</label>
			<div class="col-sm-8">
				<input type="text" id="username" name="userName" class="input-block-level required"> 
			</div>
		</div>
		<div class="form-group">
			<label class="input-label col-sm-3 control-label" for="password">密码</label>
			<div class="col-sm-8">
				<input type="password" id="password" name="password" class="input-block-level required">
			</div>
		</div>
		<div class="form-group" align="center">
			<input class="btn btn-large btn-primary" type="submit" value="登 录" />&nbsp;&nbsp;
			<input type="reset" class="btn btn-large btn-primary" value="重置">
		</div>
	</form>
</body>
</html>