<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!-- 引用base -->
<%@include file="./../base/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>编写新闻页面</title>
    <!-- fileinput图片上传引用 -->
    <script type="text/javascript" src="<%=basePath %>static/plugin/fileinput/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/plugin/fileinput/js/fileinput.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/plugin/fileinput/js/zh.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/plugin/fileinput/js/theme.js"></script>
    <script type="text/javascript" src="<%=basePath %>static/plugin/fileinput/js/my.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>static/plugin/fileinput/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>static/plugin/fileinput/css/fileinput.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>static/plugin/fileinput/css/theme.css"/>

</head>
<body>
<!-- 全部内容 -->
<div class="x-body">
    <form action="<%=basePath %>news/addOrUpdate" method="post" class="layui-form">
        <input type="hidden" value="${result.news.news_id}" name="news_id"/>
        <!-- 新闻标题 -->
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red"></span>新闻标题
            </label>
            <div class="layui-input-inline">
                <input type="text" name="title" required="" lay-verify="required"
                       autocomplete="off" value="${result.news.title }" class="layui-input">
            </div>
        </div>

        <!-- 新闻作者 -->
        <div class="layui-form-item">
            <label for="username" class="layui-form-label">
                <span class="x-red"></span>新闻作者
            </label>
            <div class="layui-input-inline">
                <input type="text" name="author" required="" lay-verify="required"
                       autocomplete="off" value="${result.news.author }" class="layui-input">
            </div>
        </div>

        <!-- 新闻类别 -->
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline">
                <select id="shipping" name="dic_id" class="valid">
                    <c:forEach items="${result.dm}" var="dic">
                        <option value="${dic.type}">${dic.type}</option>
                    </c:forEach>
                </select>
            </div>
        </div>

        <!-- html代码网页内容 -->
        <textarea name="content" id="editor" cols="30" rows="10">${result.news.contents }</textarea>

        <!-- 图片上传 -->
        <div style="height: 100%;width: 100%;margin-top: 50px;">
            <h1 style="text-align: center;">上传封面图片</h1>
            <div>
                <div style="width: 400px;height: 500px;margin: 0 auto; ">
                    <input type="file" name="imageupload" id="upfile" class="file-loading" multiple="multiple">
                </div>
            </div>
        </div>

        <!-- 新闻状态 -->
        <div class="layui-form-item">
            <label for="title" class="layui-form-label">
                <span class="x-red"></span>新闻状态
            </label>
            草稿<input type="radio" name="state" value="6">
            发布<input type="radio" name="state" value="1">
            待发布<input type="radio" name="state" value="7">

        </div>

        <!-- 提交按钮 -->
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label"></label>
            <button class="layui-btn" lay-filter="add" lay-submit="">提交</button>
        </div>
    </form>
</div>


<!-- 将相应的控件替换成编辑器代码 -->

<script type="text/javascript">
    CKEDITOR.replace('content');
</script>

</body>
</html>