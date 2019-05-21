<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../base/base.jsp" %> 
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
        <form id="queryForm" class="layui-form layui-col-md12 x-so" action="<%=basePath %>student/queryLists" method="post">
              <input type="hidden" id="formPageNow" name="pageNow" value="${map.pages.pageNow }"/>
			  <input type="hidden" id="formDataCount" value="${map.pages.dataCount }"/>
			  <input type="hidden" id="formPageCount"  value="${map.pages.pageCount}"/>
		  <!-- 模糊查询 -->  
          <input  name="name" type="text"  placeholder="请输入请假人名" autocomplete="off" class="layui-input" value="${map.stuLeaves.name }"/>
		  <input  name="type" type="text"  placeholder="请输入请假类型" autocomplete="off" class="layui-input" value="${map.stuLeaves.type }"/>
		  <button class="layui-btn"  lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      
     <!--账户添加跳转  -->
      <table class="layui-table layui-form">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            
            <th>请假人</th>
            <th>请假原因</th>
            <th>请假类型</th>
            <th>批假人</th>
            <th>请假开始时间</th>
            <th>请假结束时间</th>
            <th>审批操作</th>
         </tr>
        </thead>
        <tbody>
          <c:forEach items="${map.pages.list}" var="stul">
		        <tr>
		         <td>
	              	<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
	            </td>
			        <td>${stul.name}</td>
			        <td>${stul.leaveReason}</td>
			        <td>${stul.type}</td>
			        <td>${stul.tname}</td>
			        <td>${stul.startTime}</td>
			        <td>${stul.endTime}</td>
	            	<td class="td-manage">
						<%-- <a href="<%=basePath %>student/bfLook?sleaveId=${stul.sleaveId}" class="layui-btn-danger layui-btn layui-btn-xs">审批</a>      --%>
	               <a href="<%=basePath %>student/adopt?sleaveId=${stul.sleaveId}">同意</a>
			       <a href="<%=basePath %>student/noadopt?sleaveId=${stul.sleaveId}"> 不同意 </a> 
	                </td>
		        </tr>
	        </c:forEach>
           </tbody>
         </table>
         <div class="pagin" >
		    	<div><ul class="page" maxshowpageitem="6" pagelistcount="${map.pages.pageSize }"  id="page"></ul></div>
	   	 </div>
	   	 </div>	 
  </body>
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
</html>