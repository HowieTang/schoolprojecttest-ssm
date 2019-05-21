<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师笔记添加修改</title>
</head>
<body>

	<!-- 框架 -->
	<div class="x-body">
		<form action="<%=basePath %>teacherNotes/add" method="post" class="layui-form">
			<%-- <input type="hidden" name="loginName" value="${result.loginName } ">  --%>
			<%-- <div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>类型</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="type" class="valid">
                    <c:forEach items="${result.dm}" var="dic">
						<option value="${dic.type}">${dic.type}</option>
					 </c:forEach>
                  </select>
                </div>
			</div> --%>
			
			
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>类型</label>
				<div class="layui-input-inline">
                  <select id="shipping" name="dic_id" class="valid">
                    <c:forEach items="${result.dm}" var="dic">
						<option value="${dic.type}">${dic.type}</option>
					 </c:forEach>
                  </select>
                </div>
			</div>
			
			<%-- <div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>编写人</label>
				<div class="layui-input-inline">
                  <select id="tname" name="loginName" class="valid">
                    <c:forEach items="${result.am}" var="account">
						<option value="${account.loginName}">${account.loginName}</option>
					 </c:forEach>
                  </select> 
                </div>
			</div> --%>

			<div class="layui-form-item">
				<label for="leaveDays" class="layui-form-label"> <span
					class="x-red">*</span>标题
				</label>
				<div class="layui-input-inline">
					<input type="text" name="title" required="" lay-verify="required" 
					autocomplete="off" class="layui-input">
				</div>

			</div>
		<!-- 富文本编辑器 -->
			<textarea name="content" id="editor" cols="30" rows="10"></textarea>  	
			
			<div class="layui-form-item">
				<label class="layui-form-label"><span class="x-red">*</span>状态：</label>
				<div class="layui-input-block">
	                <input type="radio" name="state" value="3" lay-skin="primary" title="私密" >
	                <input type="radio" name="state" value="4"  lay-skin="primary" title="公开">
	                <input type="radio" name="state" value="5" lay-skin="primary" title="投稿" >
              </div>
              
			<div class="layui-form-item">
					<label for="L_repass" class="layui-form-label"> </label>
					<button class="layui-btn" type="submit" style="margin-right: 950px;margin-top: 50px;">提交</button>
			</div>
		</form>
	</div>
	<!-- 框架 结束-->

<!-- CKEditor富文本编辑器 -->
<script type="text/javascript">
		CKEDITOR.replace('content');
	</script>
</body>


</html>