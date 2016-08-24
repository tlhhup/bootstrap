<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理</title>
<link href="${ctx }/resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${ctx }/resources/js/jquery-3.1.0.min.js"
	type="application/javascript"></script>
<script src="${ctx }/resources/bootstrap/js/bootstrap.min.js"
	type="application/javascript"></script>
</head>
<body style="background: #fff;">
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/sys/user/list">用户列表</a></li>
		<li><a href="${ctx}/sys/user/form">用户添加</a></li>
	</ul>
	<form:form id="searchForm" modelAttribute="user"
		action="${ctx}/sys/user/list" method="post"
		class="breadcrumb form-search ">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}" />
		<input id="pageSize" name="pageSize" type="hidden"
			value="${page.pageSize}" />
		<ul class="ul-form">
			<li><label>登录名：</label>
			<form:input path="userName" htmlEscape="false" maxlength="50"
					class="input-medium" /></li>
			<li class="clearfix"></li>
			<li><label>姓&nbsp;&nbsp;&nbsp;名：</label>
			<form:input path="realName" htmlEscape="false" maxlength="50"
					class="input-medium" /></li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary"
				type="submit" value="查询" onclick="return page();" /> <input
				id="btnExport" class="btn btn-primary" type="button" value="导出" /> <input
				id="btnImport" class="btn btn-primary" type="button" value="导入" /></li>
			<li class="clearfix"></li>
		</ul>
	</form:form>
	<table class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>#</th>
				<th>姓名</th>
				<th>性别</th>
				<th>年龄</th>
				<th>创建日期</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${users }" varStatus="status">
				<tr>
					<td>${status.index+1 }</td>
					<td>${user.realName }</td>
					<td>${user.sex }</td>
					<td>${user.age }</td>
					<td><fmt:formatDate value="${user.createTime }"
							pattern="yyyy-MM-dd" /></td>
					<td><a class="btn" href="#">删除</a> <a class="btn" href="#">修改</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>