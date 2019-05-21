<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<div class="x-body">
		<form class="layui-form" action="<%=basePath %>account/AddOrUpdate" method="post">

		    <input type="hidden" value="${result.account.accountId}" id="accountId" name="accountId"/> 

			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> 
				<span class="x-red">*</span>昵称
				</label>
				<div class="layui-input-inline">
					<input type="text" id="name" name="name"
						value="${result.account.name}" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>
				</div>
			</div>
             <!--账户添加角色  -->
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>角色</label>
				<div class="layui-input-block">
					<c:forEach items="${result.roles}" var="role">
						<input name="roleName" type="checkbox" lay-skin="primary"

						 	value="${role.roleId}" />${role.roleName}
		            </c:forEach>

				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_pass" class="layui-form-label"> <span
					class="x-red">*</span>密码
				</label>
				<div class="layui-input-inline">
					<input type="password" id="pwd" name="pwd"
						value="${result.account.pwd}" lay-verify="pass" autocomplete="off"
						class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">6到16个字符</div>
			</div>

			<div class="layui-form-item">
				<label for="L_pass" class="layui-form-label"> <span
					class="x-red">*</span>状态
				</label>
				<div class="layui-input-inline">
					<input name="state" type="radio" value="${result.account.state}"
						checked="checked" />启用 &nbsp;&nbsp; <input name="state"
						type="radio" value="${result.account.state}" />停用</cite>
				</div>
			</div>


			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" type="submit">提交</button>
			</div>
		</form>
	</div>
</body>
</html>