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
        <form id="queryForm" class="layui-form layui-col-md12 x-so" action="<%=basePath %>student/queryStuLeaveList" method="post">
              <input type="hidden" id="formPageNow" name="pageNow" value="${map.page.pageNow }"/>
			  <input type="hidden" id="formDataCount" value="${map.page.dataCount }"/>
			  <input type="hidden" id="formPageCount"  value="${map.page.pageCount}"/>
		  <!-- 模糊查询 -->  
          <input  name="name" type="text"  placeholder="请输入请假人名" autocomplete="off" class="layui-input" value="${map.stuLeave.name }"/>
		  <input  name="type" type="text"  placeholder="请输入请假类型" autocomplete="off" class="layui-input" value="${map.stuLeave.type }"/>
		  <input type="text" id="startTime" name="startTime" value="${map.stuLeave.startTime }"  placeholder="请输入请假开始时间" autocomplete="off" class="layui-input"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
		  <input type="text" id="endTime" name="endTime"  value="${map.stuLeave.endTime }"  placeholder="请输入请假结束时间" autocomplete="off" class="layui-input"  onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
		  <button class="layui-btn"  lay-submit="" lay-filter="sreach" onclick="formSubmit()" value="查询"/><i class="layui-icon">&#xe615;</i></button>
        </form>
      </div>
     <!--账户添加跳转  -->
      <xblock>
      <a class="layui-btn" href="<%=basePath %>student/bfaddOrUpdate"><i class="layui-icon"></i>添加</a>
      </xblock>
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
            <th>请假状态</th>
            <th>操作</th>
         </tr>
        </thead>
        <tbody>
          <c:forEach items="${map.page.list}" var="stul">
		        <tr>
		         <td>
	              	<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='2'><i class="layui-icon">&#xe605;</i></div>
	            </td>
			        <td>
						<a href="<%=basePath %>student/bfleaveLook?sleaveId=${stul.sleaveId}">${stul.name}</a>     
			        </td>
			        <td>${stul.leaveReason}</td>
			        <td>${stul.type}</td>
			        <td>${stul.tname}</td>
			        <td>${stul.startTime}</td>
			        <td>${stul.endTime}</td>
			        <td>${stul.state == '1'?'待审批':(stul.state == '2'?'已通过':'未通过')}</td>
	            	<td class="td-manage">
	            	<c:if test="${stul.state eq '1'}">
                      <a href="<%=basePath %>student/bfaddOrUpdate?sleaveId=${stul.sleaveId}" class="layui-btn-danger layui-btn layui-btn-xs">修改</a>     
                     </c:if>
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