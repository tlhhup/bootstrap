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
<body>
	<table class="table table-striped table-bordered">
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
					<td>${status.index }</td>
					<td>${user.realName }</td>
					<td>${user.sex }</td>
					<td>${user.age }</td>
					<td>
						<fmt:formatDate value="${user.createTime }" pattern="yyyy-MM-dd"/>
					</td>
					<td>
						<a class="btn" href="#">删除</a>
						<a class="btn" href="#">修改</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>