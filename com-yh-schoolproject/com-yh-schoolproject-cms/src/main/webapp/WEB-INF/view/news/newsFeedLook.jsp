<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <!-- 引用base -->
<%@include file="./../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新闻投稿查看页面</title>
</head>
<body>
	<div class="x-body">
		<form action="<%=basePath %>news/newsFeedLook" method="post" class="layui-form">
			<input type="hidden" value="${result.news.news_id}" id="news_id" name="news_id" />
				<!-- 新闻标题 -->
			<div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red"></span>新闻标题
              </label>
              <div class="layui-input-inline">
                  <input type="text" name="title" lay-verify="required"
                  autocomplete="off" value="${result.news.title }" class="layui-input" disabled="disabled">
              </div>
          	</div>
         <!-- 新闻作者 -->
         
          	<div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red"></span>新闻作者
              </label>
              <div class="layui-input-inline">
                  <input type="text" name="author" required="" lay-verify="required"
                  autocomplete="off" value="${result.news.author }" class="layui-input" disabled="disabled">
              </div>
          	</div>
          	
          	<!-- 新闻类别 -->
			<div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red"></span>新闻类型
              </label>
              <div class="layui-input-inline">
                  <input type="text" name="author" required="" lay-verify="required"
                  autocomplete="off" value="${result.news.dic_id }" class="layui-input" disabled="disabled">
              </div>
          	</div>
          	
			<!-- html代码网页内容 -->
			<textarea name="content" id="editor" cols="30" rows="10" disabled="disabled">${result.news.contents }</textarea>
			
			
			<!-- 按钮 -->
			<td class="td-manage">
				<a class="layui-btn" href="<%=basePath %>news/updateNewsYes?news_id=${result.news.news_id}" ><h2>过审上传</h2></a>
				<a class="layui-btn" href="<%=basePath %>news/updateNewsNo?news_id=${result.news.news_id}" ><h2>拒绝过审</h2></a>
				<button class="layui-btn" type="submit">返回</button>
			</td>
		</form>
	</div>
	
	<!-- 将相应的控件替换成编辑器代码 -->
	<script type="text/javascript">
		CKEDITOR.replace('content');
	</script>
</body>
</html>