<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教学笔记查看</title>
<!-- 富文本编辑器样式 -->

</head>
<body>
	<div class="x-body">
		<form action="<%=basePath %>teacherNotes/teacherNotesLook" method="post" class="layui-form">
			
			<input type="hidden" value="${result.circular.circularId}" id="circularId" name="circularId" />
			<div class="layui-form-item">
				<label for="leaveDays" class="layui-form-label"> <span
					class="x-red">*</span>类型：
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"
					 value="${result.teacherNotes.dic_id}" lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			
			<%-- <div class="layui-form-item">
				<label for="leaveDays" class="layui-form-label"> <span
					class="x-red">*</span>编写人：
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"
					 value="${result.teacherNotes.loginName}" lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div> --%>

			<div class="layui-form-item">
				<label for="leaveDays" class="layui-form-label"> <span
					class="x-red">*</span>标题：
				</label>
				<div class="layui-input-inline">
					<input style="border: 0px;outline:none;cursor: pointer;" readonly="true"
					 value="${result.teacherNotes.title}" lay-verify="required" autocomplete="off" class="layui-input">
				</div>
			</div>
			
             <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">创建时间：</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.teacherNotes.create_time }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div>
            
           <%--  <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">提交时间：</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.teacherNotes.submitTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div> --%>
            
       <%--      <div class="layui-form-item layui-form-text">
                <label for="desc" class="layui-form-label">修改时间</label>
                <div class="layui-input-inline" style="margin-top: 10px;">
                	<fmt:formatDate value="${result.teacherNotes.updateTime }"  pattern="yyyy-MM-dd HH:mm:ss" />
				</div>
            </div> --%>
            
			<textarea name="content" id="editor" cols="30" rows="10" disabled="disabled">${result.teacherNotes.contents}</textarea>  	
	
			<%-- <div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>状态：</label>
				<div  style="margin-right: 950px;margin-top: 50px;" class="layui-input-block">
					<input type="radio" name="state" value="${result.teacherNotes.state }"
						lay-skin="primary" checked=""  disabled/>启用
					<input type="radio" name="state" value="${result.teacherNotes.state }" lay-skin="primary"  disabled/>禁用
				</div>
			</div>
 --%>
			<div class="layui-form-item">
					<label for="L_repass" class="layui-form-label"> </label>
					<button class="layui-btn" type="submit"  style="margin-right: 950px;margin-top: 50px;">返回</button>
			</div>
		</form>
	</div>


<!-- CKEditor富文本编辑器 -->
<script type="text/javascript">
		CKEDITOR.replace('editor');
	</script>

</body>


</html>