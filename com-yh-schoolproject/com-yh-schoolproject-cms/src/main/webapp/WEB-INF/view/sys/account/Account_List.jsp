<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../base/base.jsp" %>  
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  </head>
  
  <body class="layui-anim layui-anim-up">
    <div class="x-nav">
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
      
      	<!-- 分页 -->
        <form id="queryForm" class="layui-form layui-col-md12 x-so" action="<%=basePath %>account/queryAccountList" method="post">
              <input type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
			  <input type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
			  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <!-- 模糊查询 -->  
          <input  name="loginName" type="text"  placeholder="请输入用户名" autocomplete="off" class="layui-input" value="${map.account.loginName }"/>
		  <input  name="accountId" type="text"  placeholder="请输入id名" autocomplete="off" class="layui-input" value="${map.account.accountId }"/>
		  <button class="layui-btn"  lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <!--账户添加跳转  -->
      <xblock>
      <a class="layui-btn" href="<%=basePath%>account/bfaddOrUpdate"><i class="layui-icon"></i>添加</a>
      </xblock>
      <table class="layui-table layui-form">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>登录名</th>
            <th>创建时间</th>
            <th>更新时间</th>
            <th>昵称</th>
            <th>角色</th> 
           <th>操作</th>
          
         </tr>
        </thead>
        <tbody>
          <c:forEach items="${map.page.list}" var="account">
		        <tr>
		         <td>
	              	<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
	            </td>
			        <td>${account.loginName}</td>
			        <td><fmt:formatDate value="${account.createTime}" pattern="yyyy-MM-dd"/> </td>
			        <td><fmt:formatDate value="${account.updateTime}" pattern="yyyy-MM-dd"/> </td>
	            	<td>${account.name}</td>
	            	<td>${account.roleName}</td>
	            	<td class="td-manage">
							<a href="<%=basePath %>account/bfaddOrUpdate?accountId=${account.accountId}&arid=${account.arid}" class="layui-btn-danger layui-btn layui-btn-xs">修改</a>     
	            			<a href="<%=basePath %>account/delete?accountId=${account.accountId}" class="layui-btn-danger layui-btn layui-btn-xs"><i class="layui-icon">&#xe640;</i>删除</a> 
	            	</td>      
		        </tr>
	        </c:forEach>
           </tbody>
         </table>
          <!-- 分页 -->
        <div class="pagin" >
		    	<div><ul class="page" maxshowpageitem="6" pagelistcount="${map.page.pageSize }"  id="page"></ul></div>
	   	 </div>
	   	 </div>
	   	 <!--分页用到的函数  -->
	 <script>
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