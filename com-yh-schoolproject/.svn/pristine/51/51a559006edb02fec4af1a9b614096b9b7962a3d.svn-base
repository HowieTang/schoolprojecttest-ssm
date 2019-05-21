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
        <form id="queryForm" class="layui-form layui-col-md12 x-so" action="<%=basePath %>leave/queryLeaveList" method="post">
              <input type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
			  <input type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
			  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <!-- 模糊查询 -->  
          <input  name="tleaveName" type="text"  placeholder="请输入请假人名" autocomplete="off" class="layui-input" value="${map.leave.tleaveName }"/>
		  <input  name="tleaveId" type="text"  placeholder="请输入id名" autocomplete="off" class="layui-input" value="${map.leave.tleaveId }"/>
		  <input  name="leaveTime" type="text"  placeholder="请输开始时间" autocomplete="off" class="layui-input" value="${map.leave.leaveTime }" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
		  <input  name="returnTime" type="text"  placeholder="请输结束时间" autocomplete="off" class="layui-input" value="${map.leave.returnTime}" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})"/>
		  
		  <button class="layui-btn"  lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
      <xblock>
     	 <a class="layui-btn" href="<%=basePath %>leave/bfaddOrUpdate"><i class="layui-icon"></i>添加</a>
     	 <a class="layui-btn" id="delMany">批量删除</a> 
      </xblock>
      <table class="layui-table layui-form">
        <thead>
          <tr>
            <th>
              <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i class="layui-icon">&#xe605;</i></div>
            </th>
            <th>请假人</th>
            <th>请假类型</th>
            <th>请假原因</th>
            <th>开始时间</th>
            <th>到校时间</th>
            <th>操作</th>
         </tr>
        </thead>
        <tbody>
          <c:forEach items="${map.page.list}" var="l">
		        <tr>
		         <td>
	              	<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${l.tleaveId}'><i class="layui-icon">&#xe605;</i></div>
	            </td>
			        <td>${l.tleaveName}</td>
			         <td>${l.type}</td>
			        <td>${l.reason}</td>
			        <td>${l.leaveTime}</td>
			     	<td>${l.returnTime}</td>
	            	<td class="td-manage">
						<a href="<%=basePath %>leave/deleteLeaveById?tleaveId=${l.tleaveId}" class="layui-btn-danger layui-btn layui-btn-xs"><i class="layui-icon">&#xe640;</i>删除</a>
	            		<a class="layui-btn-danger layui-btn layui-btn-xs" href="<%=basePath %>leave/bfaddOrUpdate?tleaveId=${l.tleaveId}" style="background-color: green"><i class="layui-icon">&#xe631;</i>修改</a>
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
	 <script>

	 /*批量删除开始  */
	 $("#delMany").click(function (){
	 	var a = tableCheck.getData();
	 	var b = a.join(",");
	 	$.ajax({
	         	url:"<%=basePath%>leave/deleteManyLeaveById",
	         	type:"POST",
	         	data:{'lids':b},
	         	success: function(){
	         		window.location.reload();
	         	}
	         	
	         });
	 	
	 });
	 /*批量删除结束  */
	 
	 
	 
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