<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="base.jsp"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>校园管理登录</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

</head>
<body class="login-bg">

	<div class="login layui-anim layui-anim-up">
		<div class="message">校园管理登录</div>
		<div id="darkbannerwrap"></div>

		<form action="checkLogin" method="post" class="layui-form">
			<input name="loginName" placeholder="账号" type="text"
				lay-verify="required" class="layui-input"> <input
				name="pwd" lay-verify="required" placeholder="密码" type="password"
				class="layui-input"><br> <input value="登录" lay-submit
				lay-filter="login" style="width: 100%;" type="submit">
		</form>
		<br>
		<a href="<%=basePath %>login/bfRegister"><input value="注册" id="register"lay-submit lay-filter="login" style="width: 100%;"
			type="button"></a>
	</div>
</body>

</html>