<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限列表</title>
</head>
<body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath %>power/queryPowerList" method="post" class="layui-form layui-col-md12 x-so">
          <input autocomplete="off" class="layui-input" type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input autocomplete="off" class="layui-input" type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <ul>
			<li>
				<a><input type="text" name="powerName" value="${map.power.powerName }" placeholder="请输入用户名" autocomplete="off" class="layui-input"></a>
				<a><button class="layui-btn" onclick="formSubmit()" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button></a>
			</li>
		  </ul>
        </form>
      </div>
      <xblock>
      	<a class="layui-btn" id="delMany">批量删除</a>
        <a class="layui-btn" href="<%=basePath %>power/bfAddOrUpdate"><i class="layui-icon"></i>添加</a>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	         	<th>
					<div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon">&#xe605;</i>
					</div>
				</th>
	            <th>权限名称</th>
	            <th>创建时间</th>
	            <th>修改时间</th>
	            <th>操作</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach items="${map.page.list }" var="power">
	        		<tr>
	        			<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${power.powerId}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
	            		<td>${power.powerName }</td>
						<td>
							<fmt:formatDate value="${power.createTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							<fmt:formatDate value="${power.updateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td class="td-manage">
	              			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>power/delete?powerId=${power.powerId}" ><i class="layui-icon">&#xe640;</i>删除</a>
	              			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>power/bfAddOrUpdate?pid=${power.powerId}" style="background-color: green"><i class="layui-icon">&#xe631;</i>修改</a>
	            		</td>
	        		</tr>
	         </c:forEach>
	        </tbody>
	      </table>
        <!-- 分页 -->
	 	<div class="pagin" >
     		<div><ul class="page" maxshowpageitem="6" pagelistcount="${map.page.pageSize }"  id="page"></ul></div>
	 	</div>
<!-- 分页js -->	 	
<script>
<!-- 批量删除 -->
		$("#delMany").click(function (){
			var a = tableCheck.getData();
			var b = a.join(",");
			$.ajax({
		        	url:"<%=basePath%>power/deleteManyPowerById",
		        	type:"POST",
		        	data:{'powerIds':b},
		        	success: function(){
		        		window.location.reload();
		        	}
		        	
		        });
			
		});

		 function tt(dd){
		        //alert(dd);
		    }
			var GG = {
			        "kk":function(mm){
			            
			            $("#formPageNow").val(mm);
			            $("#queryForm").submit();
			        }
			 }
			$("#page").initPage($("#formDataCount").val(),$("#formPageNow").val(),GG.kk);
	
	function formSubmit(){
		$("#formPageNow").val(1);
		$("#queryForm").submit();
	}
</script>
</body>
</html>