<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生添加</title>
</head>
<body>
	<div class="x-body">
		<form class="layui-form" action="addStudent" method="post">
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>姓名
				</label>
				<div class="layui-input-inline">
					<input type="text" id="username" name="sname" required=""
						lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>请输入你的真实姓名
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>性别</label>
				<!-- <div class="layui-input-block">
					<input name="sex" type="radio" lay-skin="primary" checked="" />女
					<input name="sex" type="radio" lay-skin="primary" />男
				</div> -->
				<div class="layui-input-inline">
                  <select id="shipping" name=sex class="valid">
                    <option value="男">男</option>
                    <option value="女">女</option>
                  </select>
                </div>
			</div>
			
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>年龄
				</label>
				<div class="layui-input-inline">
					 <input type="text" id="L_repass" name="age" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>email
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_repass" name="email" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>电话
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_repass" name="tel" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>紧急联系人电话
				</label>
				<div class="layui-input-inline">
					<input type="text" id="L_repass" name="parentTel" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>班级
				</label>
				<div class="layui-input-inline">
					<select id="shipping" name="cclass" class="valid">
						<option value="暂无班级">暂无班级</option>
                    <c:forEach items="${result.cclass}" var="cclass">
                    	
						<option value="${cclass.cclass}">${cclass.cclass}</option>
					 </c:forEach>
                  </select>
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>绑定账户</label>
				<div class="layui-input-inline">
					<select id="accountId" name="accountId" class="valid" checked="checkded">
						<c:forEach items="${result.account }" var="account">
							<option value="${account.accountId}">${account.loginName}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" lay-submit="">确认保存
				</button>
			</div>
		</form>
	</div>
</body>

</html>