<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生列表查看</title>
</head>
<body>
	<div class="x-body">
		<form action="<%=basePath %>teacher/lookTeacher" method="post" class="layui-form">
			<input type="hidden"  name="teacherId" value="${result.teacher.teacherId}" />
			<div class="layui-form-item">
				<label for="username" class="layui-form-label"> <span
					class="x-red">*</span>姓名
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true" value="${result.teacher.tname}" 
						lay-verify="required" autocomplete="off" class="layui-input" >
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>性别</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="sex" class="valid" disabled="disabled">
                    <option value="${result.teacher.sex}">${result.teacher.sex}</option>
                  </select>
                </div>
			</div>
			
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>年龄
				</label>
				<div class="layui-input-inline">
					 <input style="border: 0px;outline:none;cursor: pointer;" readonly="true"  type="text" id="L_repass" value="${result.teacher.age}"  required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>email
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"  type="text" id="L_repass" value="${result.teacher.email}" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>


			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>职务
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"  type="text" id="L_repass" value="${result.teacher.type}" required=""lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>
				<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>任教科目
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"  type="text" id="L_repass" value="${result.teacher.teach}" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">入校时间</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.teacher.admissionTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div>
			<div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> <span
					class="x-red">*</span>电话
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"  type="text" id="L_repass" value="${result.teacher.tel}" required=""
						lay-verify="repass" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">创建时间</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.teacher.createTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div>
			
			<div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">修改时间</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.teacher.updateTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div> 
            
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>状态</label>
				<div class="layui-input-block">
					<input type="radio" name="state" value="${result.teacher.state }"
						lay-skin="primary" checked=""  disabled/>启用
					<input type="radio" name="state" value="${result.teacher.state }" lay-skin="primary"  disabled/>禁用
				</div>
			</div>

			<div class="layui-form-item">
					<label for="L_repass" class="layui-form-label"> </label>
					<button class="layui-btn" type="submit">返回</button>
			</div>
		</form>
	</div>

</body>


</html>