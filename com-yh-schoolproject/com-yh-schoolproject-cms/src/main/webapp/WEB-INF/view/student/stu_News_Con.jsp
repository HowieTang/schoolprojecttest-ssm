<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0" />
<title></title>
<!-- 富文本编辑器样式 -->
<style>
body {
	text-align: center;
}

div#editor {
	width: 65%;
	margin: 8%;
	text-align: left;
}
</style>
</head>
<body>
	<div class="x-body">
		<form class="layui-form" action="<%=basePath %>newscons/addNews" method="post">

			<input type="hidden" value="${result.stuWrite.writeId}" id="writeId"
				name="writeId">

			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>投稿人
				</label>
				<div class="layui-input-inline">
					<input type="text" id="author" name="author" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label for="name" class="layui-form-label"> <span
					class="x-red">*</span>新闻标题
				</label>
				<div class="layui-input-inline">
					<input type="text" id="title" name="title"
						value="${result.stuWrite.letterWriter}" lay-verify="required"
						autocomplete="off" class="layui-input">
				</div>
			</div>
			
			<div class="layui-form-item">
				<label class="layui-form-label"> <span class="x-red">*</span>投稿类型
				</label>
				<div class="layui-input-inline">
					<select id="dic_id" name="dic_id" checked="添加类型">
						<c:forEach items="${map.dm }" var="m">
							<option value="${m.type}">${m.type }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<%-- <input type="text" name="messageContent" value="${result.stuWrite.messageContent}"> --%>
			<!-- 富文本编辑器div内容编写 -->
			<textarea name="content" id="editor" cols="30" rows="10"></textarea>

			<button class="layui-btn" lay-filter="add"
				lay-submit="<%=basePath%>newscons/addNews">发送</button>

		</form>
	</div>


</body>
<script type="text/javascript">
	CKEDITOR.replace('editor');
</script>
</html>