<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限添加修改</title>
<link href="<%=basePath %>static/plugin/ztree/css/zTreeStyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath %>static/plugin/ztree/js/jquery.ztree.core.js"></script>
<script type="text/javascript" src="<%=basePath %>static/plugin/ztree/js/jquery.ztree.excheck.js"></script>
<style type="text/css">
dl, dt, dd, span {
    display: inline-block;
}
</style>
</head>
<body>
	<div class="x-body">
        <form id="addForm" action="<%=basePath %>power/addOrUpdate" method="post" class="layui-form">
        <input type="hidden" name="powerId" value="${result.power.powerId }"/>
        <input  type="hidden" id="mids" name = "mids"/>
          <div class="layui-form-item">
              <label for="username" class="layui-form-label">
                  <span class="x-red">*</span>权限名称
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="username" name="powerName" required="" lay-verify="required"
                  autocomplete="off" value="${result.power.powerName }" class="layui-input">
              </div>
          </div>
          
  		 <li>
			 <label>菜单</label>
			 <div class="zTreeDemoBackground left">
			 	<ul id="treeDemo" class="ztree"></ul>
			 </div>
		  </li> 
  
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button onclick="submitForm()" class="layui-btn" lay-filter="add" lay-submit="">确认保存
              </button>
          </div>
      </form>
    </div>
    
     <SCRIPT type="text/javascript">
		var setting = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};

		
		$(document).ready(function(){
			var zNodes =${result.menus};
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		});
		
		
		function submitForm(){
			//提交之前获取树选中的ID
			var treeObj = $.fn.zTree.getZTreeObj("treeDemo");
			var nodes = treeObj.getCheckedNodes(true);
			var ids = "";
			
			$(nodes).each(function(){
				ids+=this.id+",";
			})
			
			$("#mids").val(ids);
			
			//提交表单
			
			$("#addForm").submit();
			
		}
		
		
	</SCRIPT>
</body>
</html>