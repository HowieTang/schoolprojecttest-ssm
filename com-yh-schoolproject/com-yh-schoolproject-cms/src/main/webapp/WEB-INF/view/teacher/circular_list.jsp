<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告列表</title>
</head>
<body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form id="queryForm" action="<%=basePath %>circular/queryCircularList" method="post" class="layui-form layui-col-md12 x-so">
          <input autocomplete="off" class="layui-input" type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
		  <input autocomplete="off" class="layui-input" type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
		  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <ul>
			<li>
				<a><input type="text" name="title" value="${map.circular.title }" placeholder="请输入标题" autocomplete="off" class="layui-input"></a>
				<a><button class="layui-btn" onclick="formSubmit()" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button></a>
			</li>
		  </ul>
        </form>
      </div>
      <blockquote class="layui-elem-quote">点击标题查看公告全部信息<i class="layui-icon x-show" status='true'>&#xe623;</i></blockquote>
      <xblock>
      	<a class="layui-btn" id="delMany">批量删除</a>
        <a class="layui-btn" href="<%=basePath %>circular/bfAddOrUpdate"><i class="layui-icon"></i>添加</a>
      </xblock>
	      <table class="layui-table layui-form">
	        <thead>
	          <tr>
	          	<th>
					<div class="layui-unselect header layui-form-checkbox" lay-skin="primary">
						<i class="layui-icon">&#xe605;</i>
					</div>
				</th>
	            <th>类型</th>
	            <th>标题</th>
	           <!--  <th>内容</th>
	            <th>创建时间</th>
	            <th>提交时间</th>
	            <th>修改时间</th> -->
	            <th>状态</th>
	            <th>操作</th>
	          </tr>
	        </thead>
	        <tbody>
	        	<c:forEach items="${map.page.list }" var="circular">
	        		<tr>
	        			<td>
							<div class="layui-unselect layui-form-checkbox"
								lay-skin="primary" data-id='${circular.circularId}'>
								<i class="layui-icon">&#xe605;</i>
							</div>
						</td>
	            		<td>${circular.type }</td>
						<td>
							<a href="<%=basePath %>circular/bfCircularLook?circularId=${circular.circularId}">${circular.title }</a>
						</td>
						<%-- <td>${circular.content }</td>
						<td>
							<fmt:formatDate value="${circular.createTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							<fmt:formatDate value="${circular.submitTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td>
						<td>
							<fmt:formatDate value="${circular.updateTime }" pattern="yyyy-MM-dd HH:mm:ss" />
						</td> --%>
						<td>
	              			<input type="checkbox" value="${circular.state }" name="switch"  lay-text="开启|停用"  checked="" lay-skin="switch">
	            		</td>
						<td class="td-manage">
	              			<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>circular/deleteCircular?circularId=${circular.circularId}" ><i class="layui-icon">&#xe640;</i>删除</a>
	              			<%-- <a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>circular/bfAddOrUpdate?circularId=${circular.circularId}" style="background-color: green"><i class="layui-icon">&#xe631;</i>修改</a> --%>
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
        	url:"<%=basePath%>circular/deleteManyCircularById",
        	type:"POST",
        	data:{'circularIds':b},
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