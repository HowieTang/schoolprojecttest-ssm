<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 编码 -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- css引用 -->
<link rel="stylesheet" href="<%=basePath %>static/css/xadmin.css">
<link rel="stylesheet" href="<%=basePath %>static/css/font.css">
<link rel="stylesheet" href="<%=basePath %>static/plugin/layui/css/layui.css">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<link href="<%=basePath %>static/images/yinghuo.png" rel="shortcut icon" />
<!-- js引用 -->
<script type="text/javascript" src="<%=basePath %>static/js/jquery3.2.1.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath %>static/js/xadmin.js"></script>
<script type="text/javascript" src="<%=basePath %>static/js/jquery.js"></script>

<!-- 轮播js,css引用 -->
<link rel="stylesheet" href="<%=basePath %>static/css/jq22.css">
<script type="text/javascript" src="<%=basePath %>static/js/jq22.js"></script>

<!-- 分页 -->
<link href="<%=basePath %>static/css/page.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="<%=basePath %>static/js/page.js"></script>

<!-- My97Date时间插件 -->
<script type="text/javascript" src="<%=basePath %>static/plugin/My97DatePicker/4.8/WdatePicker.js"></script>

<!-- CKEditor富文本编辑器 -->
<script type="text/javascript" src="<%=basePath %>static/plugin/ckeditor/ckeditor.js"></script>

<!--select2 插件引用 -->
 <script src="<%=basePath %>static/js/select2.full.min.js"></script>
 <script src="<%=basePath %>static/js/select2.min.js"></script>
 <link href="<%=basePath %>static/css/select2.css" rel="stylesheet" />
 <link href="<%=basePath %>static/css/select2.min.css" rel="stylesheet" />
 
<!--标签  -->
<script type="text/javascript" src="static/js/tag.js"></script>
<link rel="stylesheet" type="text/css" href="static/css/tag.css" />

</head>
<body>
</body>
</html>