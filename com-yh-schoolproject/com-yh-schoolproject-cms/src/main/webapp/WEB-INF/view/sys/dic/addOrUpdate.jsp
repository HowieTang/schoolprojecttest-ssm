<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="x-body">
       <form action="addDic" method="post" class="layui-form layui-form-pane">
        <div class="layui-form-item">
				<label for="type" class="layui-form-label"> <span
					class="x-red">*</span>类型
				</label>
				<div class="layui-input-inline">
					<input type="text" id="type" name="type" required=""lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>请输入此字段的类型
				</div>
			</div>
		<div class="layui-form-item">
				<label for="des" class="layui-form-label"> <span
					class="x-red">*</span>描述
				</label>
				<div class="layui-input-inline">
					<input type="text" id="des" name="des" required=""lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>请输入此字段的描述
				</div>
			</div>
			<div class="layui-form-item">
				<label for="code" class="layui-form-label"> <span
					class="x-red">*</span>代码
				</label>
				<div class="layui-input-inline">
					<input type="text" id="code" name="code" required=""lay-verify="required" autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid layui-word-aux">
					<span class="x-red">*</span>请输入此字段的后台代码
				</div>
			</div>

			

			

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" lay-filter="add" >确认保存</button>
			</div>
		</form>
    </div>
  </body>
</html>
</html>