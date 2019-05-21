<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告查看</title>
</head>
<body>
	<div class="x-body">
		<form action="<%=basePath %>circular/circularLook" method="post" class="layui-form">
			<input type="hidden" value="${result.circular.circularId}" id="circularId" name="circularId" />
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>类型：</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"
					 value="${result.circular.type}" lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label for="leaveDays" class="layui-form-label"> <span
					class="x-red">*</span>标题：
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"
					 value="${result.circular.title}" lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">内容：</label>
                <div class="layui-input-inline">
					<textarea style="border: 0px;outline:none;cursor: pointer;" readonly="true" >${result.circular.content}</textarea>
				</div>
            </div>
            
             <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">创建时间：</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.circular.createTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div>
            
            <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">提交时间：</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.circular.submitTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div>
            
            <%-- <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">修改时间</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.circular.updateTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div> --%>
            

			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>状态：</label>
				<div class="layui-input-block">
					<input type="radio" name="state" value="${result.circular.state }"
						lay-skin="primary" checked=""  disabled/>启用
					<input type="radio" name="state" value="${result.circular.state }" lay-skin="primary"  disabled/>禁用
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