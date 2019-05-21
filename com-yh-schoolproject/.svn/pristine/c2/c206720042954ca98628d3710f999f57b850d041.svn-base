<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 引用base -->
<%@include file="../../base/base.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜单添加</title>
</head>
<body>
	 <div class="x-body">
	 <!-- 提交 -->
        <form action="<%=basePath %>menu/addOrUpdate" method="post" class="layui-form">
        <!-- 菜单名字 -->
          <div class="layui-form-item">
          		<label  class="layui-form-label">
                  <span class="x-red">*</span>父菜单名字
              	</label>
              	
              	<div class="layui-input-inline">
                  <input type="text"  required="" lay-verify="required"
                  autocomplete="off" name="menu_name" value="${menu.menu_name }" class="layui-input">
              	</div>
          </div>
          
          <!-- path -->
          <div class="layui-form-item">
          		<label  class="layui-form-label">
                  <span class="x-red">*</span>path
              	</label>
              	
              	<div class="layui-input-inline">
                  <input type="text"  required="" lay-verify="required"
                  autocomplete="off" name="path" value="${menu.path }" class="layui-input">
              	</div>
          </div>
          
          <!-- pid -->
          <div class="layui-form-item">
          		<label  class="layui-form-label">
                  <span class="x-red">*</span>pid
              	</label>
              	
              	<div class="layui-input-inline">
                  <input type="text"  required="" lay-verify="required"
                  autocomplete="off" name="pid" value="${menu.pid }" class="layui-input">
              	</div>
          </div>
          
          <!-- 菜单内容 -->
          <div class="layui-form-item">
          		<label  class="layui-form-label">
                  <span class="x-red">*</span>菜单描述
              	</label>
              	
              	<div class="layui-input-inline">
                  <input type="text"  required="" lay-verify="required"
                  autocomplete="off" name="menuDescribe" value="${menu.menuDescribe }" class="layui-input">
              	</div>
          </div>
          
          <!-- 保存按钮 -->
           <div class="layui-form-item">
				<label for="L_repass" class="layui-form-label"> </label>
				<button class="layui-btn" type="submit">提交</button>
			</div>
         </from>
     </div>
</body>
</html>