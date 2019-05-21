<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- base引用 -->
<%@include file="base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CKEditor富文本编辑器</title>
</head>
<body>
	<!-- 
		CKEditor的使用
	textarea标签的name值要和传值进行绑定
	script的脚本将绑定后的name进行前后台传值
	从而实现内容
	-->
	<!--在需要使用编辑器的地方插入textarea标签 -->
	<textarea name="editor" id="editor" cols="30" rows="10"></textarea>
	
	<!-- 将相应的控件替换成编辑器代码 -->
	  	<script type="text/javascript">
	     	CKEDITOR.replace('editor');
	   	</script>
</body>
</html>